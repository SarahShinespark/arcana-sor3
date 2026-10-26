;Slows down or reduces brightness changes to avoid eye strain and photosensitivity.

;Overwrites various event code, it should be compatible with vanilla but that isn't tested
;Code is organized in ROM order: bank 81 is battles, 8F is animations, 98 is story events
;Some event code is commented to provide vanilla context.


;Subroutine labels
org $809C44 : GetSet_SFX_1b:           ;Sub: Sets the current SFX
org $809CD0 : Clear_Event_1b:          ;Sub: Removes an event/game object (like the treasure chest sprite)
org $809DA8 : MainScr_Add_1b:          ;Sub: Turns on a layer
org $809DB6 : MainScr_Remove_1b:       ;Sub: Turns off a layer
org $809DD7 : SubScr_Remove_1b:        ;Sub: Turns off a layer on the subscreen
org $809EE0 : HDMA_xfer_6b:            ;Sub: Sets up and reads from an HDMA table -  (1b) HDMA channel, (1b) transfer pattern [(#0: 1b) (#1-2: 2b) (#3-4: 4b)], (1b) PPU register $21xx, (3b) Read/write address
org $809F1F : Rem_HDMA_ch_1b:          ;Sub: Removes an HDMA channel
org $809F83 : Set_RGB_3b:              ;Sub: Sets a color
org $809FE2 : Add_RGB_3b:              ;Sub: Adds to a color. (Negative values subtract)
org $80A06F : RAM_minus_val_2b_2b:     ;Sub: Takes a RAM value and subtracts a value from it. (Doesn't update the RAM value, it's just math.)
;org $80A0CB : Unfade:                  ;Sub: Increases screen brightness by 1/16
;org $80A0DB : Fade:                    ;Sub: Decreases screen brightness by 1/16
org $8189CD : Sub_Transfer_stuff:      ;Sub: Sets up several HDMA for the screen shake at the end of Ch4
org $83E57D : Color_stuff2_2b:         ;Sub: Sets color intensity and selects which background layers to change colors on.
org $83E59F : Subtract_color_math_1b:  ;Sub: Decreases color level
org $83E5BB : Add_color_math_1b:       ;Sub: Increases color level
org $98800B : Check_map_tile_value:    ;Sub: Returns 0=no encounter, 1-3 encounter. If standing on a 70, start a boss fight.
org $989F90 : Zero_WinMask_stuff:      ;Sub: Clears out some window mask stuff
org $98CD59 : FinalFight_CompressedData:
org $98D435 : SetB6_FadeIn:            ;ASM: Enables most color math, then fades the screen in using var0 as the delay (decreases RGB 32 times and delays var0 frames each time)
;org $98D4CC : Load_Event_Text:        ;Sub: Reads text from (3b pointer), writes to (1b buffer (0 or 1)) -- No reason to put text pointers here when they're relocated in SOR. 
org $98D51D : Set_WindowMask_4b:       ;Sub: Sets window mask - (1b) Main screen, (1b) BG1/BG2, (1b) BG3/BG4, (1b) OBJ color
;org $9CF65F : SCRIPT_113              ;Text: Rooks "What? It didn't work?!"


;================================================
; White flash for random battles; slow it down some
org $818DAE
Random_Encounter:
   db $07 : dl Color_stuff2_2b : dw $0026             ; Enable color change (0 white) on the backdrop and BG2+3 (26)
   db $01,$05                           ;018DB4|      ; START_LOOP 8->5
   db $07 : dl Add_color_math_1b : db $04             ;   Add 4 white
   db $06,$04                           ;018DBB|      ;   WAIT 1->4
   db $02                               ;018DBD|      ; END_LOOP
   db $01,$05                           ;018DBE|      ; START_LOOP 8->5
   db $07 : dl Subtract_color_math_1b : db $04        ;   Subtract 4 white
   db $06,$04                           ;018DC5|      ;   WAIT 1->4
   db $02                               ;018DC7|      ; END_LOOP

;================================================
; White flash for monster in a box; slow it down some
; This is currently not in use, but I may as well point out they use similar but separate code.
org $8192A5
Monster_in_a_box:
   db $07 : dl Check_map_tile_value     ;0192A5|      ; Check map tile value
Battle_MIAB_Flash:
   db $07 : dl Color_stuff2_2b : dw $0026             ; Enable color change (white) on the backdrop and BG2+3
   db $01,$05                           ;0192AF|      ; START_LOOP 1->5
   db $07 : dl Add_color_math_1b : db $04             ;   Add 4 white
   db $06,$04                           ;0192B6|      ;   WAIT 1->4
   db $02                               ;0192B8|      ; END_LOOP
   db $07 : dl Clear_Event_1b : db $06  ;0192B9|      ; ASM CALL: Remove the treasure chest sprite
   db $01,$05                           ;0192BE|      ; START_LOOP 5
   db $07 : dl Subtract_color_math_1b : db $04        ;   Subtract 4 white
   db $06,$04                           ;0192C5|      ;   WAIT 1->4
   db $02                               ;0192C7|      ; END_LOOP


;================================================
; Ch5: Rimsala!Egg damage animation (remove flash and speed up the reaction)
org $82C7FF
   db $30,$00                           ;02C7FF|      ; SETANIM 00 (idle pose)
   db $06,$08                           ;02C801|      ; 06: WAIT 20 -> 8
   db $10,$10                           ;02C803|      ; SETANIM 04 wait 4 -> Do nothing (this was the white flash)
   db $30,$02                           ;02C805|      ; SETANIM 02 (damage pose)
   db $06,$20                           ;02C807|      ; WAIT 18 -> 20



;================================================
; Spell casting animation (flashing green circles)
org $8FCD48
Animation_Effect56_Spellcast:
   db $01,$03                           ;0FCD48|      ; Loop start (4 -> 3 times)
   db $32,$5D                           ;0FCD4A|      ; Set animation to 5D, wait 2
   db $AA                               ;0FCD4C|      ; Increase animation, wait 1 -> 2
   db $02                               ;0FCD4D|      ; End loop
   db $1C                               ;0FCD4E|      ; End of script


;================================================
; Ch1: Teefa paralyzing Axs and the Sorcerer (oh, spoilers)
;  Commenting out lots of it so I don't have to bookmark all the subroutines
;org $8FCDE9
;Animation_Effect58_Teefa_Para:
;   db $0F,$01 : dw $0000                ;0FCDE9|      ; Set var1 to 0000
;   db $16                               ;0FCDED|      ; Set $1121 attacker to 4 (Teefa)
;   dw $1121                             ;0FCDEE|      ;
;   dw $0004                             ;0FCDF0|      ;
;   db $07 : dl Sub_07B9A2               ;0FCDF2|      ; Find where Teefa is on the screen for the casting animation
;   db $1E : dw $0056                    ;0FCDF6|      ; Load 0056
;   db $07 : dl Draw_Spellcast           ;0FCDF9|      ; Draw animation 56 (green circles)
;   db $1E : dw $0056                    ;0FCDFD|      ; Load 0056
;   db $07 : dl Play_spellcast           ;0FCE00|      ; Play sfx for animation 56
;   db $1B                               ;0FCE04|      ; Call the subroutine for the spellcast animation
;   dw Animation_Effect56_Spellcast      ;0FCE05|0FCD48;
;   db $32,$FF                           ;0FCE07|      ; SET_ANIM -1, wait 2 (remove green circles)
;   db $38 : dw $0054                    ;0FCE09|      ; SET_XPOS #84 (drawing on Axs)
;   db $40 : dw $0068                    ;0FCE0C|      ; SET_YPOS #104
;   db $E0 : dw $0000                    ;0FCE0F|      ; SET_ZPOS 0
;   db $1E : dw $0028                    ;0FCE12|      ; Load 28 (swirly: get palette offset)
;   db $07 : dl Draw_Spellcast           ;0FCE15|      ;
;   db $1E : dw $0028                    ;0FCE19|      ; Load 28 (swirly: get sfx offset)
;   db $07 : dl Play_spellcast           ;0FCE1C|      ;
;   db $1B : dw Animation_Swirly         ;0FCE20|      ; Jump to subroutine $CCC6
;   db $32,$FF                           ;0FCE23|      ; SET_ANIM -1, wait 2 (remove swirly)
;   db $1E : dw $0007                    ;0FCE25|      ; Load 7 (damage star animation)
;   db $07 : dl GetAttackAnimation       ;0FCE28|      ; Get attack animation 7
;   db $07 : dl GetSet_SFX_1b : db $07   ;0FCE2C|      ; Play SFX 7 (damage)
org $8FCE31
;Damage animation on Axs
   db $35,$5F                            ;0FCE31|      ; SET_ANIM #95, wait 1->5 (damage star)
   db $AC                               ;0FCE33|      ; INC_ANIM wait 4 (flash)
   db $B4                               ;0FCE34|      ; DEC_ANIM wait 1->4 (star)
   db $10                               ;0FCE35|      ; INC_ANIM wait 4 (flash) -> REMOVED (no op)
   db $31,$FF                           ;0FCE36|      ; SET_ANIM -1 wait 1 (remove Axs)
;   db $16 : dw $1091,$0003              ;0FCE38|      ; Set animation finish timer $1091 = 3
;   db $38 : dw $00AC                    ;0FCE3D|      ; SET_XPOS #172 (targeting the Sorcerer)
;   db $40 : dw $0068                    ;0FCE40|      ; SET_YPOS #104
;   db $E0 : dw $0000                    ;0FCE43|      ; SET ZPOS $0
;   db $1E : dw $0028                    ;0FCE46|      ; Load 28
;   db $07 : dl Draw_Spellcast           ;0FCE49|      ;
;   db $1E : dw $0028                    ;0FCE4D|      ; Load 28
;   db $07 : dl Play_spellcast           ;0FCE50|      ;
;   db $1B : dw Animation_Swirly         ;0FCE54|      ; Jump to subroutine $CCC6
;   db $32,$FF                           ;0FCE57|      ; SET_ANIM -1 wait 2
;   db $1E : dw $0007                    ;0FCE59|      ; Load 7
;   db $07 : dl GetAttackAnimation       ;0FCE5C|      ; Get attack animation (damage star)
;   db $07 : dl GetSet_SFX_1b : db $07   ;0FCE60|      ; Play damage SFX
org $8FCE65
;Damage animation on The Sorcerer
   db $35,$5F                           ;0FCE65|      ; SET_ANIM #95 wait 1->5 (damage star)
   db $AC                               ;0FCE67|      ; INC_ANIM wait 4 (flash)
   db $B4                               ;0FCE68|      ; DEC_ANIM wait 1->4 (star)
   db $10                               ;0FCE69|      ; INC_ANIM wait 4 (flash) -> REMOVED (no op)
   db $16 : dw $1091,$0004              ;0FCE6A|      ; Set animation finish timer $1091 = 4
   db $1C                               ;0FCE6F|      ; Return (end of script)


;================================================
; Ch1: Sword glow, reduced flashing
;org $989C9E
;Sub_CrystalSword_Glow:
;   db $07                               ;189C9E|      ;
;   dl HDMA_xfer_6b                      ;189C9F|009EE0;
;   db $07                               ;189CA2|      ;
;   db $01                               ;189CA3|      ;
;   db $26                               ;189CA4|      ;
;   dl _189CA5_DMA                       ;189CA5|189D34;
;   db $13                               ;189CA8|      ; Change color on backdrop/sprites/BG2
;   dw $1893                             ;189CA9|      ;
;   db $32                               ;189CAB|      ;
;   db $06                               ;189CAC|      ; WAIT 1
;   db $01                               ;189CAD|      ;
;   db $07                               ;189CAE|      ;
;   dl Color_Setup                       ;189CAF|189F7C;
org $989CB2
Loop_CrystalSword_Glow:
   db $07                               ;189CB2|      ; Set RGB (medium blue) (0E -> 15)
   dl Set_RGB_3b                        ;189CB3|009F83;
   dl $150000                           ;189CB6|      ;
   db $06                               ;189CB9|      ; WAIT 2->3
   db $03                               ;189CBA|      ;
   db $07                               ;189CBB|      ; Set RGB (medium blue) (1F -> 1A)
   dl Set_RGB_3b                        ;189CBC|009F83;
   dl $1A0000                           ;189CBF|      ;
   db $06                               ;189CC2|      ; WAIT 2->3
   db $03                               ;189CC3|      ;
   db $07                               ;189CC4|      ; Decrease animation timer by 10
   dl RAM_minus_val_2b_2b               ;189CC5|00A06F;
   dw $1091                             ;189CC8|      ;
   dw $000A                             ;189CCA|      ;
   db $0C                               ;189CCC|      ; Repeat if nonzero/false
   dw Loop_CrystalSword_Glow            ;189CCD|189CB2;
;Teefa steals the sword and it starts beaming down
;The blue slowly decreases while alternating two shades quickly
   db $01                               ;189CCF|      ; Loop $0A->09
   db $09                               ;189CD0|      ;
   db $07                               ;189CD1|      ; RGB 0,0,10
   dl Set_RGB_3b                        ;189CD2|009F83;
   dl $100000                           ;189CD5|      ;
   db $06                               ;189CD8|      ; 06 02->3
   db $03                               ;189CD9|      ;
   db $07                               ;189CDA|      ; RGB 0,0,1A
   dl Set_RGB_3b                        ;189CDB|009F83;
   dl $1A0000                           ;189CDE|      ;
   db $06                               ;189CE1|      ; 06 02->3
   db $03                               ;189CE2|      ;
   db $02                               ;189CE3|      ; End loop
   db $01                               ;189CE4|      ; Loop $0A->09
   db $09                               ;189CE5|      ;
   db $07                               ;189CE6|      ; RGB 0,0,0C
   dl Set_RGB_3b                        ;189CE7|009F83;
   dl $0C0000                           ;189CEA|      ;
   db $06                               ;189CED|      ; 06 02->3
   db $03                               ;189CEE|      ;
   db $07                               ;189CEF|      ; RGB 0,0,14
   dl Set_RGB_3b                        ;189CF0|009F83;
   dl $140000                           ;189CF3|      ;
   db $06                               ;189CF6|      ; 06 02->3
   db $03                               ;189CF7|      ;
   db $02                               ;189CF8|      ; End loop
   db $01                               ;189CF9|      ; Loop $0A
   db $0A                               ;189CFA|      ;
   db $07                               ;189CFB|      ; RGB 0,0,8
   dl Set_RGB_3b                        ;189CFC|009F83;
   dl $080000                           ;189CFF|      ;
   db $06                               ;189D02|      ; 06 02->3
   db $03                               ;189D03|      ;
   db $07                               ;189D04|      ; RGB 0,0,E
   dl Set_RGB_3b                        ;189D05|009F83;
   dl $0E0000                           ;189D08|      ;
   db $06                               ;189D0B|      ; 06 02->3
   db $03                               ;189D0C|      ;
   db $02                               ;189D0D|      ; End loop
   db $01                               ;189D0E|      ; Loop $0A->9
   db $09                               ;189D0F|      ;
   db $07                               ;189D10|      ; RGB 0,0,4
   dl Set_RGB_3b                        ;189D11|009F83;
   dl $040000                           ;189D14|      ;
   db $06                               ;189D17|      ; 06 02->3
   db $03                               ;189D18|      ;
   db $07                               ;189D19|      ; RGB 0,0,8
   dl Set_RGB_3b                        ;189D1A|009F83;
   dl $080000                           ;189D1D|      ;
   db $06                               ;189D20|      ; 06 02->3
   db $03                               ;189D21|      ;
   db $02                               ;189D22|      ; End loop
   db $07                               ;189D23|      ; RGB 0,0,0
   dl Set_RGB_3b                        ;189D24|009F83;
   dl $000000                           ;189D27|      ;
   db $07                               ;189D2A|      ; Drop HDMA 7
   dl Rem_HDMA_ch_1b                    ;189D2B|009F1F;
   db $07                               ;189D2E|      ;
   db $07                               ;189D2F|      ; Zero Winmask stuff
   dl Zero_WinMask_stuff                ;189D30|189F90;
   db $0D                               ;189D33|      ; End task


;===============================================
;Ch3: Turn more slowly right towards Alan
org $98AE55
LavaRoom_Anims2:
   db $88,$01,$00,$04                   ;18AE55|      ; SET BG1 VELOCITY 800 -> 400
   db $06,$34                           ;18AE59|      ; WAIT d26->52
   db $D8,$01                           ;18AE5B|      ; ZERO BG1 VELOCITY
   db $06,$14                           ;18AE5D|      ; WAIT 14

;===============================================
;Ch3: Turn more slowly left towards Sarah/Axs
org $98AFB7
   db $88,$01,$00,$FC                   ;18AFB7|      ; SET BG1 VELOCITY -800 -> -400
   db $06,$34                           ;18AFBB|      ; WAIT d26->52
   db $D8,$01                           ;18AFBD|      ; ZERO BG1 VELOCITY


;================================================
;Ch3: Scene where Sarah is in the Torment Nexus
;Slows down the flashing and decreases the intensity change
org $98B189
Loop_Sarah_Jail:
   db $06,$06                           ;18B189|      ; WAIT 02->06
   db $07 : dl Set_RGB_3b,$001100       ;18B18B|      ; RGB 0,E,0 -> 0,11,0
   db $06,$06                           ;18B192|      ; WAIT 02->06
   db $07 : dl Set_RGB_3b,$001200       ;18B194|      ; RGB 0,1F,0 -> 0,12,0
   db $1A : dw Loop_Sarah_Jail          ;18B19B|      ; Loop


;================================================
;Ch4: Scene where Sarah stabs herself to open a door, what a drama queen :)
;   db $07 : dl Load_Event_Text_3b_1b, SCRIPT_073 : db $00
;   db $1B : dw Wait_for_A_press
;   db $1B : dw Sub_Sting_Flash
;   db $06, $5A
;   db $07 : dl Load_Event_Text_3b_1b, MACRO_119 : db $00
org $98B6B8
Opening_Tower_Door:
   db $16 : dw $1091,$0001              ;18B6B8|      ; Set animation finish timer to 1
   db $06,$3C                           ;18B6BD|      ; WAIT 3C
   db $13 : dw $1893 : db $02           ;18B6BF|      ; Enable color math on BG2
   db $07 : dl Set_RGB_3b : db $00,$00,$00            ; ASM_CALL Set RGB(0, 0, 0)
   db $01,$05                           ;18B6CA|      ; START_LOOP 8->5
   db $01,$03                           ;18B6CC|      ;   START_LOOP 4->3
   db $07 : dl Add_RGB_3b : db $05,$01,$00            ;     ASM_CALL Add_RGB(6, 3, 1)->(5, 1, 0)  - Make it more red than orange since we can get away with it now
   db $06,$06                           ;18B6D5|      ;     WAIT 1->6
   db $02                               ;18B6D7|      ;   END_LOOP
   db $01,$03                           ;18B6D8|      ;   START_LOOP 4->3
   db $07 : dl Add_RGB_3b : db $FB,$FF,$00            ;     ASM_CALL Add_RGB(-6, -3, -1)->(-5, -1, 0)
   db $06,$06                           ;18B6E1|      ;     WAIT 1->6
   db $02                               ;18B6E3|      ;   END_LOOP
   db $02                               ;18B6E4|      ; END_LOOP
   db $06,$3C                           ;18B6E5|      ; WAIT 3C


;================================================
;Ch4: Scene where Axs tells Rooks and Sarah to escape and the screen goes black too quickly
;Commented out because it was glitchy and not effective enough
;Rimsala_Escape:
;org $98BDDF
;;   db $07 : dl Add_RGB_3b : dl $00F0F0                ;   ASM_CALL Add_RGB(1, 1, 0)
;;   db $06,$06
;   db $07 : dl GetSet_SFX_1b : db $28                 ; SFX "Escape"

;   db $13 : dw $1893 : db $B6                         ; $1893 = B6 (Set temp Color Math to affect Main, Backdrop, OBJ on BG2,3)
;   db $13 : dw $2130 : db $00                         ; $2130 = 0 (Color window: allow all)     ;The problem is that this makes the HDMA pillar cover the screen
;   db $1B : dw Loop_Fade_In

;   db $07                               ;18BDDF|      ;
;   dl Rem_HDMA_ch_1b                    ;18BDE0|009F1F;
;   db $07                               ;18BDE3|      ;
;   db $04                               ;18BDE4|      ;
;   dl Sub_Transfer_stuff                ;18BDE5|0189CD;
;   db $06                               ;18BDE8|      ; WAIT 01
;   db $01                               ;18BDE9|      ;
;   db $1B : dw Loop_Fade_Out
;   db $1A : dw $BE00                                  ; Skip past the new free space

;Maybe $2100 reset bit 7 (screen off), set bit 7 (screen on)

;Mark the rest as free space
;assert pc() <= $98BE00
;   padbyte $10                                        ; Pad the free space as opcode 10 (ONTICK NOP)
;   pad $98BE00


;Commented out freespace routines because they didn't work right for Rimsala_Escape (previous)
;Loop_Fade_Out:
;org $98DBC0
;   db $01,$10                                         ; Loop 16 times
;   db $07 : dl Fade                                   ;   ASM_CALL Fade (decrease screen brightness 1/16)
;   db $06,$03                                         ;   WAIT 3
;   db $02                                             ; End Loop
;   db $1C                                             ; Return from $1B
;Loop_Fade_In:
;   db $01,$10                                         ; Loop 16 times
;   db $07 : dl Unfade                                 ;   ASM_CALL Unfade (increase screen brightness 1/16)
;   db $06,$03                                         ;   WAIT 3
;   db $02                                             ; End Loop
;   db $1C                                             ; Return from $1B


;================================================
;Ch4: Scene where Galneon unseals Rimsala and there's a big yellow flash
org $98C04D
Sub_Ch4_Yellow_Pillar:
   db $07 : dl Set_RGB_3b : dl $00F4E8                ; Set color to yellow-green (RGB: E8, F4, 00)
   db $07 : dl Set_WindowMask_4b : db $00,$00,$00,$80 ; Set OBJ window mask to 80
   db $13 : dw $2130 : db $10                         ; Set color window to 10
   db $13 : dw $2131 : db $22                         ; Set color math to 22 (backdrop + BG2 enabled)
   db $07 : dl HDMA_xfer_6b                           ; HDMA7 transfer to Win2_left, Win2_right
   db $07,$01,$28 : dl HDMA_18C0A2                    ;    Parameters: 07 (HDMA 7), 01 (2 byte mode), 28 (transfer to $2128/$2129) from HDMA_18C0A2
   db $01,$10                                         ; START_LOOP 48
   db $07 : dl Add_RGB_3b : dl $000202                ;   ASM_CALL Add_RGB(1, 1, 0)
   db $01,$02                                         ;   START_LOOP 2
   db $06,$07                                         ;     WAIT 2
   db $07 : dl Add_RGB_3b : dl $000202                ;     ASM_CALL Add_RGB(12, 12, 0)
   db $06,$07                                         ;     WAIT 2
   db $07 : dl Add_RGB_3b : dl $00FEFE                ;     ASM_CALL Add_RGB(-12, -12, 0) 
   db $02                                             ;   END_LOOP
   db $02                                             ; END_LOOP
Loop_Yellow_Pillar:
   db $06,$07                                         ; WAIT 2
   db $07 : dl Add_RGB_3b : dl $000202                ; ASM_CALL Add_RGB(12, 12, 0)
   db $06,$07                                         ; WAIT 2
   db $07 : dl Add_RGB_3b : dl $00FEFE                ; ASM_CALL Add_RGB(-12, -12, 0)
   db $1A : dw Loop_Yellow_Pillar                     ; Loop infinitely until scene ends
HDMA_18C0A2:                                          ; Sets Win2 left/right border for yellow flash (Rimsala revived at the end of Ch4)
   db $5C                                             ; For the next 5C scanlines, read the next line:
   db $67,$98                                         ; Light pillar: X= (67, 98)
   db $8C                                             ; For the next 0C scanlines, read the next 0C lines:
   db $68,$97                                         ; Light pillar: X= (68, 97)
   db $68,$97                                         ; Light pillar: X= (68, 97)
   db $69,$96                                         ; Light pillar: X= (69, 96)
   db $6A,$95                                         ; Light pillar: X= (6A, 95)
   db $6B,$94                                         ; Light pillar: X= (6B, 94)
   db $6D,$92                                         ; Light pillar: X= (6D, 92)
   db $6F,$90                                         ; Light pillar: X= (6F, 90)
   db $70,$8F                                         ; Light pillar: X= (70, 8F)
   db $71,$8E                                         ; Light pillar: X= (71, 8E)
   db $74,$8B                                         ; Light pillar: X= (74, 8B)
   db $78,$87                                         ; Light pillar: X= (78, 87)
   db $FF,$00                                         ; End HDMA table
   db $00                                             ; ---- This forms a vertical yellow tube that tapers off at the bottom behind Galneon. You can see it by turning off the OBJ layer.


;================================================
;Ch4: Screen shaking after Axs sacrifices himself - Called from $98BE20
;I tried not moving BG1, but BG3 controls the floor + dialogue box, and looks awfully silly showing the black border.
org $98BFBE
Loop_Screen_Shake:
   db $0F,$02 : dw $0000                ;18BFBE|      ; MOV 0000 to var2
   db $01,$0C                           ;18BFC2|      ; Loop 12 times
   db $07 : dl Sub_Screen_Shake_Ch4     ;18BFC4|      ;   ASM CALL: Screen Shake subroutine
   db $06,$08                           ;18BFC8|      ;   Pause 2->8 frames
   db $02                               ;18BFCA|      ; End loop
   db $1A : dw Loop_Screen_Shake        ;18BFCB|      ; Loop back (continues until scene ends)
Sub_Screen_Shake_Ch4:
   LDA.W $09F1                          ;18BFCE|0009F1; Object_var2_Selection_03
   INC.W $09F1                          ;18BFD1|0009F1;
   ASL A                                ;18BFD4|      ;
   TAX                                  ;18BFD5|      ;
   LDA.W $0FEF                          ;18BFD6|000FEF; Temp_BG1_HScroll_lo
   CLC                                  ;18BFD9|      ;
   ADC.L Tbl_Screen_Shake_X,X           ;18BFDA|18C019;
   STA.W $0FEF                          ;18BFDE|000FEF; Temp_BG1_HScroll_lo
   LDA.W $0FF1                          ;18BFE1|000FF1; Temp_BG2_HScroll_lo
   CLC                                  ;18BFE4|      ;
   ADC.L Tbl_Screen_Shake_X,X           ;18BFE5|18C019;
   STA.W $0FF1                          ;18BFE9|000FF1; Temp_BG2_HScroll_lo
   LDA.W $0FF3                          ;18BFEC|000FF3; Temp_BG3_HScroll_lo
   CLC                                  ;18BFEF|      ;
   ADC.L Tbl_Screen_Shake_X,X           ;18BFF0|18C019;
   STA.W $0FF3                          ;18BFF4|000FF3; Temp_BG3_HScroll_lo
   LDA.W $0FF7                          ;18BFF7|000FF7; Temp_BG1_VScroll_lo
   CLC                                  ;18BFFA|      ;
   ADC.L Tbl_Screen_Shake_Y,X           ;18BFFB|18C033;
   STA.W $0FF7                          ;18BFFF|000FF7; Temp_BG1_VScroll_lo
   LDA.W $0FF9                          ;18C002|000FF9; Temp_BG2_HScroll_lo
   CLC                                  ;18C005|      ;
   ADC.L Tbl_Screen_Shake_Y,X           ;18C006|18C033;
   STA.W $0FF9                          ;18C00A|000FF9; Temp_BG2_HScroll_lo
   LDA.W $0FFB                          ;18C00D|000FFB; Temp_BG3_VScroll_lo
   CLC                                  ;18C010|      ;
   ADC.L Tbl_Screen_Shake_Y,X           ;18C011|18C033;
   STA.W $0FFB                          ;18C015|000FFB; Temp_BG3_VScroll_lo
   RTL                                  ;18C018|      ;
Tbl_Screen_Shake_X:
   dw $0000                             ;18C019|      ;
   dw $0000                             ;18C01B|      ;
   dw $FFFE                             ;18C01D|      ;
   dw $0000                             ;18C01F|      ;
   dw $0002                             ;18C021|      ;
   dw $0000                             ;18C023|      ;
   dw $0000                             ;18C025|      ;
   dw $0002                             ;18C027|      ;
   dw $0002                             ;18C029|      ;
   dw $0000                             ;18C02B|      ;
   dw $FFFE                             ;18C02D|      ;
   dw $FFFE                             ;18C02F|      ;
   dw $0000                             ;18C031|      ;
Tbl_Screen_Shake_Y:
   dw $0002                             ;18C033|      ;
   dw $0000                             ;18C035|      ;
   dw $0000                             ;18C037|      ;
   dw $0002                             ;18C039|      ;
   dw $0002                             ;18C03B|      ;
   dw $0000                             ;18C03D|      ;
   dw $FFFE                             ;18C03F|      ;
   dw $FFFE                             ;18C041|      ;
   dw $0000                             ;18C043|      ;
   dw $0000                             ;18C045|      ;
   dw $0000                             ;18C047|      ;
   dw $FFFE                             ;18C049|      ;
   dw $0000                             ;18C04B|      ;



;================================================
; Ch5: the egg waking up to kill Rooks     - This is where we left off!
org $98C903
Egg_Awakens_SFX:
   db $07 : dl GetSet_SFX_1b : db $15   ;18C907|      ;
   db $01,$05                           ;18C908|      ; START_LOOP 28
   db $13 : dw $2131 : db $42           ;18C90D|      ;   Half color mode on BG2
   db $06,$10                           ;18C90E|      ;   WAIT 02
   db $13 : dw $2131 : db $02           ;18C913|      ;   Remove half color on BG2
   db $06,$10                           ;18C914|      ;   WAIT 02
   db $02                               ;18C916|      ; END_LOOP
   db $07 : dl GetSet_SFX_1b : db $16   ;18C917|      ; SFX 16 (Racecar??)
   db $13 : dw $2130 : db $00           ;18C91F|      ; Color window: allow all
   db $13 : dw $2131 : db $32           ;18C923|      ; Color math: allow math on backdrop/object on BG2
   db $07 : dl MainScr_Add_1b : db $10  ;18C928|      ;
   db $07 : dl SubScr_Remove_1b : db $1F
   db $07 : dl Set_RGB_3b,$161616       ;18C932|      ;
   db $01,$16                           ;18C936|      ;
   db $07 : dl Add_RGB_3b,$FFFFFF       ;18C93B|      ;
   db $06,$03                           ;18C93F|      ;
   db $02                               ;18C940|      ; End loop



;================================================
; Ch5: the animation of the four cards closing in on Rimsala
org $98C97E
Attempted_Rimsala_Seal:
   db $1B : dw FinalFight_CompressedData     ; Some subroutine to load the four cards closing in on Rimsala
   db $07 : dl GetSet_SFX_1b : db $09        ; Play SFX: Sealing
   db $13 : dw $2131 : db $10                ; Enable sprite color math
   db $01,$08                                ; Loop 8 times
   db $07 : dl Add_RGB_3b : db $04,$04,$04   ;   Increase brightness by 4
   db $06,$04                                ;   1->4 frames pause between brightness change
   db $02                                    ; End loop
   db $01,$08                                ; Loop 8 times
   db $07 : dl Add_RGB_3b : db $FC,$FC,$FC   ;   Decrease brightness by 4
   db $06,$04                                ;   1->4 frames pause between brightness change
   db $02                                    ; End loop
   db $06,$28                                ; $28 frame pause
;Text_SCRIPT113:
;   db $07 : dl Load_Event_Text               ; Load text
;   dl SCRIPT_113 : db $00                    ; Rooks: "No effect?"
;Just remembered the script location is dynamic in [story_sor_v3.asm], so hard coding it here would be a Bad Idea



;================================================
; Ch5: Rimsala flashing before breaking out of the egg; slows down the brightness changes
;Shinespark note: it's savestate F9 in Geiger's
org $98C9B9
Rimsala_breaks_out:
   db $16 : dw $0420,$0000                   ; Set RAM $0420 = 0 (?)
   db $13 : dw $2131 : db $32                ; Enable sprite/backdrop color math on layer 2 (flash the Rimsala egg)
   db $07 : dl Set_RGB_3b : db $00,$00,$00   ; Set RGB to 0 (?)
   db $01,$03                                ; Loop 4->3 times
   db $01,$05                                ;   Loop 8->5 times
   db $07 : dl Add_RGB_3b : db $02,$02,$02   ;     Increase brightness by 4->2
   db $06,$0A                                ;     Pause 1->10 frames
   db $02                                    ;   End loop
   db $01,$0A                                ;   Loop 32->10 times
   db $07 : dl Add_RGB_3b : db $FF,$FF,$FF   ;     Decrease brightness by 1
   db $06,$04                                ;     Pause 2->4 frames
   db $02                                    ;   End loop
   db $02                                    ; End loop
   db $13 : dw $2131 : db $37                ; Enable sprite/backdrop color math on layers 1-3 (turn the screen white to switch out the Rimsala bg2 graphic)
   db $01,$10                                ; Loop 8->16 times
   db $07 : dl Add_RGB_3b : db $02,$02,$02   ;   Increase brightness by 2
   db $06,$08                                ;   Pause 1->8 frames
   db $02                                    ; End loop

;;Repeats the Sss, Sss, Sss in Rooks' head while he's talking to egg
;Task_Rimsala_BrainBurn:
;   db $07                               ;18CD15|      ;
;   dl GetSet_SFX_1b                     ;18CD16|009C44;
;   db $26                               ;18CD19|      ;
;   db $06                               ;18CD1A|      ; WAIT 18
;   db $18                               ;18CD1B|      ;
;   db $1A                               ;18CD1C|      ; Loop until task ends
;   dw Task_Rimsala_BrainBurn            ;18CD1D|18CD15;


;================================================
; Ch5: Rimsala flashing white while being sealed; let's slow it down!
org $98CD1F
Task_Rimsala_Seal:
   db $13 : dw $2131 : db $02           ;18CD1F|      ; (13: Set $2131 to 2) Enable color math on BG2. We're making Rimsala flash by changing the layer's lighting.
Loop_Rimsala_Seal_Flashing:
   db $01,$05                           ;18CD23|      ; Loop 16->5 times
   db $07 : dl Add_RGB_3b : db $02,$02,$02            ;   Increase layer lighting by 2
   db $06,$04                           ;18CD2C|      ;   Delay 1f->4f
   db $02                               ;18CD2E|      ; End loop
   db $01,$05                           ;18CD2F|      ; Loop 4->5 times
   db $07 : dl Add_RGB_3b : db $FE,$FE,$FE            ;   Decrease layer lighting by 8->2
   db $06,$04                           ;18CD38|      ;   Delay 1f->4f
   db $02                               ;18CD3A|      ; End loop
   db $1A                               ;18CD3B|      ; Loop until scene ends
   dw Loop_Rimsala_Seal_Flashing        ;18CD3C|18CD23;


;================================================
; Ch5: Lightning during the Rimsala seal and coming out of the tower afterwards.
; Loops until the scene ends.
org $98CD3E
Task_Rimsala_Seal_Lightning:
   db $07 : dl MainScr_Add_1b : db $01  ;18CD3E|      ; Turn on BG1
   db $78,$00 : dw $0000                ;18CD43|      ; Set horizontal displacement (00)(0000) - Shows one pattern of lightning
   db $06,$0A                           ;18CD47|      ; Pause 3->10 frames
   db $78,$00 : dw $0100                ;18CD49|      ; Set horizontal displacement (00)(0100) - Shows one pattern of lightning 
   db $06,$08                           ;18CD4D|      ; Pause 3->8 frames
   db $07 : dl MainScr_Remove_1b : db $01             ; Turn off BG1
   db $06,$18                           ;18CD54|      ; Pause 3->24 frames
   db $1A                               ;18CD56|      ; Loop until scene ends
   dw Task_Rimsala_Seal_Lightning       ;18CD57|18CD3E;


;================================================
; Ch5: Battle flash for Red/Blue Guardians and Tiamat
; Uses the same changes as the random encounter event code at the start of this file
org $98D39F
Screen_Flash:
   db $13 : dw $1893 : db $06           ;             ; Enable color math on BG2/3
   db $07 : dl Set_RGB_3b,$000000       ;      |      ;
   db $01,$05                           ;      |      ; START_LOOP 8->5 times
   db $07 : dl Add_RGB_3b,$040404       ;      |      ;   Add 4 white
   db $06,$04                           ;      |      ;   WAIT 1->4
   db $02                               ;      |      ; END_LOOP
   db $01,$05                           ;      |      ; START_LOOP 8->5 times
   db $07 : dl Add_RGB_3b,$FCFCFC       ;      |      ;   Subtract 4 white
   db $06,$04                           ;      |      ;   WAIT 1->4
   db $02                               ;      |      ; END_LOOP
   db $1C                               ;      |      ; RETURN


;================================================
; Green flash when Rooks is paralyzed (Ch1) and Sarah stabs herself (Ch4)
; Reduced the speed a little.
org $98D480
Sub_Sting_Flash:
   db $13 : dw $1893 : db $22           ;18D480|      ; $1893=22 (Enable color math on backdrop+BG2)
   db $07 : dl Set_RGB_3b : db $00,$00,$00            ;
   db $01,$04                           ;18D48B|      ; START_LOOP 4
   db $07 : dl Add_RGB_3b : db $03,$06,$01            ;   ASM_CALL Add RGB (3, 6, 1)
   db $06,$05                           ;18D494|      ;   WAIT 1->5
   db $02                               ;18D496|      ; END_LOOP
   db $01,$04                           ;18D497|      ; START_LOOP 4
   db $07 : dl Add_RGB_3b : db $FD,$FA,$FF            ;   ASM_CALL Add_RGB( -3, -6, -1)
   db $06,$05                           ;18D4A0|      ;   WAIT 1->5
   db $02                               ;18D4A2|      ; END_LOOP
   db $1C                               ;18D4A3|      ; RTS

