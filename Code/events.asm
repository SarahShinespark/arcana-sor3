;Events.asm
;Holds modifications to the event assembly code

;Skip unequimping Axs in the Lava Room. (This does nothing now, so there's 3 bytes free) (Turns out this skips kicking him altogether, but he still gets unequimped afterwards)
;org $98AE39 : Equimp_Axs:
;db $1A : dw $AE3C


;Reorders two commands, so the check for dungeon BGM comes after Darwin rejoins in Chapter 4.
org $98BB95 : Rejoin_Arwin_theme:
db $1B : dw $D33D   ;Subroutine Arwin_joins
db $07 : dl $83A520 ;Sub_Default_BGM


;Restores the HAL Logo theme and injects the Crystal Sword theme into the intro text crawl
org $9791D9 : Set_HAL_Logo_theme:
db $07 : dl $809C3C : db $34    ;07: Call subroutine GetSet Music (Music ID: HAL Logo)

org $9780D3 : Inject_CS_theme:
db $04 : dl $97FEC5           ;ASM jump to free space

org $97FEC5
db $07 : dl $809C3C : db $45  ;Set BGM to Crystal Sword
db $09 : dl $97826D           ;Background subroutine A_press_intro_crawl
db $05                        ;Return long

;Update SFX for Arwin fighting the Chimeras (original uses Flame 1 sfx)
org $98A211
dl $809C44 ;GetSet_SFX               ;18A211|009C44;
db $22     ;Skyblade Blast SFX       ;18A214|      ;


;Tiamat Skip custom event
;This makes two new retroachievements possible, The Age Alliance and The Beauty Alliance (yes that's an In Stars And Time reference, and nobody can stop me)
;You get the Rooks-exclusive ring "Tiamat Repellent" when using stage select now.
;This event checks if he's wearing it, and if so, it skips the event where your final party leaves you.
;If you warped to Chapter 2, 3 or 4, you can fight Rimsala with Rooks, Teefa and Arwin.
;If you warped to Chapter 5, you can fight Rimsala with Rooks, Sarah and Axs. Good luck with that one.
org $98C6ED   ;Original Tiamat event
ASM_Vs_Tiamat:

org $9896C5   ;Event list; Redirect Tiamat event to check for key item
dw TiamatEventSkip

;Subroutine to check Rooks' equipped ring
org $98DB92   
CheckTiamatRepellent:
LDA.W $12CB   ;Check Rooks' equipped ring
CMP #$0076    ;If ID=76 (Tiamat Repellent) return true
BEQ +
LDA #$0000
RTL
+:
LDA #$0001
RTL
TiamatEventSkip:
db $07 : dl CheckTiamatRepellent  ;Check if Rooks is wearing the key item
db $0B : dw ASM_Vs_Tiamat     ;If false: play original event
;                             ;Else
db $07 : dl $009C44 : db $28  ;Play running away SFX
db $16 : dw $1901,$0000       ;Disable cutscene and re-enable control
db $00                        ;Return
