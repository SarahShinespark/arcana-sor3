;Smart shops - Speeds up various purchases


;Jump point for Bartender purchases; jumping back here brings you back into the drink menu immediately
org $03BBAC : Bartender_Menu:

org $03BC1D : db $1A : dw Bartender_Menu    ;After buying Water, return to the food menu
org $03BC55 : db $1A : dw Bartender_Menu    ;After buying Elixir
org $03BC8D : db $1A : dw Bartender_Menu    ;After buying Food A
org $03BCC5 : db $1A : dw Bartender_Menu    ;After buying Food B


;Jump point for Card purchases; jumping back here lets you immediately buy another card.
org $83C059 : CardBuy_Input_Check:

org $83C0C3 : Card_Buy:
db $07 : dl $809C44 : db $00               ;Call GetSet_SFX (none)
db $07 : dl $809C44 : db $05               ;Call GetSet_SFX (ding)
db $07 : dl $80A0AC : dl $88CCE4 : db $01  ;Call Text Reader (Shop menu GP, no screen clear)
db $1A : dw CardBuy_Input_Check            ;Return to the input check, instead of exiting to "Anything Else?"
