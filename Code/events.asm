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
