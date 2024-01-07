;Jump point for Alchemist purchases; jumping back here brings you back into the drink menu immediately
org $03BBAC : Alchemist_Menu:

;After buying Water
org $03BC1D
db $1A           
dw Alchemist_Menu

;After buying Elixir
org $03BC55
db $1A           
dw Alchemist_Menu

;After buying Food A
org $03BC8D
db $1A           
dw Alchemist_Menu

;After buying Food B
org $03BCC5
db $1A           
dw Alchemist_Menu
