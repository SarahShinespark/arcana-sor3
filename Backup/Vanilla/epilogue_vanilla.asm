org $00A0CB : Unfade:
org $00A0DB : Fade:
org $18D019 : Epilogue_text_setup:

;Event code
org $18CFE2
  db $01,$07                        ;Loop 7 times
Setup_Epilogue:
  db $07 : dl Epilogue_text_setup   ;Call subroutine Epilogue_text_setup
  db $15,$00,$02 : dw $0001         ;15 00 02 0001: Load $09A3,x + 1   
  db $06,$05                        ;Delay before loop
  db $01,$10                        ;Loop 16 times
  db $07 : dl Unfade                ;Increase brightness 1/16
  db $06,$06                        ;Delay between brightness
  db $02                            ;End loop

  db $25,$01                        ;Load temp variable (Epilogue text delay)
  db $01,$10                        ;Loop 16 times
  db $07 : dl Fade                  ;Decrease brightness 1/16
  db $06,$06                        ;Delay between brightness
  db $02                            ;End loop

  db $06,$5A                        ;Delay between epilogue lines
  db $02                            ;End loop
  db $00                            ;End section

;Data section
org $18D040
Epilogue_text_delays: 
  dw $00F0                             ;18D040|        |      ;  
  dw $00F0                             ;18D042|        |      ;  
  dw $0168                             ;18D044|        |      ;  
  dw $012C                             ;18D046|        |      ;  
  dw $01A4                             ;18D048|        |      ;  
  dw $01A4                             ;18D04A|        |      ;  
  dw $012C                             ;18D04C|        |      ;  

Tbl_Epilogue_Text:
  dw Epilogue_1                        ;18D04E|        |18D066;  
  dw Epilogue_2                        ;18D050|        |18D0A3;  
  dw Epilogue_3                        ;18D052|        |18D0EC;  
  dw Epilogue_4                        ;18D054|        |18D159;  
  dw Epilogue_5                        ;18D056|        |18D196;  
  dw Epilogue_6                        ;18D058|        |18D1E1;  
  dw Epilogue_7                        ;18D05A|        |18D24F;  

;Event text section
Sub_Epilogue_Text:
  db $06,$0D                           ;18D05C|        |      ; Font color: white
  db $0C                               ;18D05E|        |      ; idk
  db $01,$00,$06                       ;18D05F|        |      ; Move cursor to (00, 06)
  db $03,$0E                           ;18D062|        |      ; Normal vertical spacing
  db $1C                               ;18D064|        |      ; Text scrolls by character (vanilla used $1C for immediate text)
  db $00                               ;18D065|        |      ; Return from subroutine

Epilogue_1:
  db $10 : dl Sub_Epilogue_Text
  db $08,$28,"Ten years have passed",$0D
  db $08,$28,"since these events took place.", $00

Epilogue_2:
  db $10 : dl Sub_Epilogue_Text
  db $08,$14,"The land that was blackened by conflict",$0D
  db $08,$14,"has now turned to green.", $00

Epilogue_3:
  db $10 : dl Sub_Epilogue_Text
  db $08,$14,"The searing winds of battle have changed",$0D
  db $08,$14,"to soft breezes, and flowing water",$0D
  db $08,$14,"has purified the land.", $00

Epilogue_4:
  db $10 : dl Sub_Epilogue_Text
  db $08,$28,"A feeling of hope has returned",$0D
  db $08,$28,"to the hearts of all.",$00

Epilogue_5:
  db $10 : dl Sub_Epilogue_Text
  db $08,$14,"The passage of time has washed away",$0D
  db $08,$14,"the memories of that dark era.",$00

Epilogue_6:
  db $10 : dl Sub_Epilogue_Text
  db $08,$1E,"The time of trial lives on only", $0D
  db $08,$1E,"in the memories of one gallant man",$0D
  db $08,$1E,"and those of his trusted circle.", $00

Epilogue_7:
  db $10 : dl Sub_Epilogue_Text
  db $08,$0A,"The sun shines again on the land of Elemen.", $00

;Don't overwrite the CLC that starts the credits
warnpc $18D281
