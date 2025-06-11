;Draws a larger variety of icons on the map

org $83EB33
  Loop_Draw_Map_Tiles: LDA.B $00                            ;03EB33|A500    |000000; Load Y-8
                       LDX.B $02                            ;03EB35|A602    |000002; Load X-8
                       JSR.W $83A457                        ;03EB37|2057A4  |03A457; Get map tile value
                       STA.B $08                            ;03EB3A|8508    |000008;  
                       BEQ Increment_Loop                   ;03EB3C|F026    |03EB64; If it's a wall (00) skip ahead
                       LDA.B $00                            ;03EB3E|A500    |000000; Load Y-8
                       LDX.B $02                            ;03EB40|A602    |000002; Load X-8
                       JSR.W $83A4AC                        ;03EB42|20ACA4  |03A4AC; Make sure the tile's been seen before
                       BEQ Increment_Loop                   ;03EB45|F01D    |03EB64;  
                       LDA.B $08                            ;03EB47|A508    |000008; Compare tile value
                       SEC                                  ;03EB49|38      |      ;  
                       SBC.W #$0040                         ;03EB4A|E94000  |      ;  
                       BCC Hallway                          ;03EB4D|900D    |03EB5C; No/Encounter tiles use hallway sprites
                       CMP.W #$0053                         ;03EB4F|C91000  |      ;  
                       BCS Hallway                          ;03EB52|B008    |03EB5C; Branch if out of bounds
                       ASL A                                ;03EB54|0A      |      ;  
                       TAX                                  ;03EB55|AA      |      ;  
                       LDA.L Custom_Map_Tiles,X             ;03EB56|BF7BEC03|03EC7B; 
                       BRA Save_Gfx                         ;03EB5A|8003    |03EB5F;  


              Hallway: LDA.W #$0A8C                         ;03EB5C|A98C0A  |      ; 10-30 (Encounter/No Encounter tiles) draw normally

             Save_Gfx: TYX                                  ;03EB5F|BB      |      ;  
                       STA.L $7EF800,X                      ;03EB60|9F00F87E|7EF800; Draw part of map

       Increment_Loop: INC.B $02                            ;03EB64|E602    |000002;  
                       INY                                  ;03EB66|C8      |      ;  
                       INY                                  ;03EB67|C8      |      ;  
                       DEC.B $06                            ;03EB68|C606    |000006;  
                       BPL Loop_Draw_Map_Tiles              ;03EB6A|10C7    |03EB33;  

org $83ED5C
Check_Surrounding_Tiles: LDA.W #$0000                         ;03ED5C|A90000  |      ; Draws borders depending on where the hallways are
                       LDX.W $F7C0,Y                        ;03ED5F|BEC0F7  |7EF7C0; Check tile above
                       JSR.W Check_Map_Val                  ;03ED62|E08C0A  |      ;  
                       BNE CODE_03ED6A                      ;03ED65|D003    |03ED6A;  
                       ORA.W #$0002                         ;03ED67|090200  |      ;  

          CODE_03ED6A: LDX.W $F802,Y                        ;03ED6A|BE02F8  |7EF802; Check tile to the right
                       JSR.W Check_Map_Val                  ;03ED6D|E08C0A  |      ;  
                       BNE CODE_03ED75                      ;03ED70|D003    |03ED75;  
                       ORA.W #$0004                         ;03ED72|090400  |      ;  

          CODE_03ED75: LDX.W $F840,Y                        ;03ED75|BE40F8  |7EF840; Check tile below
                       JSR.W Check_Map_Val                  ;03ED78|E08C0A  |      ;  
                       BNE CODE_03ED80                      ;03ED7B|D003    |03ED80;  
                       ORA.W #$0008                         ;03ED7D|090800  |      ;  

          CODE_03ED80: LDX.W $F7FE,Y                        ;03ED80|BEFEF7  |7EF7FE; Check tile to the left
                       JSR.W Check_Map_Val                  ;03ED83|E08C0A  |      ;  
                       BNE CODE_03ED8B                      ;03ED86|D003    |03ED8B;  
                       ORA.W #$0010                         ;03ED88|091000  |      ;  

          CODE_03ED8B: CMP.W #$0000                         ;03ED8B|C90000  |      ; If there's a + adjacent tile, return
                       BNE CODE_03EDBC                      ;03ED8E|D02C    |03EDBC;  
                       LDX.W $F7C2,Y                        ;03ED90|BEC2F7  |7EF7C2; Check tile to the up-right
                       JSR.W Check_Map_Val                  ;03ED93|E08C0A  |      ;  
                       BNE CODE_03ED9B                      ;03ED96|D003    |03ED9B;  
                       ORA.W #$0022                         ;03ED98|092200  |      ;  

          CODE_03ED9B: LDX.W $F842,Y                        ;03ED9B|BE42F8  |7EF842; Check tile to the down-right
                       JSR.W Check_Map_Val                  ;03ED9E|E08C0A  |      ;  
                       BNE CODE_03EDA6                      ;03EDA1|D003    |03EDA6;  
                       ORA.W #$0024                         ;03EDA3|092400  |      ;  

          CODE_03EDA6: LDX.W $F83E,Y                        ;03EDA6|BE3EF8  |7EF83E; Check tile to the down-left
                       JSR.W Check_Map_Val                  ;03EDA9|E08C0A  |      ;  
                       BNE CODE_03EDB1                      ;03EDAC|D003    |03EDB1;  
                       ORA.W #$0028                         ;03EDAE|092800  |      ;  

          CODE_03EDB1: LDX.W $F7BE,Y                        ;03EDB1|BEBEF7  |7EF7BE; Check tile to the up-left
                       JSR.W Check_Map_Val                  ;03EDB4|E08C0A  |      ;  
                       BNE CODE_03EDBC                      ;03EDB7|D003    |03EDBC;  
                       ORA.W #$0030                         ;03EDB9|093000  |      ;  

          CODE_03EDBC: TAX                                  ;03EDBC|AA      |      ;  
                       RTS                                  ;03EDBD|60      |      ;  

org $83EE00
Check_Map_Val:
CPX.W #$0A8C
BNE $01
RTS
CPX.W #$0A83
BNE $01
RTS
CPX.W #$8A83
BNE $01
RTS
CPX.W #$0A84
BNE $01
RTS
CPX.W #$8A84
BNE $01
RTS
CPX.W #$0A8F
BNE $01
RTS
CPX.W #$0AA2
BNE $01
RTS
CPX.W #$0AA5
BNE $01
RTS
CPX.W #$0AA6
BNE $01
RTS
CPX.W #$0A92
BNE $01
RTS
CPX.W #$0A93
BNE $01
RTS
RTS

Custom_Map_Tiles:
db $93,$0A  ;40: Stairs up
db $92,$0A  ;41: Stairs down
db $8C,$0A  ;42
db $8C,$0A  ;43
db $8C,$0A  ;44
db $8C,$0A  ;45
db $8C,$0A  ;46
db $8C,$0A  ;47
db $8C,$0A  ;48
db $8C,$0A  ;49
db $8C,$0A  ;4A
db $8C,$0A  ;4B
db $8C,$0A  ;4C
db $8C,$0A  ;4D
db $8C,$0A  ;4E
db $8C,$0A  ;4F
db $A5,$0A  ;50: Event (gray "?")
db $A5,$0A  ;51: Event (gray "?")
db $A5,$0A  ;52: Event (gray "?")
db $A5,$0A  ;53: Event (gray "?")
db $A5,$0A  ;54: Event (gray "?")
db $A5,$0A  ;55: Event (gray "?")
db $A5,$0A  ;56: Event (gray "?")
db $A5,$0A  ;57
db $A5,$0A  ;58
db $A5,$0A  ;59
db $A5,$0A  ;5A
db $A5,$0A  ;5B
db $A5,$0A  ;5C
db $A5,$0A  ;5D
db $A5,$0A  ;5E
db $A5,$0A  ;5F
db $84,$0A  ;60: Fog (Right arrow)
db $84,$0A  ;61: Fog (Right arrow)
db $84,$0A  ;62: Fog (Right arrow)
db $83,$0A  ;63: Fog (Up arrow)
db $83,$8A  ;64: Fog (Down arrow)
db $84,$0A  ;65: Fog (Right arrow)
db $83,$0A  ;66: Fog (Up arrow)
db $83,$8A  ;67: Fog (Down arrow)
db $84,$0A  ;68: 
db $84,$0A  ;69: 
db $84,$0A  ;6A: 
db $84,$0A  ;6B: 
db $84,$0A  ;6C: 
db $84,$0A  ;6D: 
db $84,$0A  ;6E: 
db $84,$0A  ;6F: 
db $A2,$0A  ;70: Boss (Crossbones)
db $A2,$0A  ;71: 
db $A2,$0A  ;72: 
db $A2,$0A  ;73: 
db $A2,$0A  ;74: 
db $A2,$0A  ;75: 
db $A2,$0A  ;76: 
db $A2,$0A  ;77: 
db $A2,$0A  ;78: 
db $A2,$0A  ;79: 
db $A2,$0A  ;7A: 
db $A2,$0A  ;7B: 
db $A2,$0A  ;7C: 
db $A2,$0A  ;7D: 
db $A2,$0A  ;7E: 
db $A2,$0A  ;7F: 
db $A6,$0A  ;80: Treasure (gray X)
db $A6,$0A  ;81: 
db $A6,$0A  ;82: 
db $A6,$0A  ;83: 
db $A6,$0A  ;84: 
db $A6,$0A  ;85: 
db $A6,$0A  ;86: 
db $A6,$0A  ;87: 
db $A6,$0A  ;88: 
db $A6,$0A  ;89: 
db $A6,$0A  ;8A: 
db $A6,$0A  ;8B: 
db $A6,$0A  ;8C: 
db $A6,$0A  ;8D: 
db $A6,$0A  ;8E: 
db $A6,$0A  ;8F: 
db $8F,$0A  ;90: Door (Door)
db $8F,$0A  ;91: Door (Door)
db $8F,$0A  ;92: Door (Door)
