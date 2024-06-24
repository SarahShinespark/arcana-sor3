;Epilogue text before the staff roll.
;Also speeds it up so you aren't waiting as long.

org $80A0CB : Unfade:
org $80A0DB : Fade:
org $80A688 : Set_Text_Parser_long:

;Event code
org $98CFDE
  db $0F,$00 : dw $0000             ;Set var0 to 0
  db $01,$08                        ;Loop 7 times
Setup_Epilogue:
  db $07 : dl Epilogue_text_setup   ;Call subroutine Epilogue_text_setup
  db $15,$00,$02 : dw $0001         ;Add 0001 to var0
  db $06,$03 ;$05                   ;Delay 3f
  db $01,$10                        ;Loop 16 times
  db $07 : dl Unfade                ;Increase brightness 1/16
  db $06,$04 ;$06                   ;Delay 4f between brightness
  db $02                            ;End loop

  db $25,$01                        ;Load temp variable (Epilogue text delay)
  db $01,$10                        ;Loop 16 times
  db $07 : dl Fade                  ;Decrease brightness 1/16
  db $06,$02 ;$06                   ;Delay between brightness
  db $02                            ;End loop

  db $06,$08 ;$5A                   ;Delay between epilogue lines
  db $02                            ;End loop
  db $00                            ;End section

;Sends the text to the text parser
org $98D019
Epilogue_text_setup: 
  LDY.W $103F                          ;Load offset
  LDA.W $09A3,Y                        ;Load var0
  ASL A                                ;Convert var0 to offset
  TAX                                  ;Transfer to X
  PHX                                  ;Save it
  LDA.L Tbl_Epilogue_Text,X            ;Load the text pointer
  STA.B $00                            ;
  LDA.W #$0018                         ;Load the bank
  STA.B $02                            ;
  LDA.W #$0000                         ;
  JSL.L Set_Text_Parser_long           ;Read the text there
  LDY.W $103F                          ;Load offset  
  PLX                                  ;Load var0
  LDA.L Epilogue_text_delays,X         ;Load text delays  
  STA.W $09C7,Y                        ;Save to var1
  RTL                                  ;Return


;Data section
org $98D040
Epilogue_text_delays: 
  dw $00A0 ;$00F0                      ;18D040|        |      ;  
  dw $00B0 ;$00F0                      ;18D042|        |      ;  
  dw $00D0 ;$0168                      ;18D044|        |      ;  
  dw $00B0 ;$012C                      ;18D046|        |      ;  
  dw $00B0 ;$01A4                      ;18D048|        |      ;  
  dw $00F0 ;$01A4                      ;18D04A|        |      ;  
  dw $00B0 ;$012C                      ;18D04C|        |      ;  
  dw $00B0

Tbl_Epilogue_Text:
  dw Epilogue_1                        ;18D04E|        |18D066;  
  dw Epilogue_2                        ;18D050|        |18D0A3;  
  dw Epilogue_3                        ;18D052|        |18D0EC;  
  dw Epilogue_4                        ;18D054|        |18D159;  
  dw Epilogue_5                        ;18D056|        |18D196;  
  dw Epilogue_6                        ;18D058|        |18D1E1;  
  dw Epilogue_7                        ;18D05A|        |18D24F;  
  dw Epilogue_8

;Event text section
Sub_Epilogue_Text:
  db $06,$0D                           ;18D05C|        |      ; Font color: white
  db $0C                               ;18D05E|        |      ; idk
  db $01,$00,$06                       ;18D05F|        |      ; Move cursor to (00, 06)
  db $03,$0E                           ;18D062|        |      ; Normal vertical spacing
  db $1E                               ;18D064|        |      ; Text scrolls by character
  db $00                               ;18D065|        |      ; Return from subroutine

Epilogue_1:
  db $10 : dl Sub_Epilogue_Text
  db $08,$28,"Ten years have passed since then.", $00

Epilogue_2:
  db $10 : dl Sub_Epilogue_Text
  db $08,$28,"The desolate land has finally",$0D
  db $08,$28,"turned green again.", $00

Epilogue_3:
  db $10 : dl Sub_Epilogue_Text
  db $08,$28,"The dry winds have changed",$0D
  db $08,$28,"to soft breezes, and the rivers",$0D
  db $08,$28,"flow with pure water.", $00

Epilogue_4:
  db $10 : dl Sub_Epilogue_Text
  db $08,$28,"And, a rekindled hope has",$0D
  db $08,$28,"returned to everyone's hearts.",$00

Epilogue_5:
  db $10 : dl Sub_Epilogue_Text
  db $08,$28,"With the flow of time, those",$0D
  db $08,$28,"dark memories washed away.",$00

Epilogue_6:
  db $10 : dl Sub_Epilogue_Text
  db $08,$28,"Yes, those events live on only", $0D
  db $08,$28,"in the memories of one gallant man",$0D
  db $08,$28,"and his trusted companions.", $00

Epilogue_7:
  db $10 : dl Sub_Epilogue_Text
  db $08,$40,"The sun shines again",$0D
  db $08,$40,"on the land of Elemen.", $00

Epilogue_8:
  db $10 : dl Sub_Epilogue_Text
  db $08,$40,"Thank you for playing",$0D
  db $08,$46,$22,"Seal of Rimsala",$22,"!",$00

;Don't overwrite the CLC that starts the credits
assert pc() <= $98D281
padbyte $FF     ; Clear unused original text, if necessary
pad $98D281