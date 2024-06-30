; Bank $08 item/spell/weapon descriptions

;Update out-of-bank calls
org $819882
  dw Select_a_Player

org $819ADE
  dw Select_a_Player

;Card description pointer table
;Necessary if the descriptions are relocated
org $87975B
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
org $8797C7
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
org $8798A3
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
  dw FinalRepose
  dw HeavenStrike
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
  dw Requiem2
  dw FinalRepose2

;Weapon descriptions pointer table
org $8799EF
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
  dw NoHornyBat      
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
  dw TiamatRepellent        
  dw RingNone        
  dw RingNone        


;Card descriptions
org $8890D6
     ;Subroutine before drawing the text
   Details_Text_Setup: db $06, $0D      ;Text color white
                       db $0C           ;Resets something
                       db $01, $00, $06 ;Cursor to top left (x=0, y=6)
                       db $03, $0C      ;Normal vertical spacing between lines
                       db $1C, $00      ;Normal text scroll speed /0

         Discard_Card: db $10 : dl Details_Text_Setup
                       db "Throw away a card.", $00

       Wind_Card_desc: db $10 : dl Details_Text_Setup
                       db "Attack with Wind magic.",$0D,"Use more for stronger",$0D,"effect.", $00

      Earth_Card_desc: db $10 : dl Details_Text_Setup
                       db "Attack with Earth magic.",$0D,"Use more for stronger",$0D,"effect.", $00

      Water_Card_desc: db $10 : dl Details_Text_Setup
                       db "Attack with Water magic.",$0D,"Use more for stronger",$0D,"effect.", $00

       Fire_Card_desc: db $10 : dl Details_Text_Setup
                       db "Attack with Fire magic.",$0D,"Use more for stronger",$0D,"effect.", $00

       Null_Card_desc: db $10 : dl Details_Text_Setup
                       db "Destroys all regular",$0D,"enemies.", $0D, $00

        Fog_Card_desc: db $10 : dl Details_Text_Setup
                       db "Summons a strong fog", $0D, "for escaping from battle.", $00

     Call_Amulet_desc: db $10 : dl Details_Text_Setup
                       db "Summons a wild spirit.",$0D,"Sometimes backfires.", $00
                       
     Mirror_Card_desc: db $10 : dl Details_Text_Setup
                       db "Mirror cards mimic other cards.", $00
assert pc() <= $889291
padbyte $FF     ; Clear unused original text, if necessary
pad $889291

;Items descriptions
org $889291                       
        Previous_page: db $10 : dl Details_Text_Setup
                       db "Previous page", $0D, $00
                       
            Next_page: db $10 : dl Details_Text_Setup
                       db "Next page", $0D, $00
                       
            Toss_item: db $10 : dl Details_Text_Setup
                       db "Discard an item.", $00
                       
     Return_Ring_desc: db $10 : dl Details_Text_Setup
                       db "Return to town", $0D
                       db "instantly. Important for",$0D
                       db "lost adventurers.", $00
                       
   Water_of_Life_desc: db $10 : dl Details_Text_Setup
                       db "Reduces",$0D
                       db "random encounters.",$0D
                       db "Inflicts damage", $0D
                       db "on the Undead.", $0D, $00
                       
    Sleeping_Bag_desc: db $10 : dl Details_Text_Setup
                       db "Restores everyone's",$0D
                       db "HP and MP.", $0D, $00
                       
            Tent_desc: db $10 : dl Details_Text_Setup
                       db "Completely restores", $0D
                       db "everyone's HP and MP.", $0D
                       db "Removes status effects", $0D
                       db "lasting after battle.", $0D, $00                 
                       
       Str_Honey_desc: db $10 : dl Details_Text_Setup
                       db "Increases Strength by 4,", $0D
                       db "improving physical attack.", $0D, $00
                       
       Int_Honey_desc: db $10 : dl Details_Text_Setup
                       db "Increases Intelligence", $0D
                       db "by 4, improving magic", $0D
                       db "affinity.", $00
                       
    Endure_Honey_desc: db $10 : dl Details_Text_Setup
                       db "Increases Endurance", $0D
                       db "by 4, raising physical",$0D
                       db "defense.", $0D, $00
                       
       Agi_Honey_desc: db $10 : dl Details_Text_Setup
                       db "Increases your Alertness",$0D
                       db "by 4, improving your", $0D
                       db "accuracy, evasion,", $0D
                       db "and initiative in battle.", $00
                       
        HP_Honey_desc: db $10 : dl Details_Text_Setup
                       db "Increases max HP by 6.", $0D, $00
                       
        MP_Honey_desc: db $10 : dl Details_Text_Setup
                       db "Increases max MP by 6.", $0D, $00
                       
           Herbs_desc: db $10 : dl Details_Text_Setup
                       db "Recovers some HP.", $0D, $00
                       
        Medicine_desc: db $10 : dl Details_Text_Setup
                       db "Recovers lots of HP.", $0D, $00
                       
    Silver_Flask_desc: db $10 : dl Details_Text_Setup
                       db "Recovers some MP.", $0D, $00
                       
      Gold_Flask_desc: db $10 : dl Details_Text_Setup
                       db "Recovers lots of MP.", $0D, $00
                       
      Maid_Tears_desc: db $10 : dl Details_Text_Setup
                       db "Used for treating", $0D
                       db "petrification and returning", $0D
                       db "stone to flesh.", $0D, $00
                       
        Moon_Oil_desc: db $10 : dl Details_Text_Setup
                       db "Used for treating", $0D
                       db "paralysis and restoring", $0D
                       db "movement.", $0D, $00
                       
 Enchanted_Jewel_desc: db $10 : dl Details_Text_Setup
                       db "This jewel is needed",$0D
                       db "to decipher the arcane",$0D
                       db "ways of the ancients.",$0D, $00
                       
      Select_a_Player: db $10 : dl Details_Text_Setup
                       db "Please select a member.", $0D, $00

assert pc() <= $889652
padbyte $FF     ; Clear unused original text, if necessary
pad $889652

;Custom font tiles
!Wind    = $80
!Fire    = $81
!Water   = $82
!Earth   = $83
!Sword   = $84
!Shield  = $85
!MShield = $86
!Crit    = $87

;Spell descriptions, uses RAM values loaded by ExpandSpell in detail_expand_v9.asm
org $88E6B0
SpellDetails:
  db $01, $00, $33, !Sword, $20, $11, $00 : dl $0016DD        ;Spell Power
  db $01, $30, $33, "Acc ", $11, $00 : dl $0016DF : db "%"    ;Spell Acc
  db $01, $6B, $33, "MP",   $11, $00 : dl $0016DB : db $00    ;Spell MP
SpellAccMP:
  db $01, $30, $33, "Acc ", $11, $00 : dl $0016DF : db "%"    ;Spell Acc
  db $01, $6B, $33, "MP",   $11, $00 : dl $0016DB : db $00    ;Spell MP
SpellMP:
  db $01, $6B, $33, "MP",   $11, $00 : dl $0016DB : db $00    ;Spell MP

;Spell descriptions (relocated before levelup and after That's The Best You Can Do)
org $888D50
            ChaosWind: db $10 : dl Details_Text_Setup
                       db "Calls in a gust of wind",$0D
                       db "to blow away all enemies.",$0D
                       db $10 : dl SpellAccMP : db $00

               Entomb: db $10 : dl Details_Text_Setup
                       db "An earthquake occurs and",$0D
                       db "fissures swallow enemies.",$0D
                       db $10 : dl SpellAccMP : db $00
                       
              Destroy: db $10 : dl Details_Text_Setup
                       db "Casts a death sentence on",$0D
                       db "all enemies.",$0D
                       db $10 : dl SpellAccMP : db $00

assert pc() <= $888E00  ;Don't overwrite the relocated levelup screen
padbyte $FF
pad $888E00

;Spell descriptions
org $889652
                 Lit1: db $10 : dl Details_Text_Setup
                       db "Strike all enemies with",$0D
                       db "lightning bolts.",$0D
                       db "Level 1 ", !Wind, "Wind."
                       db $10 : dl SpellDetails : db $00

                 Lit2: db $10 : dl Details_Text_Setup
                       db "Strike all enemies with",$0D
                       db "powerful lightning bolts.",$0D
                       db "Level 2 ", !Wind, "Wind."
                       db $10 : dl SpellDetails : db $00

                 Lit3: db $10 : dl Details_Text_Setup
                       db "Target all enemies with",$0D
                       db "the strongest lightning.",$0D
                       db "Level 3 ", !Wind, "Wind."
                       db $10 : dl SpellDetails : db $00

               Smash1: db $10 : dl Details_Text_Setup
                       db "Throws stones at all",$0D
                       db "enemies using telekinesis.",$0D
                       db "Level 1 ", !Earth, "Earth."
                       db $10 : dl SpellDetails : db $00

               Smash2: db $10 : dl Details_Text_Setup
                       db "Launches larger stones at",$0D
                       db "all enemies.",$0D
                       db "Level 2 ", !Earth, "Earth."
                       db $10 : dl SpellDetails : db $00

               Smash3: db $10 : dl Details_Text_Setup
                       db "Overwhelms all enemies",$0D
                       db "in a storm of boulders.",$0D
                       db "Level 3 ", !Earth, "Earth."
                       db $10 : dl SpellDetails : db $00

               Water1: db $10 : dl Details_Text_Setup
                       db "Sprays enemies with water",$0D
                       db "drawn from the humidity.",$0D
                       db "Level 1 ", !Water, "Water."
                       db $10 : dl SpellDetails : db $00

               Water2: db $10 : dl Details_Text_Setup
                       db "Knock back enemies with a",$0D
                       db "greater water current.",$0D
                       db "Level 2 ", !Water, "Water."
                       db $10 : dl SpellDetails : db $00

               Water3: db $10 : dl Details_Text_Setup
                       db "Blasts all enemies with a",$0D
                       db "flood of water currents.",$0D
                       db "Level 3 ", !Water, "Water."
                       db $10 : dl SpellDetails : db $00

               Flame1: db $10 : dl Details_Text_Setup
                       db "Shoots fireballs from the",$0D
                       db "fingertips at all enemies.",$0D
                       db "Level 1 ", !Fire, "Fire."
                       db $10 : dl SpellDetails : db $00

               Flame2: db $10 : dl Details_Text_Setup
                       db "Burn all enemies with a",$0D
                       db "powerful blaze.",$0D
                       db "Level 2 ", !Fire, "Fire."
                       db $10 : dl SpellDetails : db $00

               Flame3: db $10 : dl Details_Text_Setup
                       db "Conjures a scorching sea",$0D
                       db "of flame around enemies.",$0D
                       db "Level 3 ", !Fire, "Fire."
                       db $10 : dl SpellDetails : db $00

           Attribute1: db $10 : dl Details_Text_Setup
                       db !Wind, !Earth, ": A vacuum blade.",$0D, $0D
                       db "Anti ",!Water, "Water, ",!Earth, "Earth"
                       db $10 : dl SpellDetails : db $00

           Attribute2: db $10 : dl Details_Text_Setup
                       db !Wind, !Water, ": A scythe of",$0D
                       db "freezing wind attacks all.",$0D
                       db "Neutral damage.",$0D
                       db $10 : dl SpellDetails : db $00

           Attribute3: db $10 : dl Details_Text_Setup
                       db !Water, !Earth, ": Twin dragons of earth",$0D
                       db "and sea attack all.",$0D
                       db "Anti ",!Fire, "Fire, ",!Water, "Water"
                       db $10 : dl SpellDetails : db $00
                       
           Attribute4: db $10 : dl Details_Text_Setup
                       db !Wind, !Fire, ": Calls up a cruel storm",$0D
                       db "that ignites the air.",$0D
                       db "Anti ",!Wind, "Wind, ",!Earth, "Earth"
                       db $10 : dl SpellDetails : db $00

           Attribute5: db $10 : dl Details_Text_Setup
                       db !Fire, !Earth, ": Summons an infernal",$0D
                       db "wave of molten rock.",$0D
                       db "Neutral damage.",$0D
                       db $10 : dl SpellDetails : db $00

           Attribute6: db $10 : dl Details_Text_Setup
                       db !Fire, !Water, ": Blades of ice and fire",$0D
                       db "slash all enemies.",$0D
                       db "Anti ",!Wind, "Wind, ",!Fire, "Fire"
                       db $10 : dl SpellDetails : db $00

           Attribute7: db $10 : dl Details_Text_Setup
                       db !Wind, !Water, !Earth, ": A terrible storm",$0D
                       db "smashes apart all enemies.",$0D
                       db "Anti ",!Fire, "Fire, ",!Water, "Water"
                       db $10 : dl SpellDetails : db $00

           Attribute8: db $10 : dl Details_Text_Setup
                       db !Earth, !Wind, !Fire, ": Calls a suffocating",$0D
                       db "cloud of molten ash.",$0D
                       db "Anti ", !Water, "Water, ", !Earth, "Earth"
                       db $10 : dl SpellDetails : db $00

           Attribute9: db $10 : dl Details_Text_Setup
                       db !Wind, !Fire, !Water, ": Summons a disaster",$0D
                       db "to overwhelm all enemies.",$0D
                       db "Anti ",!Wind, "Wind, ",!Earth, "Earth"
                       db $10 : dl SpellDetails : db $00
                       
          Attribute10: db $10 : dl Details_Text_Setup
                       db !Fire, !Water, !Earth, ": A sudden blast of",$0D
                       db "incredible energy.",$0D
                       db "Anti ",!Wind, "Wind, ", !Fire, "Fire"
                       db $10 : dl SpellDetails : db $00

          Attribute11: db $10 : dl Details_Text_Setup
                       db !Wind, !Fire, !Water, !Earth, ": Destruction of",$0D
                       db "heaven and earth.",$0D
                       db "Neutral damage."
                       db $10 : dl SpellDetails : db $00

             CallWind: db $10 : dl Details_Text_Setup
                       db "A wind spirit descends and",$0D
                       db "unleashes a heavenly roar.",$0D
                       db "Level 4 ", !Wind, "Wind."
                       db $10 : dl SpellDetails : db $00

            CallEarth: db $10 : dl Details_Text_Setup
                       db "An abyssal spirit",$0D
                       db "scatters earth's tears.",$0D
                       db "Level 4 ", !Earth, "Earth."
                       db $10 : dl SpellDetails : db $00

            CallWater: db $10 : dl Details_Text_Setup
                       db "Summons a water witch",$0D
                       db "to drown all enemies.",$0D
                       db "Level 4 ", !Water, "Water."
                       db $10 : dl SpellDetails : db $00

             CallFire: db $10 : dl Details_Text_Setup
                       db "A fire spirit descends and",$0D
                       db "burns away all evil.",$0D
                       db "Level 4 ", !Fire, "Fire."
                       db $10 : dl SpellDetails : db $00

                Drain: db $10 : dl Details_Text_Setup : db $00
;                       db "Single target. Takes an",$0D
;                       db "opponent's HP. (Dummied)"
;                       db $10 : dl SpellDetails : db $00

                Psych: db $10 : dl Details_Text_Setup : db $00
;                       db "Single target. Takes an",$0D
;                       db "opponent's MP. (Dummied)"
;                       db $10 : dl SpellDetails : db $00

           HPRestoreA: db $10 : dl Details_Text_Setup
                       db "Slightly recovers", $0D
                       db "the party's HP."
                       db $10 : dl SpellMP : db $00

            HPRestore: db $10 : dl Details_Text_Setup
                       db "Recovers a small",$0D
                       db "amount of HP."
                       db $10 : dl SpellMP : db $00

                Heal1: db $10 : dl Details_Text_Setup
                       db "Recovers some HP."
                       db $10 : dl SpellMP : db $00

                Heal2: db $10 : dl Details_Text_Setup
                       db "Significantly recovers",$0D
                       db "your HP."
                       db $10 : dl SpellMP : db $00

                Heal3: db $10 : dl Details_Text_Setup
                       db "Completely recovers HP."
                       db $10 : dl SpellMP : db $00

               HealA1: db $10 : dl Details_Text_Setup
                       db "Recovers some of the", $0D
                       db "party's HP."
                       db $10 : dl SpellMP : db $00

               HealA2: db $10 : dl Details_Text_Setup
                       db "Recovers more of the", $0D
                       db "party's HP, making them",$0D
                       db "more energetic."
                       db $10 : dl SpellMP : db $00
;---
;ChaosWind, Entomb, Destroy relocated to $888D50
;---
            ParalyzeA: db $10 : dl Details_Text_Setup
                       db "Paralyzes all enemies."
                       db $10 : dl SpellAccMP : db $00

             PetrifyA: db $10 : dl Details_Text_Setup
                       db "Petrifies all enemies."
                       db $10 : dl SpellAccMP : db $00

                StopA: db $10 : dl Details_Text_Setup : db $00
;                       db "Silences all of your", $0D, "enemies. (Dummied)"
;                       db $10 : dl SpellAccMP : db $00

               SleepA: db $10 : dl Details_Text_Setup
                       db "Puts all enemies to sleep."
                       db $10 : dl SpellAccMP : db $00

            ConfusedA: db $10 : dl Details_Text_Setup
                       db "Confuses all enemies."
                       db $10 : dl SpellAccMP : db $00

             Paralyze: db $10 : dl Details_Text_Setup
                       db "Paralyzes one enemy."
                       db $10 : dl SpellAccMP : db $00

              Petrify: db $10 : dl Details_Text_Setup
                       db "Petrifies one enemy."
                       db $10 : dl SpellAccMP : db $00

                 Stop: db $10 : dl Details_Text_Setup : db $00
;                       db "Silences the selected", $0D, "enemy. (Dummied)"
;                       db $10 : dl SpellAccMP : db $00

                Sleep: db $10 : dl Details_Text_Setup
                       db "Puts one enemy to sleep."
                       db $10 : dl SpellAccMP : db $00

             Confused: db $10 : dl Details_Text_Setup
                       db "Confuses one enemy."
                       db $10 : dl SpellAccMP : db $00

            AvoidDown: db $10 : dl Details_Text_Setup
                       db "Weakens an enemy's", $0D, "physical evasion."
                       db $10 : dl SpellAccMP : db $00

           AvoidDownA: db $10 : dl Details_Text_Setup
                       db "Weakens all enemies'", $0D, "physical evasion."
                       db $10 : dl SpellAccMP : db $00

              DefDown: db $10 : dl Details_Text_Setup
                       db "Weakens an enemy's", $0D, "physical defense."
                       db $10 : dl SpellAccMP : db $00

             DefDownA: db $10 : dl Details_Text_Setup
                       db "Weakens all enemies'", $0D, "physical defense."
                       db $10 : dl SpellAccMP : db $00

              AccDown: db $10 : dl Details_Text_Setup
                       db "Weakens an enemy's", $0D, "physical accuracy."
                       db $10 : dl SpellAccMP : db $00

             AccDownA: db $10 : dl Details_Text_Setup
                       db "Weakens all enemies'", $0D, "physical accuracy."
                       db $10 : dl SpellAccMP : db $00

              AttDown: db $10 : dl Details_Text_Setup
                       db "Weakens an enemy's", $0D, "physical attack."
                       db $10 : dl SpellAccMP : db $00

             AttDownA: db $10 : dl Details_Text_Setup
                       db "Weakens all enemies'", $0D, "physical attack."
                       db $10 : dl SpellAccMP : db $00

              Requiem: db $10 : dl Details_Text_Setup : db $00
;                       db "Reduce the rate of",$0D, "enemy encounters. (Dummied)"
;                       db $10 : dl SpellAccMP : db $00

          FinalRepose: db $10 : dl Details_Text_Setup : db $00
;                       db "Target all, effective", $0D, "against Undead enemies. (Dummied)"
;                       db $10 : dl SpellAccMP : db $00

         HeavenStrike: db $10 : dl Details_Text_Setup : db $00
;                       db "God's judgement is",$0D, "handed down upon all. (Dummied)"
;                       db $10 : dl SpellAccMP : db $00

       RuinousMission: db $10 : dl Details_Text_Setup
                       db "Self-destruct a spirit",$0D
                       db "and blast enemies with",$0D
                       db "holy power. Doesn't miss."
                       db $10 : dl SpellMP : db $00

                 Flee: db $10 : dl Details_Text_Setup
                       db "Guarantees escape from",$0D,"the battlefield."
                       db $10 : dl SpellMP : db $00

               DodgeA: db $10 : dl Details_Text_Setup
                       db "Summons wind around allies,",$0D
                       db "making them less likely to",$0D
                       db "be hit by enemy attacks."
                       db $10 : dl SpellMP : db $00

                WallA: db $10 : dl Details_Text_Setup
                       db "Improves everyone's", $0D, "physical defense."
                       db $10 : dl SpellMP : db $00

               AccUpA: db $10 : dl Details_Text_Setup
                       db "Improves everyone's", $0D, "physical accuracy."
                       db $10 : dl SpellMP : db $00

               StompA: db $10 : dl Details_Text_Setup
                       db "Improves everyone's", $0D, "physical attack."
                       db $10 : dl SpellMP : db $00

           ChangeWind: db $10 : dl Details_Text_Setup
                       db "Changes everyone's", $0D
                       db "element to ",!Wind, "Wind.",$0D
                       db " Strong: ",!Earth, "Earth",$0D
                       db "   Weak: ",!Fire, "Fire"
                       db $10 : dl SpellMP : db $00

          ChangeEarth: db $10 : dl Details_Text_Setup
                       db "Changes everyone's", $0D
                       db "element to ",!Earth, "Earth.",$0D
                       db " Strong: ",!Water, "Water",$0D
                       db "   Weak: ",!Wind, "Wind"
                       db $10 : dl SpellMP : db $00

          ChangeWater: db $10 : dl Details_Text_Setup
                       db "Changes everyone's", $0D
                       db "element to ",!Water, "Water.",$0D
                       db " Strong: ",!Fire, "Fire",$0D
                       db "   Weak: ",!Earth, "Earth"
                       db $10 : dl SpellMP : db $00

           ChangeFire: db $10 : dl Details_Text_Setup
                       db "Changes everyone's", $0D
                       db "element to ",!Fire, "Fire.",$0D
                       db " Strong: ",!Wind, "Wind",$0D
                       db "   Weak: ",!Water, "Water"
                       db $10 : dl SpellMP : db $00

                Repel: db $10 : dl Details_Text_Setup : db $00
;                       db "Single target,", $0D, "repels attacks. (Dummied)"
;                       db $10 : dl SpellMP : db $00

               Mirror: db $10 : dl Details_Text_Setup : db $00
;                       db "Single target,", $0D, "repels magic. (Dummied)"
;                       db $10 : dl SpellMP : db $00

             RestoreA: db $10 : dl Details_Text_Setup
                       db "Cures all status ailments,", $0D
                       db "like Sleep or Confusion,", $0D
                       db "affecting the party."
                       db $10 : dl SpellMP : db $00

           Revitalize: db $10 : dl Details_Text_Setup
                       db "Cures paralysis."
                       db $10 : dl SpellMP : db $00

            Unpetrify: db $10 : dl Details_Text_Setup
                       db "Cures petrification."
                       db $10 : dl SpellMP : db $00

          Restoration: db $10 : dl Details_Text_Setup
                       db "Restores a torn spirit", $0D, "card to full HP and MP."
                       db $10 : dl SpellMP : db $00

                 Home: db $10 : dl Details_Text_Setup
                       db "Returns to town", $0D, "in an instant."
                       db $10 : dl SpellMP : db $00

             WayPoint: db $10 : dl Details_Text_Setup : db $00
;                       db "Add a spot on the map. (Dummied)"
;                       db $10 : dl SpellMP : db $00

         WayPointWarp: db $10 : dl Details_Text_Setup : db $00
;                       db "Warp to the spot. (Dummied)"
;                       db $10 : dl SpellMP : db $00

             Requiem2: db $10 : dl Details_Text_Setup : db $00
;                       db "Reduce the rate of",$0D
;                       db "enemy encounters. (Dummied)"
;                       db $10 : dl SpellMP : db $00

         FinalRepose2: db $10 : dl Details_Text_Setup : db $00
;                       db "Reduce the rate of",$0D
;                       db "enemy encounters. (Dummied)"
;                       db $10 : dl SpellMP : db $00
assert pc() <= $88A5FA
padbyte $FF     ; Clear unused original text, if necessary
pad $88A5FA

;!Gray  = $06,$0E          ;Makes the next text gray
;!White = $06,$0D          ;Makes the next text white
!BtmCursor = $01,$00,$34  ;Sets the cursor to position (00, 34) the bottom left

;Equip macros: Writes the 5 initials at X positions $0C, $26, $3F, $59, $73.
!EquipAll             = $08,$0C,"Ro",$08,$26,"Te",$08,$3F,"Sa",$08,$59,"Ar",$08,$73,"Ax"
!EquipRooks           = $08,$0C,"Ro"
!EquipRooksArwin      = $08,$0C,"Ro",                          $08,$59,"Ar",$08,$73
!EquipRooksAxs        = $08,$0C,"Ro",                                       $08,$73,"Ax"
!EquipRooksArwinAxs   = $08,$0C,"Ro",                          $08,$59,"Ar",$08,$73,"Ax"
!EquipRooksSarahArwin = $08,$0C,"Ro",             $08,$3F,"Sa",$08,$59,"Ar",$08,$73
!EquipRooksSarahAxs   = $08,$0C,"Ro",             $08,$3F,"Sa",             $08,$73,"Ax"
!EquipNotTeefa        = $08,$0C,"Ro",             $08,$3F,"Sa",$08,$59,"Ar",$08,$73,"Ax"
!EquipArwin           =                                        $08,$59,"Ar"
!EquipAxs             =                                                     $08,$73,"Ax"
!EquipTeefa           =              $08,$26,"Te"
!EquipTeefaArwin      =              $08,$26,"Te",             $08,$59,"Ar"
!EquipSarah           =                           $08,$3F,"Sa"
!EquipTeefaSarah      =              $08,$26,"Te",$08,$3F,"Sa"
!EquipSarahAxs        =                           $08,$3F,"Sa",             $08,$73,"Ax"

;Equipment descriptions
;Equip by: bit depth xxxXASTR   (R T S A X)
org $88A5FA
               Dagger: db $10 : dl Details_Text_Setup
                       db "A small dagger."
                       db !BtmCursor
                       db !EquipAll, $00
                       
              ShortSD: db $10 : dl Details_Text_Setup
                       db "A light, short sword that", $0D
                       db "even an amateur can", $0D
                       db "handle."
                       db !BtmCursor
                       db !EquipAll, $00

               LongSD: db $10 : dl Details_Text_Setup
                       db "A conventional sword", $0D
                       db "preferred by knights."
                       db !BtmCursor
                       db !EquipRooksArwin, $00
                       
              BroadSD: db $10 : dl Details_Text_Setup
                       db "A sword with a wide", $0D
                       db "double-edged blade."
                       db !BtmCursor
                       db !EquipRooksArwin, $00
                       
             Scimitar: db $10 : dl Details_Text_Setup
                       db "A magnificent sword of", $0D
                       db "unusual size."
                       db !BtmCursor
                       db !EquipRooksArwinAxs, $00
                       
             IceBlade: db $10 : dl Details_Text_Setup
                       db "A magical sword that", $0D
                       db "emits cold air.", $0D
                       db "(", !Sword, "Attr Water)"
                       db !BtmCursor
                       db !EquipRooksArwin, $00
                      
          UndeadBlade: db $10 : dl Details_Text_Setup
                       db "A sword that was forged", $0D
                       db "to defeat impure,", $0D
                       db "undead monsters.", $0D
                       db "(", !Sword, " vs Undead)"
                       db !BtmCursor
                       db !EquipRooks, $00
                       
            FireBlade: db $10 : dl Details_Text_Setup
                       db "A sword with a white-hot", $0D
                       db "blade that scorches as", $0D
                       db "it cuts.",$0D
                       db "(", !Sword, "Attr Fire)"
                       db !BtmCursor
                       db !EquipRooks, $00
                       
          DragonBlade: db $10 : dl Details_Text_Setup
                       db "A sword used by an", $0D
                       db "ancient hero to slay", $0D
                       db "an evil dragon.",$0D
                       db "(", !Sword, "Dragon)"
                       db !BtmCursor
                       db !EquipRooksArwin, $00
                       
              MagicSD: db $10 : dl Details_Text_Setup
                       db "A silver sword made of", $0D
                       db "mythril that contains", $0D
                       db "magical power."
                       db !BtmCursor
                       db !EquipRooksArwin, $00
                       
          LightningSD: db $10 : dl Details_Text_Setup
                       db "A magic sword with", $0D
                       db "lightning flowing from", $0D
                       db "its blade.",$0D
                       db "(", !Sword, "Wind)"
                       db !BtmCursor
                       db !EquipRooksArwin, $00
                       
              Desiree: db $10 : dl Details_Text_Setup
                       db "A legendary sword said", $0D
                       db "to contain holy power.",$0D
                       db "(", !Sword, "vs Dragon, Giant)"
                       db !BtmCursor
                       db !EquipArwin, $00
                       
            CrystalSD: db $10 : dl Details_Text_Setup
                       db "A legendary sword said to", $0D
                       db "contain the radiance of", $0D
                       db "crystal. (", !Sword, "vs Undead,",$0D
                       db "Dragon, Medusa, Giant)"
                       db !BtmCursor
                       db !EquipRooks, $00
                       
             SpiritSD: db $10 : dl Details_Text_Setup
                       db "A sword once used by", $0D
                       db "conquerors, in which it", $0D
                       db "is said the power of the", $0D
                       db "spirits dwells. (",!Sword, "Attr All)"
                       db !BtmCursor
                       db !EquipRooks, $00

              GiantSD: db $10 : dl Details_Text_Setup
                       db "A powerful sword said to", $0D
                       db "have been used by the", $0D
                       db "hero Fanas.",$0D
                       db "(", !Sword, "Attr All)"
                       db !BtmCursor
                       db !EquipRooks, $00
                       
             GoldenSD: db $10 : dl Details_Text_Setup
                       db "A sword of pure gold", $0D
                       db "that glitters gorgeously."
                       db !BtmCursor
                       db !EquipAll, $00

             CursedSD: db $10 : dl Details_Text_Setup
                       db "A sword said to contain", $0D
                       db "powers of darkness that", $0D
                       db "consume the wielder."
                       db !BtmCursor
                       db !EquipAll, $00

             FlyingAx: db $10 : dl Details_Text_Setup
                       db "A throwing axe favored", $0D
                       db "by warriors since ancient", $0D
                       db "times."
                       db !BtmCursor
                       db !EquipRooksArwinAxs, $00

             BattleAx: db $10 : dl Details_Text_Setup
                       db "A double-bladed,", $0D
                       db "two-handed axe forged", $0D
                       db "for battle."
                       db !BtmCursor
                       db !EquipRooksAxs, $00
                       
              GreatAx: db $10 : dl Details_Text_Setup
                       db "A heavy axe that chops", $0D
                       db "down enemies with its", $0D
                       db "large blade."
                       db !BtmCursor
                       db !EquipAxs, $00
                       
              DemonAx: db $10 : dl Details_Text_Setup
                       db "A black battleaxe sealed", $0D
                       db "with the power of a", $0D
                       db "vile demon.",$0D
                       db "(", !Sword, "Attr Earth, vs Medusa)"
                       db !BtmCursor
                       db !EquipAxs, $00
                       
                Staff: db $10 : dl Details_Text_Setup
                       db "A long, thick, sturdy", $0D
                       db "staff."
                       db !BtmCursor
                       db !EquipTeefaSarah, $00
                       
               MageST: db $10 : dl Details_Text_Setup
                       db "A staff intricately carved", $0D
                       db "for use by wizards."
                       db !BtmCursor
                       db !EquipTeefaSarah, $00
                       
           MemoryWand: db $10 : dl Details_Text_Setup
                       db "A thin, conventional wand", $0D
                       db "preferred by wizards."
                       db !BtmCursor
                       db !EquipSarah, $00
                       
            Firebrand: db $10 : dl Details_Text_Setup
                       db "A magic wand said to", $0D
                       db "contain a fire spirit.", $0D
                       db "(", !Sword, "Attr Fire)"
                       db !BtmCursor
                       db !EquipSarah, $00
                       
           ElderStaff: db $10 : dl Details_Text_Setup
                       db "A staff infused with", $0D
                       db "magic power by a great", $0D
                       db "sage in ancient times."
                       db !BtmCursor
                       db !EquipTeefaSarah, $00

             WishWand: db $10 : dl Details_Text_Setup
                       db "A mysterious staff that", $0D
                       db "contains the prayers of", $0D
                       db "the ancients."
                       db !BtmCursor
                       db !EquipSarah, $00
                       
          StaffWisdom: db $10 : dl Details_Text_Setup
                       db "A staff that holds the", $0D
                       db "power to convert", $0D
                       db "willpower into magical", $0D
                       db "power."
                       db !BtmCursor
                       db !EquipTeefa, $00
                       
          SpiritStaff: db $10 : dl Details_Text_Setup
                       db "A staff said to be", $0D
                       db "imbued with the", $0D
                       db "prayers of the spirits.", $0D
                       db "(", !Sword, "Attr ", !Wind, !Fire, !Water, !Earth, ")"
                       db !BtmCursor
                       db !EquipTeefa, $00
                       
                 Mace: db $10 : dl Details_Text_Setup
                       db "A weighted stone club", $0D
                       db "resembling a spear."
                       db !BtmCursor
                       db !EquipSarahAxs, $00
                       
                Flail: db $10 : dl Details_Text_Setup
                       db "A pole with a weight", $0D
                       db "on the end that can", $0D
                       db "be swung around."
                       db !BtmCursor
                       db !EquipSarahAxs, $00
                       
         BattleHammer: db $10 : dl Details_Text_Setup
                       db "A golden hammer", $0D
                       db "manufactured for use", $0D
                       db "in battle."
                       db !BtmCursor
                       db !EquipAxs, $00
                       
          MorningStar: db $10 : dl Details_Text_Setup
                       db "A weapon that swings", $0D
                       db "around a heavy iron", $0D
                       db "ball to damage enemies.",$0D
                       db "(", !Sword, "vs Giants)"
                       db !BtmCursor
                       db !EquipAxs, $00
                       
                 Whip: db $10 : dl Details_Text_Setup
                       db "A two-meter long weapon", $0D
                       db "made of braided, tanned", $0D
                       db "leather."
                       db !BtmCursor
                       db !EquipTeefaSarah, $00

            ChainWhip: db $10 : dl Details_Text_Setup
                       db "A whip made with a thick,", $0D
                       db "heavy chain instead of", $0D
                       db "leather."
                       db !BtmCursor
                       db !EquipTeefaSarah, $00
                       
      BlackthorneWhip: db $10 : dl Details_Text_Setup
                       db "A whip inlaid with", $0D
                       db "iron thorns for a", $0D
                       db "more powerful attack."
                       db !BtmCursor
                       db !EquipTeefaSarah, $00

           NoHornyBat: db $10 : dl Details_Text_Setup
                       db "This is why we can't", $0D
                       db "have nice things..."
                       db !BtmCursor
                       db !EquipTeefaSarah, $00

            SwordNone: db $10 : dl Details_Text_Setup
                       db "Hidden item", $00
                       
          SoftLeather: db $10 : dl Details_Text_Setup
                       db "Relatively soft armor", $0D
                       db "made from tanned", $0D
                       db "leather."
                       db !BtmCursor
                       db !EquipAll, $00
                       
          HardLeather: db $10 : dl Details_Text_Setup
                       db "Sturdy armor made", $0D
                       db "from thick layers of", $0D
                       db "leather."
                       db !BtmCursor
                       db !EquipAll, $00
                       
             RingMail: db $10 : dl Details_Text_Setup
                       db "A coat made from", $0D
                       db "linked metal rings."
                       db !BtmCursor
                       db !EquipRooksSarahAxs, $00
                       
            ScaleMail: db $10 : dl Details_Text_Setup
                       db "Armor made of small", $0D
                       db "metallic scales sewn", $0D
                       db "together."
                       db !BtmCursor
                       db !EquipNotTeefa, $00
                       
            ChainMail: db $10 : dl Details_Text_Setup
                       db "Armor made of strong", $0D
                       db "steel wires braided", $0D
                       db "together in a chain-", $0D
                       db "like fashion."
                       db !BtmCursor
                       db !EquipRooksSarahAxs, $00
                       
           BreastMail: db $10 : dl Details_Text_Setup
                       db "Chainmail with a", $0D
                       db "breastplate worn", $0D
                       db "on top."
                       db !BtmCursor
                       db !EquipArwin, $00
                       
          BreastPlate: db $10 : dl Details_Text_Setup
                       db "Armor made from sheet", $0D
                       db "metal to protect the", $0D
                       db "chest."
                       db !BtmCursor
                       db !EquipRooksSarahArwin, $00
                       
             SeamMail: db $10 : dl Details_Text_Setup
                       db "Chainmail fastened", $0D
                       db "with metal splints."
                       db !BtmCursor
                       db !EquipRooksSarahAxs, $00
                       
            PlateMail: db $10 : dl Details_Text_Setup
                       db "Extravagant armor", $0D
                       db "that covers the wearer", $0D
                       db "in sheet metal plates."
                       db !BtmCursor
                       db !EquipRooksAxs, $00
                       
         MithrilChain: db $10 : dl Details_Text_Setup
                       db "Chainmail made of", $0D
                       db "magical silver."
                       db !BtmCursor
                       db !EquipRooksAxs, $00
                       
         MithrilPlate: db $10 : dl Details_Text_Setup
                       db "Chainmail with a", $0D
                       db "mythril breastplate", $0D
                       db "for increased defense."
                       db !BtmCursor
                       db !EquipRooksArwin, $00
                       
          MithrilMail: db $10 : dl Details_Text_Setup
                       db "Suit of armor that", $0D
                       db "covers the body in a", $0D
                       db "thick layer of mythril.",$0D
                       db "(", !Shield, "Attr Wind)"
                       db !BtmCursor
                       db !EquipRooksAxs, $00
                       
            DemonMail: db $10 : dl Details_Text_Setup
                       db "Black armor said to", $0D
                       db "be the transmuted", $0D
                       db "form of a devil.", $0D
                       db "(", !Shield, "Attr Earth)"
                       db !BtmCursor
                       db !EquipAxs, $00
                       
           DragonMail: db $10 : dl Details_Text_Setup
                       db "Leather armor made with", $0D
                       db "dragon scales said to", $0D
                       db "be stronger than steel."
                       db !BtmCursor
                       db !EquipRooks, $00
                       
           MagicPlate: db $10 : dl Details_Text_Setup
                       db "A breastplate imbued", $0D
                       db "with magic for", $0D
                       db "exceptionally improved", $0D
                       db "defense."
                       db !BtmCursor
                       db !EquipRooksArwin, $00
                       
            MagicMail: db $10 : dl Details_Text_Setup
                       db "Full body armor infused", $0D
                       db "with magic to", $0D
                       db "maximize defense."
                       db !BtmCursor
                       db !EquipRooksArwin, $00
                       
           EarthPlate: db $10 : dl Details_Text_Setup
                       db "Armor made by the", $0D
                       db "god of earth from a", $0D
                       db "mysterious mineral.", $0D
                       db "(", !Shield, "Attr Earth)"
                       db !BtmCursor
                       db !EquipArwin, $00
                       
           GrandArmor: db $10 : dl Details_Text_Setup
                       db "The legendary hero's", $0D
                       db "strongest armor."
                       db !BtmCursor
                       db !EquipRooks, $00
                       
          RococoArmor: db $10 : dl Details_Text_Setup
                       db "Expensive armor adorned", $0D
                       db "with diamonds, gold,", $0D
                       db "silver, pearls and such."
                       db !BtmCursor
                       db !EquipAll, $00
                       
                 Robe: db $10 : dl Details_Text_Setup
                       db "A priest's robe worn", $0D
                       db "by magic-users."
                       db !BtmCursor
                       db !EquipTeefaSarah, $00
                       
           SilverRobe: db $10 : dl Details_Text_Setup
                       db "A thick priest's robe", $0D
                       db "made from magic silver", $0D
                       db "filament."
                       db !BtmCursor
                       db !EquipTeefaSarah, $00
                       
            WhiteRobe: db $10 : dl Details_Text_Setup
                       db "A vestment worn only", $0D
                       db "by the purest of", $0D
                       db "heart and strongest", $0D
                       db "of faith."
                       db !BtmCursor
                       db !EquipSarah, $00
                       
           ShamanRobe: db $10 : dl Details_Text_Setup
                       db "A vestment imbued with", $0D
                       db "holy power that protects", $0D
                       db "the wearer from wicked", $0D
                       db "thoughts."
                       db !BtmCursor
                       db !EquipSarah, $00
                       
            MagicRobe: db $10 : dl Details_Text_Setup
                       db "A vestment enchanted", $0D
                       db "with a powerful spell", $0D
                       db "of protection."
                       db !BtmCursor
                       db !EquipTeefa, $00
                       
          RobeOfValor: db $10 : dl Details_Text_Setup
                       db "The strongest vestment", $0D
                       db "that protects magic-", $0D
                       db "users."
                       db !BtmCursor
                       db !EquipTeefa, $00
                       
            ArmorNone: db $10 : dl Details_Text_Setup
                       db "Hidden item", $00
                       
              SmallSH: db $10 : dl Details_Text_Setup
                       db "A small shield used for", $0D
                       db "reassurance."
                       db !BtmCursor
                       db !EquipRooksSarahAxs, $00
                       
              LargeSH: db $10 : dl Details_Text_Setup
                       db "A large shield made of", $0D
                       db "wood and leather."
                       db !BtmCursor
                       db !EquipRooksSarahAxs, $00
                       
              SpikeSH: db $10 : dl Details_Text_Setup
                       db "A small, round shield", $0D
                       db "primarily for deflecting", $0D
                       db "enemy attacks."
                       db !BtmCursor
                       db !EquipRooksSarahAxs, $00
                       
               IronSH: db $10 : dl Details_Text_Setup
                       db "A very sturdy shield", $0D
                       db "made from a thick", $0D
                       db "iron plate."
                       db !BtmCursor
                       db !EquipRooksSarahAxs, $00
                       
            MithrilSH: db $10 : dl Details_Text_Setup
                       db "A high-grade shield", $0D
                       db "made of pure mythril.", $0D
                       db "(", !Shield, "vs Undead)"
                       db !BtmCursor
                       db !EquipRooksSarahAxs, $00
                       
             DragonSH: db $10 : dl Details_Text_Setup
                       db "A solid shield made", $0D
                       db "from dragon scales.", $0D
                       db "(", !Shield, " vs Dragons)"
                       db !BtmCursor
                       db !EquipRooks, $00
                       
              DemonSH: db $10 : dl Details_Text_Setup
                       db "A jet black shield", $0D
                       db "rumored to have been", $0D
                       db "formed from pure evil.", $0D
                       db "(", !Shield, "vs Medusa)"
                       db !BtmCursor
                       db !EquipAxs, $00
                       
              MagicSH: db $10 : dl Details_Text_Setup
                       db "A powerful shield", $0D
                       db "imbued with magical", $0D
                       db "strength."
                       db !BtmCursor
                       db !EquipSarah, $00
                       
             CaesarSH: db $10 : dl Details_Text_Setup
                       db "A legendary shield", $0D
                       db "said to conceal a", $0D
                       db "great power."
                       db !BtmCursor
                       db !EquipRooks, $00
                       
          GrandShield: db $10 : dl Details_Text_Setup
                       db "The legendary hero's", $0D
                       db "strongest shield."
                       db !BtmCursor
                       db !EquipRooks, $00
                       
             CursedSH: db $10 : dl Details_Text_Setup
                       db "A fearsome shield that", $0D
                       db "contains the resentment", $0D
                       db "of the dead."
                       db !BtmCursor
                       db !EquipRooksSarahAxs, $00
                       
             Talisman: db $10 : dl Details_Text_Setup
                       db "A simple protective", $0D
                       db "bracelet."
                       db !BtmCursor
                       db !EquipTeefaArwin, $00
                       
         RuneGauntlet: db $10 : dl Details_Text_Setup
                       db "A metal bracelet", $0D
                       db "engraved with runes", $0D
                       db "of protection."
                       db !BtmCursor
                       db !EquipTeefaArwin, $00
                       
      MithrilGauntlet: db $10 : dl Details_Text_Setup
                       db "A bracelet made from", $0D
                       db "magical silver.", $0D
                       db "(", !Shield, "vs Undead)"
                       db !BtmCursor
                       db !EquipTeefaArwin, $00
                       
        MagicGauntlet: db $10 : dl Details_Text_Setup
                       db "A bracelet sealed with", $0D
                       db "magical power that", $0D
                       db "protects the wearer."
                       db !BtmCursor
                       db !EquipTeefaArwin, $00
                       
       SpiritGauntlet: db $10 : dl Details_Text_Setup
                       db "A bangle possessed", $0D
                       db "by a spirit who", $0D
                       db "helps the wearer."
                       db !BtmCursor
                       db !EquipTeefaArwin, $00
                       
         MoonGauntlet: db $10 : dl Details_Text_Setup
                       db "A bracelet given to", $0D
                       db "a hero during the", $0D
                       db "twilight of the gods.", $0D
                       db "(", !Shield, "vs Giants)"
                       db !BtmCursor
                       db !EquipArwin, $00
                       
       CursedGauntlet: db $10 : dl Details_Text_Setup
                       db "A bangle said to", $0D
                       db "have been made by", $0D
                       db "gathering the souls", $0D
                       db "of the dying."
                       db !BtmCursor
                       db !EquipTeefaArwin, $00
                       
           AmuletNone: db $10 : dl Details_Text_Setup
                       db "Hidden item", $00
                       
           SecretRing: db $10 : dl Details_Text_Setup
                       db "A ring that helps you", $0D
                       db "feel at ease the more", $0D
                       db "you travel."
                       db !BtmCursor
                       db !EquipAll, $00
                       
             LifeRing: db $10 : dl Details_Text_Setup
                       db "A ring that relieves", $0D
                       db "fatigue and helps you", $0D
                       db "feel refreshed while", $0D, "traveling."
                       db !BtmCursor
                       db !EquipAll, $00
                       
         EuhancerRing: db $10 : dl Details_Text_Setup
                       db "A ring said to improve", $0D
                       db "the wearer's thinking."
                       db !BtmCursor
                       db !EquipAll, $00
                       
      RingInspiration: db $10 : dl Details_Text_Setup
                       db "A ring rumored to", $0D
                       db "improve your morale", $0D
                       db "every time you fight."
                       db !BtmCursor
                       db !EquipAll, $00
                       
            PeaceRing: db $10 : dl Details_Text_Setup
                       db "A ring that calms the", $0D
                       db "wearer so they will no", $0D
                       db "longer tremble in fear."
                       db !BtmCursor
                       db !EquipAll, $00
                       
          AncientRing: db $10 : dl Details_Text_Setup
                       db "A ring imbued with an", $0D
                       db "ancient power that", $0D
                       db "resists petrification."
                       db !BtmCursor
                       db !EquipAll, $00
                       
           RingOfLife: db $10 : dl Details_Text_Setup
                       db "A ring infused with", $0D
                       db "holy power that", $0D
                       db "protects the wearer", $0D
                       db "from disaster."
                       db !BtmCursor
                       db !EquipAll, $00
                       
          RingOfValor: db $10 : dl Details_Text_Setup
                       db "A ring that gives", $0D
                       db "you courage and makes", $0D
                       db "you less afraid of", $0D
                       db "some attacks."
                       db !BtmCursor
                       db !EquipAll, $00
                       
           RingOfHope: db $10 : dl Details_Text_Setup
                       db "A ring said to bring", $0D
                       db "its wearer a surge of", $0D
                       db "self-confidence."
                       db !BtmCursor
                       db !EquipAll, $00
                       
        SparklingRing: db $10 : dl Details_Text_Setup
                       db "A ring that brings", $0D
                       db "its wearer great", $0D
                       db "wisdom."
                       db !BtmCursor
                       db !EquipAll, $00
                       
          ShiningRing: db $10 : dl Details_Text_Setup
                       db "A ring said to bring", $0D
                       db "the wearer brilliant", $0D
                       db "knowledge and", $0D
                       db "understanding."
                       db !BtmCursor
                       db !EquipAll, $00
                       
        RingAmazement: db $10 : dl Details_Text_Setup
                       db "A ring that will cause", $0D
                       db "your body to move", $0D
                       db "unconsciously."
                       db !BtmCursor
                       db !EquipAll, $00
                       
     RingAstonishment: db $10 : dl Details_Text_Setup
                       db "A ring that allows you", $0D
                       db "to spot enemy movements", $0D
                       db "remarkably well."
                       db !BtmCursor
                       db !EquipAll, $00
                       
          CrookedRing: db $10 : dl Details_Text_Setup
                       db "A ring that strengthens", $0D
                       db "the wearer's body."
                       db !BtmCursor
                       db !EquipAll, $00
                       
          TwistedRing: db $10 : dl Details_Text_Setup
                       db "A ring that brings forth", $0D
                       db "power from deep within", $0D
                       db "the wearer."
                       db !BtmCursor
                       db !EquipAll, $00
                       
            GrandRing: db $10 : dl Details_Text_Setup
                       db "A ring that awakens the", $0D
                       db "power to surpass one's", $0D
                       db "limits."
                       db !BtmCursor
                       db !EquipAll, $00
                       
            CharmRing: db $10 : dl Details_Text_Setup
                       db "A ring that is said to", $0D
                       db "contain the power to", $0D
                       db "draw anyone into", $0D
                       db "obsession."
                       db !BtmCursor
                       db !EquipAll, $00

      TiamatRepellent: db $10 : dl Details_Text_Setup
                       db "Tiamats hate this smell!", $0D
                       db "Wear this to keep your", $0D
                       db "final party."
                       db !BtmCursor
                       db !EquipRooks, $00

             RingNone: db $10 : dl Details_Text_Setup
                       db "Hidden item", $00

assert pc() <= $88C9F4  ;88C93E: original Status/Ability screen (revert if fucked!)
padbyte $FF     ; Clear unused original text, if necessary
pad $88C9F4     ;88C9F4: don't overwrite the spirit status screen
