; Bank $08 item/spell/weapon descriptions

;Update out-of-bank calls
org $019882
  dw Select_a_Player

org $019ADE
  dw Select_a_Player


;Card description pointer table
;Necessary if the descriptions are relocated
org $07975B
Tbl_Cards_desc:
  dw Discard_Card
  dw Wind_Card_desc
  dw Earth_Card_desc
  dw Water_Card_desc
  dw Fire_Card_desc
  dw Null_Card_desc
  dw Fog_Card_desc
  dw Call_Amulet_desc
  dw Mirror_Card_desc

;Item description pointer table
org $0797C7
Tbl_Items_Desc: 
  dw Previous_page
  dw Next_page

Tbl_Items_Descr: 
  dw Toss_item
  dw Return_Ring_desc
  dw Water_of_Life_desc
  dw Sleeping_Bag_desc
  dw Tent_desc
  dw Str_Honey_desc
  dw Int_Honey_desc
  dw Endure_Honey_desc
  dw Agi_Honey_desc
  dw HP_Honey_desc
  dw MP_Honey_desc
  dw Herbs_desc
  dw Medicine_desc
  dw Silver_Flask_desc
  dw Gold_Flask_desc
  dw Maid_Tears_desc
  dw Moon_Oil_desc
  dw Enchanted_Jewel_desc

;Spell descriptions pointer table
org $0798A3
Tbl_Spells_desc: 
  dw Previous_page
  dw Next_page    
  dw Lit1         
  dw Lit2         
  dw Lit3         
  dw Smash1       
  dw Smash2       
  dw Smash3       
  dw Water1       
  dw Water2       
  dw Water3       
  dw Flame1       
  dw Flame2       
  dw Flame3       
  dw Attribute1   
  dw Attribute2   
  dw Attribute3   
  dw Attribute4   
  dw Attribute5   
  dw Attribute6   
  dw Attribute7   
  dw Attribute8   
  dw Attribute9   
  dw Attribute10  
  dw Attribute11  
  dw CallWind     
  dw CallEarth    
  dw CallWater    
  dw CallFire     
  dw Drain        
  dw Psych        
  dw HPRestoreA   
  dw HPRestore    
  dw Heal1        
  dw Heal2        
  dw Heal3        
  dw HealA1       
  dw HealA2       
  dw ChaosWind    
  dw Entomb       
  dw Destroy      
  dw ParalyzeA    
  dw PetrifyA     
  dw StopA        
  dw SleepA       
  dw ConfusedA    
  dw Paralyze     
  dw Petrify      
  dw Stop         
  dw Sleep        
  dw Confused     
  dw AvoidDown    
  dw AvoidDownA   
  dw DefDown      
  dw DefDownA     
  dw AccDown      
  dw AccDownA     
  dw AttDown      
  dw AttDownA     
  dw Requiem      
  dw Emancipation 
  dw FinalLiberation
  dw RuinousMission
  dw Flee         
  dw DodgeA       
  dw WallA        
  dw AccUpA       
  dw StompA       
  dw ChangeWind   
  dw ChangeEarth  
  dw ChangeWater  
  dw ChangeFire   
  dw Repel        
  dw Mirror       
  dw RestoreA     
  dw Revitalize   
  dw Unpetrify    
  dw Restoration  
  dw Home         
  dw WayPoint     
  dw WayPointWarp 
  dw DiminishEncounters
  dw DiminishEncounters2

;Weapon descriptions pointer table
org $0799EF
Tbl_Weapons_desc: 
  dw Dagger      
  dw Dagger      
  dw ShortSD     
  dw LongSD      
  dw BroadSD     
  dw Scimitar    
  dw IceBlade    
  dw UndeadBlade 
  dw FireBlade   
  dw DragonBlade 
  dw MagicSD     
  dw LightningSD 
  dw Desiree     
  dw CrystalSD   
  dw SpiritSD    
  dw GiantSD     
  dw GoldenSD    
  dw CursedSD    
  dw FlyingAx    
  dw BattleAx    
  dw GreatAx     
  dw DemonAx     
  dw Staff       
  dw MageST      
  dw MemoryWand  
  dw Firebrand   
  dw ElderStaff  
  dw WishWand    
  dw StaffWisdom 
  dw SpiritStaff 
  dw Mace        
  dw Flail       
  dw BattleHammer
  dw MorningStar 
  dw Whip        
  dw ChainWhip   
  dw BlackthorneWhip
  dw SwordNone      
  dw SwordNone      
  dw SwordNone      
  dw SwordNone      
  dw SoftLeather    
  dw HardLeather    
  dw RingMail       
  dw ScaleMail      
  dw ChainMail      
  dw BreastMail     
  dw BreastPlate    
  dw SeamMail       
  dw PlateMail      
  dw MithrilChain   
  dw MithrilPlate   
  dw MithrilMail    
  dw DemonMail      
  dw DragonMail     
  dw MagicPlate     
  dw MagicMail      
  dw EarthPlate     
  dw GrandArmor     
  dw RococoArmor    
  dw Robe           
  dw SilverRobe     
  dw WhiteRobe      
  dw ShamanRobe     
  dw MagicRobe      
  dw RobeOfValor    
  dw ArmorNone      
  dw ArmorNone      
  dw ArmorNone      
  dw ArmorNone      
  dw ArmorNone      
  dw ArmorNone       
  dw ArmorNone       
  dw ArmorNone       
  dw ArmorNone       
  dw ArmorNone       
  dw ArmorNone       
  dw ArmorNone       
  dw ArmorNone       
  dw ArmorNone       
  dw ArmorNone       
  dw SmallSH         
  dw LargeSH         
  dw SpikeSH         
  dw IronSH          
  dw MithrilSH       
  dw DragonSH        
  dw DemonSH         
  dw MagicSH         
  dw CaesarSH        
  dw GrandShield     
  dw CursedSH        
  dw Talisman        
  dw RuneGauntlet    
  dw MithrilGauntlet 
  dw MagicGauntlet   
  dw SpiritGauntlet  
  dw MoonGauntlet    
  dw CursedGauntlet  
  dw AmuletNone      
  dw AmuletNone      
  dw SecretRing      
  dw LifeRing        
  dw EuhancerRing    
  dw RingInspiration 
  dw PeaceRing       
  dw AncientRing     
  dw RingOfLife      
  dw RingOfValor     
  dw RingOfHope      
  dw SparklingRing   
  dw ShiningRing     
  dw RingAmazement   
  dw RingAstonishment
  dw CrookedRing     
  dw TwistedRing     
  dw GrandRing       
  dw CharmRing       
  dw RingNone        
  dw RingNone        
  dw RingNone        


;Card descriptions
org $0890D6
      Item_Text_Setup: db $06, $0D, $0C, $01, $00, $06, $03, $0E, $1C, $00

         Discard_Card: db $10 : dl Item_Text_Setup
                       db "I'm throwing away", $0D, "the card.", $00

       Wind_Card_desc: db $10 : dl Item_Text_Setup
                       db "Enemy will be attacked.", $0D, "Use more for greater", $0D, "effect.", $00

      Earth_Card_desc: db $10 : dl Item_Text_Setup
                       db "Enemy will be attacked.", $0D, "Use more for greater", $0D, "effect.", $00

      Water_Card_desc: db $10 : dl Item_Text_Setup
                       db "Enemy will be attacked.", $0D, "Use more for greater", $0D, "effect.", $00

       Fire_Card_desc: db $10 : dl Item_Text_Setup
                       db "Enemy will be attacked.", $0D, "Use more for greater", $0D, "effect.", $00

       Null_Card_desc: db $10 : dl Item_Text_Setup
                       db "Destroy an enemy.", $0D, $00

        Fog_Card_desc: db $10 : dl Item_Text_Setup
                       db "You can escape from", $0D, "battle under cover of Fog.", $00

     Call_Amulet_desc: db $10 : dl Item_Text_Setup
                       db "Summon a spirit.", $00
                       
     Mirror_Card_desc: db $10 : dl Item_Text_Setup
                       db "You can use a Mirror card as a wild card.", $00
warnpc $089271

;Items descriptions
org $089271                       
        Previous_page: db $10 : dl Item_Text_Setup
                       db "Move to previous page.", $0D, $00
                       
            Next_page: db $10 : dl Item_Text_Setup
                       db "Move to next page.", $0D, $00
                       
            Toss_item: db $10 : dl Item_Text_Setup
                       db "Throw away an item.", $00
                       
     Return_Ring_desc: db $10 : dl Item_Text_Setup
                       db "You can go back to town", $0D, "in an instant.", $00
                       
   Water_of_Life_desc: db $10 : dl Item_Text_Setup
                       db "Encounters with enemies", $0D, "decrease. Inflicts damage", $0D, "on the Undead.", $0D, $00
                       
    Sleeping_Bag_desc: db $10 : dl Item_Text_Setup
                       db "HP and MP restored to", $0D, "their original condition.", $0D, $00
                       
            Tent_desc: db $10 : dl Item_Text_Setup
                       db "HP and MP restored to", $0D, "their original condition.", $0D
                       db "Reverses Paralysis and", $0D, "Petrify spells.", $0D, $00                 
                       
       Str_Honey_desc: db $10 : dl Item_Text_Setup
                       db "Increases muscle power", $0D, "and physical strength.", $0D, $00
                       
       Int_Honey_desc: db $10 : dl Item_Text_Setup
                       db "Increases intelligence and", $0D, "makes you wiser.", $0D, $00
                       
    Endure_Honey_desc: db $10 : dl Item_Text_Setup
                       db "Increases endurance and", $0D, "strengthens your", $0D, "constitution.", $0D, $00
                       
       Agi_Honey_desc: db $10 : dl Item_Text_Setup
                       db "Increases your agility and", $0D, "makes you more nimble.", $0D, $00
                       
        HP_Honey_desc: db $10 : dl Item_Text_Setup
                       db "Your maximum HP is", $0D, "increased.", $0D, $00
                       
        MP_Honey_desc: db $10 : dl Item_Text_Setup
                       db "Your maximum MP is", $0D, "increased.", $0D, $00
                       
           Herbs_desc: db $10 : dl Item_Text_Setup
                       db "Restore some HP.", $0D, $00
                       
        Medicine_desc: db $10 : dl Item_Text_Setup
                       db "Restores lots of HP.", $0D, $00
                       
    Silver_Flask_desc: db $10 : dl Item_Text_Setup
                       db "Restores some MP.", $0D, $00
                       
      Gold_Flask_desc: db $10 : dl Item_Text_Setup
                       db "Restores lots of MP.", $0D, $00
                       
      Maid_Tears_desc: db $10 : dl Item_Text_Setup
                       db "Reverse petrifying spells.", $0D
                       db "One of your party will", $0D, "return to his original", $0D, "condition.", $0D, $00
                       
        Moon_Oil_desc: db $10 : dl Item_Text_Setup
                       db "Reverse Paralyzing spells.", $0D
                       db "One of your party will", $0D, "return to his original", $0D, "condition.", $0D, $00
                       
 Enchanted_Jewel_desc: db $10 : dl Item_Text_Setup
                       db "Enchanted Jewel bestowed", $0D, "with an ancient secret.", $0D, $00
                       
      Select_a_Player: db $10 : dl Item_Text_Setup
                       db "Please select a Player.", $0D, $00
warnpc $089642

;Spell descriptions
org $089642
     Spell_Text_Setup: db $06, $0D, $0C, $01, $00, $06, $03, $0E, $1C, $00

                 Lit1: db $10 : dl Spell_Text_Setup
                       db "All enemies attacked by", $0D, "lightning."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                 Lit2: db $10 : dl Spell_Text_Setup
                       db "All enemies attacked by", $0D, "lightning."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                 Lit3: db $10 : dl Spell_Text_Setup
                       db "All enemies attacked by", $0D, "lightning."                       
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               Smash1: db $10 : dl Spell_Text_Setup
                       db "Throw stones at enemy."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               Smash2: db $10 : dl Spell_Text_Setup
                       db "Throw stones at enemy."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               Smash3: db $10 : dl Spell_Text_Setup
                       db "Throw stones at enemy."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               Water1: db $10 : dl Spell_Text_Setup
                       db "Enemies are drowned."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               Water2: db $10 : dl Spell_Text_Setup
                       db "Enemies are drowned."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               Water3: db $10 : dl Spell_Text_Setup
                       db "Enemies are drowned."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               Flame1: db $10 : dl Spell_Text_Setup
                       db "Enemies attacked by fire."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               Flame2: db $10 : dl Spell_Text_Setup
                       db "Enemies attacked by fire."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               Flame3: db $10 : dl Spell_Text_Setup
                       db "Enemies attacked by fire."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           Attribute1: db $10 : dl Spell_Text_Setup
                       db "Effective against Earth", $0D, "and Water."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           Attribute2: db $10 : dl Spell_Text_Setup
                       db "Effective against Earth", $0D, "and Fire."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           Attribute3: db $10 : dl Spell_Text_Setup
                       db "Effective against Water", $0D, "and Fire."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right
                       
           Attribute4: db $10 : dl Spell_Text_Setup
                       db "Effective against Earth", $0D, "and Wind."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           Attribute5: db $10 : dl Spell_Text_Setup
                       db "Effective against Water", $0D, "and Wind."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           Attribute6: db $10 : dl Spell_Text_Setup
                       db "Effective against Fire", $0D, "and Wind."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           Attribute7: db $10 : dl Spell_Text_Setup
                       db "Effective against Earth", $0D, "Water and Fire."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           Attribute8: db $10 : dl Spell_Text_Setup
                       db "Effective against Earth", $0D, "Water and Wind."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           Attribute9: db $10 : dl Spell_Text_Setup
                       db "Effective against Earth", $0D, "Fire and Wind."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right
                       
          Attribute10: db $10 : dl Spell_Text_Setup
                       db "Effective against Water", $0D, "Fire and Wind."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

          Attribute11: db $10 : dl Spell_Text_Setup
                       db "Effective against All."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

             CallWind: db $10 : dl Spell_Text_Setup
                       db "Summons the Wind Spirit."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

            CallEarth: db $10 : dl Spell_Text_Setup
                       db "Summons the Earth Spirit."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

            CallWater: db $10 : dl Spell_Text_Setup
                       db "Summons the Water Spirit."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

             CallFire: db $10 : dl Spell_Text_Setup
                       db "Summons the Fire Spirit."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                Drain: db $10 : dl Spell_Text_Setup
                       db "Takes Hit Points from", $0D, "enemy."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                Psych: db $10 : dl Spell_Text_Setup
                       db "Takes Magic Points from", $0D, "enemy."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           HPRestoreA: db $10 : dl Spell_Text_Setup
                       db "Restores the Hit Points of", $0D, "everyone on the team."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

            HPRestore: db $10 : dl Spell_Text_Setup
                       db "Restores your Hit Points."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                Heal1: db $10 : dl Spell_Text_Setup
                       db "Restores your Hit Points."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                Heal2: db $10 : dl Spell_Text_Setup
                       db "Restores your Hit Points."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                Heal3: db $10 : dl Spell_Text_Setup
                       db "Completely restores your", $0D, "Hit Points."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               HealA1: db $10 : dl Spell_Text_Setup
                       db "Restores some of the Hit", $0D
                       db "Points for everyone on the", $0D, "team."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               HealA2: db $10 : dl Spell_Text_Setup
                       db "Restores some of the Hit", $0D
                       db "Points for everyone on the", $0D, "team."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

            ChaosWind: db $10 : dl Spell_Text_Setup
                       db "A powerful wind used to", $0D, "sweep enemies away."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               Entomb: db $10 : dl Spell_Text_Setup
                       db "Buries enemies."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

              Destroy: db $10 : dl Spell_Text_Setup
                       db "Obvious!"
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

            ParalyzeA: db $10 : dl Spell_Text_Setup
                       db "Paralyze all enemies."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

             PetrifyA: db $10 : dl Spell_Text_Setup
                       db "Turns all enemies to stone."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                StopA: db $10 : dl Spell_Text_Setup
                       db "Silences all of your", $0D, "enemies."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               SleepA: db $10 : dl Spell_Text_Setup
                       db "Puts all enemies to sleep."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

            ConfusedA: db $10 : dl Spell_Text_Setup
                       db "Prevents logical thinking in", $0D, "all enemies."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

             Paralyze: db $10 : dl Spell_Text_Setup
                       db "Paralyzes the selected", $0D, "enemy."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

              Petrify: db $10 : dl Spell_Text_Setup
                       db "Turns the selected enemy", $0D, "to stone."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                 Stop: db $10 : dl Spell_Text_Setup
                       db "Silences the selected", $0D, "enemy."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                Sleep: db $10 : dl Spell_Text_Setup
                       db "Puts the selected enemy", $0D, "to sleep."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

             Confused: db $10 : dl Spell_Text_Setup
                       db "Prevents logical thinking in", $0D, "the selected enemy."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

            AvoidDown: db $10 : dl Spell_Text_Setup
                       db "Decreases the accuracy", $0D, "of your enemy's attack."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           AvoidDownA: db $10 : dl Spell_Text_Setup
                       db "Decreases the accuracy", $0D, "of your enemies' attacks."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

              DefDown: db $10 : dl Spell_Text_Setup
                       db "Decreases the strength of", $0D, "an enemy's defense."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

             DefDownA: db $10 : dl Spell_Text_Setup
                       db "Decreases the strength of", $0D, "an enemies' defense."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

              AccDown: db $10 : dl Spell_Text_Setup
                       db "Decreases your enemy's", $0D, "accuracy relative to your", $0D, "own."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

             AccDownA: db $10 : dl Spell_Text_Setup
                       db "Decreases all of your", $0D, "enemies' accuracy relative", $0D, "to your own."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

              AttDown: db $10 : dl Spell_Text_Setup
                       db "Lowers the strength of", $0D, "your enemy's attack."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

             AttDownA: db $10 : dl Spell_Text_Setup
                       db "Lowers the strength of all", $0D, "your enemies' attacks."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

              Requiem: db $10 : dl Spell_Text_Setup
                       db "Liberates the selected", $0D, "Undead from this plane."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

         Emancipation: db $10 : dl Spell_Text_Setup
                       db "Liberates all Undead from", $0D, "the Earthly plane."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

      FinalLiberation: db $10 : dl Spell_Text_Setup
                       db "All Undead cease to exist", $0D, "in their present form."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

       RuinousMission: db $10 : dl Spell_Text_Setup
                       db "A Spirit gives the supreme", $0D, "sacrifice to protect you."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                 Flee: db $10 : dl Spell_Text_Setup
                       db "A retreat to regroup."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               DodgeA: db $10 : dl Spell_Text_Setup
                       db "Your ability to parry", $0D, "attacks is increased."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                WallA: db $10 : dl Spell_Text_Setup
                       db "All of your defensive", $0D, "strength is increased."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               AccUpA: db $10 : dl Spell_Text_Setup
                       db "Your attack accuracy is", $0D, "increased."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               StompA: db $10 : dl Spell_Text_Setup
                       db "Your attack strength is", $0D, "increased."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           ChangeWind: db $10 : dl Spell_Text_Setup
                       db "Changes your attribute to", $0D, "Wind."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

          ChangeEarth: db $10 : dl Spell_Text_Setup
                       db "Changes your attribute to", $0D, "Earth."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

          ChangeWater: db $10 : dl Spell_Text_Setup
                       db "Changes your attribute to", $0D, "Water."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           ChangeFire: db $10 : dl Spell_Text_Setup
                       db "Changes your attribute to", $0D, "Fire."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                Repel: db $10 : dl Spell_Text_Setup
                       db "Gives you the power to", $0D, "repel attacks."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

               Mirror: db $10 : dl Spell_Text_Setup
                       db "Gives you the power to", $0D, "repel magic."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

             RestoreA: db $10 : dl Spell_Text_Setup
                       db "Restores you to your", $0D, "original condition."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

           Revitalize: db $10 : dl Spell_Text_Setup
                       db "Reverses the effects of", $0D, "a Paralysis spell."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

            Unpetrify: db $10 : dl Spell_Text_Setup
                       db "Reverses the effects of", $0D, "a Petrifying spell."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

          Restoration: db $10 : dl Spell_Text_Setup
                       db "Restores all of your", $0D, "Spirits."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

                 Home: db $10 : dl Spell_Text_Setup
                       db "Makes it possible to", $0D, "return to the town quickly."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

             WayPoint: db $10 : dl Spell_Text_Setup
                       db "Mentally mark a spot on", $0D, "the map where you want to", $0D, "go."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

         WayPointWarp: db $10 : dl Spell_Text_Setup
                       db "Instantly warp to the Way", $0D, "Point selected."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

   DiminishEncounters: db $10 : dl Spell_Text_Setup
                       db "Fewer enemies are", $0D, "encountered."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right

  DiminishEncounters2: db $10 : dl Spell_Text_Setup
                       db "Fewer enemies are", $0D, "encountered."
                       db $01, $6B, $33, "MP", $11, $00 : dl $0016DB : db $00      ;Draw MP cost on bottom right
warnpc $08A5FA
                       
;Equipment descriptions
org $08A5FA
     Equip_Text_Setup: db $06, $0D, $0C, $01, $00, $04, $03, $0C, $1C, $00

               Dagger: db $10 : dl Equip_Text_Setup
                       db "A short knife.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
              ShortSD: db $10 : dl Equip_Text_Setup
                       db "The sword most often used", $0D
                       db "by thieves.", $01, $00, $34
                       db "    R    D    A    S    T", $00
               LongSD: db $10 : dl Equip_Text_Setup
                       db "The sword most often used", $0D
                       db "by Knights and Fighters.", $01, $00, $34
                       db "    R    D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
              BroadSD: db $10 : dl Equip_Text_Setup
                       db "A wide-bladed sword.", $01, $00, $34
                       db "    R    D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
             Scimitar: db $10 : dl Equip_Text_Setup
                       db "A curved sword.", $01, $00, $34
                       db "    R    D    A  ", $06, $0E, "  S    T", $06, $0D, $00
                       
             IceBlade: db $10 : dl Equip_Text_Setup
                       db "Like ice, a bright shining", $0D, "sword.", $01, $00, $34
                       db "    R    D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
          UndeadBlade: db $10 : dl Equip_Text_Setup
                       db "The sword you need to use", $0D
                       db "to defeat the Undead.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D    A    S    T", $06, $0D, $00
                       
            FireBlade: db $10 : dl Equip_Text_Setup
                       db "A sword with a white blade", $0D
                       db "that burns as it cuts.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D    A    S    T", $06, $0D, $00
                       
          DragonBlade: db $10 : dl Equip_Text_Setup
                       db "A blade that can be used", $0D
                       db "as if it were an extension", $0D
                       db "of your own hand.", $01, $00, $34
                       db "    R    D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
              MagicSD: db $10 : dl Equip_Text_Setup
                       db "A sword made of silver", $0D
                       db "with great magic powers.", $01, $00, $34
                       db "    R    D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
          LightningSD: db $10 : dl Equip_Text_Setup
                       db "This sword will send a bold", $0D
                       db "of lightning through", $0D
                       db "an enemy's body.", $01, $00, $34
                       db "    R    D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
              Desiree: db $10 : dl Equip_Text_Setup
                       
                       db "A Sword that carries the", $0D
                       db "power of the hopes of all.", $06, $0E, $01, $00, $34
                       db "    R  ", $06, $0D, "  D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
            CrystalSD: db $10 : dl Equip_Text_Setup
                       db "The ancient stories tell", $0D
                       db "of the brilliance of crystal", $0D
                       db "contained in this sword.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D    A    S    T", $06, $0D, $00
                       
             SpiritSD: db $10 : dl Equip_Text_Setup
                       db "A sword inhabited by", $0D
                       db "spirits, used long ago by", $0D
                       db "champions.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D    A    S    T", $06, $0D, $00

              GiantSD: db $10 : dl Equip_Text_Setup
                       db "Very powerful but heavy", $0D
                       db "and hard to control by the", $0D
                       db "inexperienced.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D    A    S    T", $06, $0D, $00
                       
             GoldenSD: db $10 : dl Equip_Text_Setup
                       db "A gorgeous shining sword", $0D
                       db "made of pure hardened", $0D, "Gold.", $01, $00, $34
                       db "    R    D    A    S    T", $00

             CursedSD: db $10 : dl Equip_Text_Setup
                       db "This sword is possessed", $0D
                       db "by powers of darkness", $0D
                       db "that will inhabit your body", $0D
                       db "if you are touched by it.", $01, $00, $34
                       db "    R    D    A    S    T", $00

             FlyingAx: db $10 : dl Equip_Text_Setup
                       db "A throwing axe.", $01, $00, $34
                       db "    R    D    A  ", $06, $0E, "  S    T", $06, $0D, $00

             BattleAx: db $10 : dl Equip_Text_Setup
                       db "The axe used most often", $0D
                       db "in all kinds of battle", $0D, "conditions.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A  ", $06, $0E, "  S    T", $06, $0D, $00
                       
              GreatAx: db $10 : dl Equip_Text_Setup
                       db "A large heavy axe that will", $0D
                       db "inflict great damage.", $06, $0E, $01, $00, $34
                       db "    R    D  ", $06, $0D, "  A  ", $06, $0E, "  S    T", $06, $0D, $00
                       
              DemonAx: db $10 : dl Equip_Text_Setup
                       db "A weapon that feeds", $0D
                       db "on the worst traits of", $0D, "mankind.", $06, $0E, $01, $00, $34
                       db "    R    D  ", $06, $0D, "  A  ", $06, $0E, "  S    T", $06, $0D, $00
                       
                Staff: db $10 : dl Equip_Text_Setup
                       db "Standard staff.", $0D
                       db "Used to defeat easy", $0D, "enemies.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S    T", $00  
                       
               MageST: db $10 : dl Equip_Text_Setup
                       db "It is said the jewel on this", $0D
                       db "staff has magic powers.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S    T", $00
                       
           MemoryWand: db $10 : dl Equip_Text_Setup
                       db "For easy magic.", $0D
                       db "Most wizards like to use", $0D, "this wand.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S    T", $00
                       
            Firebrand: db $10 : dl Equip_Text_Setup
                       db "This staff has the power", $0D
                       db "of Fire contained in it.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S  ", $06, $0E, "  T", $00
                       
           ElderStaff: db $10 : dl Equip_Text_Setup
                       db "Long ago a great wise man", $0D
                       db "sealed magic power up in", $0D
                       db "this Staff.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S    T", $00
             WishWand: db $10 : dl Equip_Text_Setup
                       db "A mysterious staff that", $0D
                       db "contains the wishes of", $0D
                       db "people of old.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S  ", $06, $0E, "  T", $06, $0D, $00
                       
          StaffWisdom: db $10 : dl Equip_Text_Setup
                       db "A staff that can convert", $0D
                       db "psychic power into magic", $0D, "powers.", $06, $0E, $01, $00, $34
                       db "    R    D    A    S  ", $06, $0D, "  T", $00
                       
          SpiritStaff: db $10 : dl Equip_Text_Setup
                       db "It is said that this staff", $0D
                       db "contains the spirits'", $0D, "prayers.", $06, $0E, $01, $00, $34
                       db "    R    D    A    S  ", $06, $0D, "  T", $00
                       
                 Mace: db $10 : dl Equip_Text_Setup
                       db "A large club or bat.", $06, $0E, $01, $00, $34
                       db "    R    D  ", $06, $0D, "  A    S  ", $06, $0E, "  T", $06, $0D, $00
                       
                Flail: db $10 : dl Equip_Text_Setup
                       db "A stick connected by", $0D
                       db "a chain to a large,", $0D
                       db "pointed iron ball.", $06, $0E, $01, $00, $34
                       db "    R    D  ", $06, $0D, "  A    S  ", $06, $0E, "  T", $06, $0D, $00
                       
         BattleHammer: db $10 : dl Equip_Text_Setup
                       db "A large hammer used in", $0D, "battle.", $06, $0E, $01, $00, $34
                       db "    R    D  ", $06, $0D, "  A  ", $06, $0E, "  S    T", $06, $0D, $00
                       
          MorningStar: db $10 : dl Equip_Text_Setup
                       db "A mace with star-shaped", $0D
                       db "points on the end.", $06, $0E, $01, $00, $34
                       db "    R    D  ", $06, $0D, "  A  ", $06, $0E, "  S    T", $06, $0D, $00
                       
                 Whip: db $10 : dl Equip_Text_Setup
                       db "Basic leather whip.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S    T", $00

            ChainWhip: db $10 : dl Equip_Text_Setup
                       db "A whip with the leather", $0D
                       db "replaced by a heavy chain.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S    T", $00
                       
      BlackthorneWhip: db $10 : dl Equip_Text_Setup
                       db "A whip with metal thorns", $0D
                       db "embedded in it.", $0D
                       db "Powerful attack weapon.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S    T", $00
                       
            SwordNone: db $10 : dl Equip_Text_Setup
                       db "None", $00
                       
          SoftLeather: db $10 : dl Equip_Text_Setup
                       db "A light suit of armor made", $0D
                       db "of pieces of soft leather", $0D
                       db "glued together.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
          HardLeather: db $10 : dl Equip_Text_Setup
                       db "Set of armor made of", $0D
                       db "leather as hard as a", $0D
                       db "turtle shell.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
             RingMail: db $10 : dl Equip_Text_Setup
                       db "Early form of chain mail", $0D
                       db "made of small metal rings", $0D
                       db "sewn onto leather armor.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A    S  ", $06, $0E, "  T", $06, $0D, $00
                       
            ScaleMail: db $10 : dl Equip_Text_Setup
                       db "Leather armor laid with", $0D
                       db "overlapping plates of", $0D, "metal.", $01, $00, $34
                       db "    R    D    A    S  ", $06, $0E, "  T", $06, $0D, $00
                       
            ChainMail: db $10 : dl Equip_Text_Setup
                       db "Interlocking metal rings", $0D
                       db "woven over a thickly", $0D
                       db "padded and quilted fabric.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A    S  ", $06, $0E, "  T", $06, $0D, $00
                       
           BreastMail: db $10 : dl Equip_Text_Setup
                       db "A mail that protects its", $0D
                       db "wearer with special", $0D, "powers.", $06, $0E, $01, $00, $34
                       db "    R  ", $06, $0D, "  D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
          BreastPlate: db $10 : dl Equip_Text_Setup
                       db "Metal plate that only", $0D
                       db "covers vital body parts", $0D
                       db "from shoulder to thigh.", $01, $00, $34
                       db "    R    D  ", $06, $0E, "  A  ", $06, $0D, "  S  ", $06, $0E, "  T", $06, $0D, $00
                       
             SeamMail: db $10 : dl Equip_Text_Setup
                       db "Mail made up of multiple", $0D
                       db "levels of vertical metal", $0D
                       db "plates fastened together.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A    S  ", $06, $0E, "  T", $06, $0D, $00
                       
            PlateMail: db $10 : dl Equip_Text_Setup
                       db "Made out of hand-bent", $0D
                       db "steel to fit the wearer.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A  ", $06, $0E, "  S    T", $06, $0D, $00
                       
         MithrilChain: db $10 : dl Equip_Text_Setup
                       db "Chain mail made out of", $0D
                       db "special silver chain.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A  ", $06, $0E, "  S    T", $06, $0D, $00
                       
         MithrilPlate: db $10 : dl Equip_Text_Setup
                       db "Plate armor made out of", $0D
                       db "special silver.", $01, $00, $34
                       db "    R    D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
          MithrilMail: db $10 : dl Equip_Text_Setup
                       db "Silver mail that covers and", $0D
                       db "protects the wearer's", $0D
                       db "whole body.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A  ", $06, $0E, "  S    T", $06, $0D, $00
                       
            DemonMail: db $10 : dl Equip_Text_Setup
                       db "A mail that will help you", $0D
                       db "call evil spirits down from", $0D
                       db "above to help you.", $06, $0E, $01, $00, $34
                       db "    R    D  ", $06, $0D, "  A  ", $06, $0E, "  S    T", $06, $0D, $00
                       
           DragonMail: db $10 : dl Equip_Text_Setup
                       db "A very strong mail made", $0D
                       db "from layers of dragon", $0D, "scales.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D    A    S    T", $06, $0D, $00
                       
           MagicPlate: db $10 : dl Equip_Text_Setup
                       db "A plate that has its power", $0D
                       db "boosted by magic.", $01, $00, $34
                       db "    R    D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
            MagicMail: db $10 : dl Equip_Text_Setup
                       db "Mail made of silver with", $0D
                       db "its power boosted by", $0D
                       db "magic. The strongest", $0D, "armor.", $01, $00, $34
                       db "    R    D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
           EarthPlate: db $10 : dl Equip_Text_Setup
                       db "A very strong plate made", $0D
                       db "out of different kinds of", $0D, "minerals.", $06, $0E, $01, $00, $34
                       db "    R  ", $06, $0D, "  D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
           GrandArmor: db $10 : dl Equip_Text_Setup
                       db "In the old days the great", $0D
                       db "warrior Fanas used this", $0D
                       db "armor against his", $0D
                       db "strongest enemies.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D    A    S    T", $06, $0D, $00
                       
          RococoArmor: db $10 : dl Equip_Text_Setup
                       db "A very expensive elegant", $0D
                       db "suit of armor encrusted", $0D
                       db "with precious stones and", $0D
                       db "rare metals.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
                 Robe: db $10 : dl Equip_Text_Setup
                       db "The robe generally worn", $0D
                       db "by shamans and magicians.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S    T", $00
                       
           SilverRobe: db $10 : dl Equip_Text_Setup
                       db "A brocade robe made", $0D
                       db "entirely from threads of", $0D
                       db "purest silver.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S    T", $00
                       
            WhiteRobe: db $10 : dl Equip_Text_Setup
                       db "A robe worn only", $0D
                       db "by those blessed with", $0D
                       db "a pure heart.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S  ", $06, $0E, "  T", $06, $0D, $00
                       
           ShamanRobe: db $10 : dl Equip_Text_Setup
                       db "A robe that will", $0D
                       db "protect the deserving", $0D
                       db "shaman from all magic.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S  ", $06, $0E, "  T", $06, $0D, $00
                       
            MagicRobe: db $10 : dl Equip_Text_Setup
                       db "A robe that can only be", $0D
                       db "worn by a high level", $0D, "shaman.", $06, $0E, $01, $00, $34
                       db "    R    D    A    S  ", $06, $0D, "  T", $00
                       
          RobeOfValor: db $10 : dl Equip_Text_Setup
                       db "A robe that is worn only", $0D
                       db "by those who are not", $0D
                       db "afraid of magical powers.", $06, $0E, $01, $00, $34
                       db "    R    D    A    S  ", $06, $0D, "  T", $00
                       
            ArmorNone: db $10 : dl Equip_Text_Setup
                       db "None", $00
                       
              SmallSH: db $10 : dl Equip_Text_Setup
                       db "A small shield used for", $0D
                       db "emergencies.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A    S  ", $06, $0E, "  T", $06, $0D, $00
                       
              LargeSH: db $10 : dl Equip_Text_Setup
                       db "A large shield to defend ", $0D
                       db "against the attacks", $0D
                       db "of monsters.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A    S  ", $06, $0E, "  T", $06, $0D, $00
                       
              SpikeSH: db $10 : dl Equip_Text_Setup
                       db "A small shield with a spike", $0D
                       db "attached to the front for", $0D
                       db "extra attacking power.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A    S  ", $06, $0E, "  T", $06, $0D, $00
                       
               IronSH: db $10 : dl Equip_Text_Setup
                       db "A strong shield made of", $0D
                       db "iron plates.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A    S  ", $06, $0E, "  T", $06, $0D, $00
                       
            MithrilSH: db $10 : dl Equip_Text_Setup
                       db "A strong shield made of", $0D
                       db "plates of finest silver.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D  ", $06, $0D, "  A    S  ", $06, $0E, "  T", $06, $0D, $00
                       
             DragonSH: db $10 : dl Equip_Text_Setup
                       db "A shield made of layers of", $0D
                       db "scales from slain dragons.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D    A    S    T", $06, $0D, $00
                       
              DemonSH: db $10 : dl Equip_Text_Setup
                       db "The warrior who uses this", $0D
                       db "shield can call on the dark", $0D
                       db "spirits for help.", $06, $0E, $01, $00, $34
                       db "    R    D  ", $06, $0D, "  A  ", $06, $0E, "  S    T", $06, $0D, $00
                       
              MagicSH: db $10 : dl Equip_Text_Setup
                       db "A shield that can only by", $0D
                       db "used by a warrior with a", $0D
                       db "pure heart.", $06, $0E, $01, $00, $34
                       db "    R    D    A  ", $06, $0D, "  S  ", $06, $0E, "  T", $06, $0D, $00
                       
             CaesarSH: db $10 : dl Equip_Text_Setup
                       db "A shield with excellent", $0D, "protection.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D    A    S    T", $06, $0D, $00
                       
          GrandShield: db $10 : dl Equip_Text_Setup
                       db "The shield used by", $0D
                       db "legendary warrior Fanas", $0D
                       db "against his strongest", $0D
                       db "enemies.", $01, $00, $34
                       db "    R  ", $06, $0E, "  D    A    S    T", $06, $0D, $00
                       
             CursedSH: db $10 : dl Equip_Text_Setup
                       db "A shield that carries", $0D
                       db "the curse of a deceased", $0D
                       db "magician.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
             Talisman: db $10 : dl Equip_Text_Setup
                       db "A charm that will give the", $0D
                       db "mental strength needed", $0D
                       db "for battle.", $06, $0E, $01, $00, $34
                       db "    R  ", $06, $0D, "  D  ", $06, $0E, "  A    S  ", $06, $0D, "  T", $00
                       
         RuneGauntlet: db $10 : dl Equip_Text_Setup
                       db "A mysterious spiritual", $0D
                       db "power will protect the", $0D, "wearer.", $06, $0E, $01, $00, $34
                       db "    R  ", $06, $0D, "  D  ", $06, $0E, "  A    S  ", $06, $0D, "  T", $00
                       
      MithrilGauntlet: db $10 : dl Equip_Text_Setup
                       db "Offers the same", $0D
                       db "protection given by the", $0D
                       db "mithril plate or mithril", $0D, "mail.", $06, $0E, $01, $00, $34
                       db "    R  ", $06, $0D, "  D  ", $06, $0E, "  A    S  ", $06, $0D, "  T", $00
                       
        MagicGauntlet: db $10 : dl Equip_Text_Setup
                       db "A mysterious power will", $0D
                       db "save the wearer from", $0D
                       db "calamities.", $06, $0E, $01, $00, $34
                       db "    R  ", $06, $0D, "  D  ", $06, $0E, "  A    S  ", $06, $0D, "  T", $00
                       
       SpiritGauntlet: db $10 : dl Equip_Text_Setup
                       db "Spirits live in this", $0D
                       db "Gauntlet that will help", $0D
                       db "protect the wearer from", $0D, "harm.", $06, $0E, $01, $00, $34
                       db "    R    D    A    S  ", $06, $0D, "  T", $00
                       
         MoonGauntlet: db $10 : dl Equip_Text_Setup
                       db "Said to have been dropped", $0D
                       db "by a good spirit one", $0D
                       db "twilight.", $06, $0E, $01, $00, $34
                       db "    R  ", $06, $0D, "  D  ", $06, $0E, "  A    S    T", $06, $0D, $00
                       
       CursedGauntlet: db $10 : dl Equip_Text_Setup
                       db "A Gauntlet made from the", $0D
                       db "spells of the departed.", $06, $0E, $01, $00, $34
                       db "    R  ", $06, $0D, "  D  ", $06, $0E, "  A    S  ", $06, $0D, "  T", $00
                       
           AmuletNone: db $10 : dl Equip_Text_Setup
                       db "None", $00
                       
           SecretRing: db $10 : dl Equip_Text_Setup
                       db "A ring that will give", $0D
                       db "travelers peace of mind", $0D
                       db "and security when", $0D, "traveling.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
             LifeRing: db $10 : dl Equip_Text_Setup
                       db "This will will refresh your", $0D
                       db "body when you are weary", $0D
                       db "of travelling.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
         EuhancerRing: db $10 : dl Equip_Text_Setup
                       db "Will enhance the wearer's", $0D
                       db "mental powers.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
      RingInspiration: db $10 : dl Equip_Text_Setup
                       db "Each time you fight, this", $0D
                       db "ring will give you", $0D
                       db "inspiration.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
            PeaceRing: db $10 : dl Equip_Text_Setup
                       db "When wearing this ring no", $0D
                       db "calamity will be able to", $0D
                       db "upset your concentration.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
          AncientRing: db $10 : dl Equip_Text_Setup
                       db "A ring that will prevent", $0D
                       db "the wearer from becoming", $0D
                       db "paralyzed with fear.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
           RingOfLife: db $10 : dl Equip_Text_Setup
                       db "A ring with special powers", $0D
                       db "that will protect the", $0D
                       db "wearer from calamaties.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
          RingOfValor: db $10 : dl Equip_Text_Setup
                       db "A ring of courage, it will", $0D
                       db "help fight off threats both", $0D
                       db "large and small.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
           RingOfHope: db $10 : dl Equip_Text_Setup
                       db "A ring that will protect", $0D
                       db "your confidence in your", $0D
                       db "abilities and physical", $0D
                       db "strength.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
        SparklingRing: db $10 : dl Equip_Text_Setup
                       db "This ring will sharpen your", $0D
                       db "reasoning powers and", $0D
                       db "thinking skills.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
          ShiningRing: db $10 : dl Equip_Text_Setup
                       db "This ring will improve", $0D
                       db "your concentration and", $0D
                       db "strength of will.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
        RingAmazement: db $10 : dl Equip_Text_Setup
                       db "You will amaze yourself", $0D
                       db "with your abilities when", $0D
                       db "you are wearing this ring.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
     RingAstonishment: db $10 : dl Equip_Text_Setup
                       db "When wearing this ring the", $0D
                       db "appearance of an enemy", $0D
                       db "will make you move quickly.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
          CrookedRing: db $10 : dl Equip_Text_Setup
                       db "Will increase your physical", $0D
                       db "abilities and stamina.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
          TwistedRing: db $10 : dl Equip_Text_Setup
                       db "Will bring to you powers", $0D
                       db "you've never experienced", $0D
                       db "before.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
            GrandRing: db $10 : dl Equip_Text_Setup
                       db "This ring will bring to mind", $0D
                       db "memories of great", $0D
                       db "pleasure.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
            CharmRing: db $10 : dl Equip_Text_Setup
                       db "This ring will tempt you", $0D
                       db "with promises of evil", $0D
                       db "pleasures.", $01, $00, $34
                       db "    R    D    A    S    T", $00
                       
             RingNone: db $10 : dl Equip_Text_Setup
                       db "None", $00
                       
