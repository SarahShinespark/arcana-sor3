;Item effects ASM
org $85F17E
  dw 200      ; Sleeping Bag HP heal amount
  dw 25       ; Sleeping Bag MP heal amount

org $85F194
  dw 999      ; Tent HP heal amount
  dw 999      ; Tent MP heal amount

org $85F20A
  dw 70       ; Herbs heal amount
  db 12       ; +random bonus

org $85F21F
  dw 200      ; Medicine heal amount
  db 12       ; +random bonus

org $85F234
dw 15         ; Silver Flask MP heal amount
db 12         ; +random bonus

org $85F249
dw 40         ; Gold Flask MP heal amount
db 12         ; +random bonus

org $87BBEA
Tbl_Stats_In_RAM:
  dw $1223          ; Strength
  dw $123B          ; Intelligence
  dw $1253          ; Endurance
  dw $126B          ; Alertness
  dw $1393          ; Max Hit Points
  dw $139B          ; Max Magic Points

org $87BBF6
Tbl_Honey_Boost_Amt:
  dw 4              ; Strength
  dw 4              ; Intelligence
  dw 4              ; Endurance
  dw 4              ; Alertness
  dw 6              ; Max Hit Points
  dw 6              ; Max Magic Points

org $87BC02
Tbl_Honey_Max_Stats:
  dw 255            ; Strength
  dw 255            ; Intelligence
  dw 255            ; Endurance
  dw 255            ; Alertness
  dw 999            ; Max Hit Points
  dw 999            ; Max Magic Points



  