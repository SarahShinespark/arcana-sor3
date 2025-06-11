#Seal of Rimsala Treasure Checker by Autumn Shinespark
#Compares the treasure chest data with the map chest data


#Usage: Treasure_Checker.py -i <inputfile>
#       Options: -m (Display maps), -? (Display help)
#**Requires uncompressed map data (SOR v2.1 or later)


#Imports
#sys/getopt allow command line args. os allows reading from files.
import sys, getopt, os


#Defines
#pc(): Converts LoROM SNES address to PC format  (0x848380 -> 0x20380)
#**Print in hex with hex(pc(addr))
def pc(addr):
    addr = addr & 0x7FFFFF   #Remove FastROM bank $80
    base = addr & 0x7FFF
    bank = (int(addr / 2) & 0x7F8000)
    return base + bank

#snes(): Converts PC address to LoROM   (0x20380 -> 0x848380)
#**Print in hex with hex(snes(addr))
def snes(addr):
    bank = ((addr * 2) & 0xFF0000)
    base = (addr & 0x7FFF) + 0x8000
    return 0x800000 | ( base + bank)    #Add FastROM bank $80


#Constants
MAPS_BANK  = pc(0x38022)
MAPS_PTRS  = pc(0x38380)
CHEST_PTRS = pc(0x188A99) 
MAPS_MAX = 14   #No. unique maps
PTRS_MAX = 34   #No. entries in map ptr table / Max value of RAM $16F1


#Dictionary
#Relates dungeon floors to dungeon maps
#   i.e. Stavery 1F-12F is floors 22-31 but map 13
floor_to_map = {0:0,    1:1,   2:2,    3:3,
                4:4,    5:5,   6:6,    7:7,
                8:8,    9:8,  10:8,   11:8,
               12:9,   13:9,  14:9,   15:9,
               16:10,  17:10, 18:10,  19:10,
               20:11,  21:12, 22:13,  23:13,
               24:13,  25:13, 26:13,  27:13,
               28:13,  29:13, 30:13,  31:13}

def main(argv):

    #Command line argument handling (found on tutorialspoint.com)
    #Catches invalid options for me
    inputfile = ''
    try:
        #Valid options: -?, --help, -i <inputfile>
        opts, args = getopt.getopt(argv,"?i:m",["help"])
    except getopt.GetoptError:
        print ('Usage: Treasure_Checker.py -i <inputfile>')
        print ('Optional: -m Show maps')
        sys.exit(2)
    do_show_map = False
    for opt, arg in opts:
        if opt in ('-?', "--help"):
            print ('Usage: Treasure_Checker.py -i <inputfile>')
            print ('Optional: -m Prints the maps in text format. Use > <filename> to send this output to a file.')
            sys.exit()
        elif opt == "-i":
            inputfile = arg
        elif opt == "-m":
            do_show_map = True
        else:
            print ("I didn't get that.")
            sys.exit(2)

    map_ptrs = []
    with open(inputfile, 'rb') as infile:
        #Get map locations
        
        #1-byte pointer to bank
        infile.seek(MAPS_BANK)
        bank = int.from_bytes(infile.read(1), byteorder='little')

        #2-byte pointers to maps
        infile.seek(MAPS_PTRS)
        for mapno in range(PTRS_MAX):

            #Form the 3-byte pointer (A0, 8000 => $A0/8000)
            ptr = int.from_bytes(infile.read(2), byteorder='little')
            ptr = ptr + (bank * 0x10000)

            #Skip the duplicates
            if ptr not in map_ptrs:
                map_ptrs.append( ptr)


    #Get maps, map chests, treasure chests
    maps, map_chests = get_map_data(inputfile, map_ptrs[0])
    treasures = get_treasure_data(inputfile)

    #Remove unnecessary byte in treasure locations
    for entry in treasures:
        entry[0] = int(entry[0])-0x0100
        entry[0] = floor_to_map[entry[0]]

    #Search every map
    for m in range(MAPS_MAX):
        #Check if each treasure is on the map
        t_list = select(treasures, 0, m)
        for t in t_list:
            loc = tuple(t[1:3])
            if loc not in map_chests[m]:
                if do_show_map:
                    mark_map(maps, m, loc, "@@")
                print( "Map","{:2}".format(m),"- Treasure",loc,"not on map.")

        #Check if each map chest has a treasure
        #(Searching the reverse)
        for mc in map_chests[m]:    #[0] = [(7,2),(9,2),(13,22)] etc
            match = 0
            for t in t_list:
                loc = tuple(t[1:3])
                if loc == mc:
                    match = 1
                    break
            if match == 0: 
                if do_show_map:
                    mark_map(maps, m, mc, "##")
                print( "Map","{:2}".format(m),"- Map chest",mc,"not in treasures.")

        if do_show_map:
            show_map(maps, m)


#Mark the map
#map_list: The list of maps
#n: Which map to mark
#xy_tuple: Where to mark
#str_mark: What to mark with (2 characters)
def mark_map(map_list, n, xy_tuple, str_mark):
    print("Marking map",n,"with",str_mark,"at",xy_tuple)
    map_list[n][xy_tuple[0]][xy_tuple[1]] = str_mark


#Mimics SQL Select statement
#select(list, 0, 15) -> a list of all lists where index 0 is 15
def select(alist, i, val):
    output = []
    for a in alist:
        if a[i] == val:
            output.append(a)
    return output


#Returns an array of arrays [[int x 6][int x 6]...]
#The six ints are [Map #][X position][Y position][Facing direction][Item type][Item value]
def get_treasure_data(infile):
    entry_len = 12
    output_arr = []
    #ROM locations for each chapter
    chapter_treasures = []
    with open(infile, 'rb') as infile:

        #Get treasure locations
        bank = 0x18
        infile.seek(CHEST_PTRS)
        for chestptr in range(5):
            ptr = int.from_bytes(infile.read(2), byteorder='little')
            ptr = ptr + (bank * 0x10000)
            chapter_treasures.append(ptr)

        for pos in chapter_treasures:
            infile.seek(pc(pos))

            #Read a treasure entry -> arr
            word = 0
            while word != 0xFFFF:
                entry = []
                for i in range(0, entry_len//2):    # // is floor division
                    word = int.from_bytes(infile.read(2), byteorder='little')
                    if word == 0xFFFF:
                        break
                    entry.append(word)
                if word == 0xFFFF:
                    break

                #Add entry to output -> arr
                output_arr.append(entry)
        return output_arr


#Display a map
def show_map(map_list, n):
    for y in range(0x20):
        line = ""
        for x in range(0x20):
            byte = map_list[n][x][y]
            if byte == 0:
                line += "   "
            elif type(byte) == str:
                line += byte + " "
            else:
                line += "{:02x}".format(byte) + " "
        print(line)



#Download maps and map chests
#    maps[map_no][x_pos][y_pos]
#    map_chests[map_no] = (x_pos, y_pos)
def get_map_data(infile, map0):
    with open(infile, 'rb') as infile:
        infile.seek( pc(map0))
        maps = [[ [0]*0x20 for i in range(0x20)] for k in range(MAPS_MAX)]
        map_chests = [[] for k in range(MAPS_MAX)]
        for n in range(MAPS_MAX):
            for y in range(0x20):
                for x in range(0x20):
                    maps[n][x][y] = int.from_bytes(infile.read(1), byteorder='little')
                    if(maps[n][x][y] == 0x80):
                        map_chests[n].append((x,y))

    return maps, map_chests

#If this file isn't an include, call main()
if __name__ == "__main__":
   main(sys.argv[1:])
