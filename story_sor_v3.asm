;Note: Arcana uses the quote character (") in speech.
;Because asar strings can't contain ("), $22 is used instead.
;This avoids a case-by-case issue involving commas.

; I think I overwrote the ellipses $5F with the magic shield character. Uh, oops?

org $8C9CF8    ;Start of extra free space
;org $8CA010     ;Start of main script
SCRIPT_001: db $10 : dl CLEAR
            db $10 : dl MACRO_119
            db "Rooks was living a",$0D
            db "peaceful life on his own",$0D
            db "in the village of Galia."
            db $10 : dl WAIT_NEWLINE
            db "His parents, who fought in",$0D
            db "the rebellion, used their",$0D
            db "magic to defend the town",$0D
            db "from Galneon's evil army."
            db $10 : dl WAIT_NEWLINE
            db "As the villagers escaped,",$0D
            db "his parents and a small",$0D
            db "group of soldiers stayed",$0D
            db "to protect the village."
            db $10 : dl WAIT_NEWLINE
            db "They waited desperately",$0D
            db "for reinforcements, but a",$0D
            db "friend betrayed them and",$0D
            db "they met a tragic end."
            db $10 : dl WAIT_NEWLINE
            db $10 : dl CLEAR
            db "Today marks ten years",$0D
            db "since that horrible night."
            db $10 : dl WAIT_NEWLINE
            db "Young Rooks was left with",$0D
            db "a single spirit card as a",$0D
            db "keepsake of his parents."
            db $10 : dl WAIT_NEWLINE
            db "He trains in the art of",$0D
            db "the cards, ",$22,"Arcana,",$22,$0D
            db "trying to remember how",$0D
            db "his parents used them,"
            db $10 : dl WAIT_NEWLINE
            db "as the last in the line",$0D
            db "of Card Masters."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_002: db $10 : dl CLEAR
            db $10 : dl MACRO_119 : db $0D
            db $22,"You seem well.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"What? Who's there?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_003: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$06    ;Slow text
            db $22,"....Alan?    ",$0D
            db $05,$01,$01    ;Normal text speed
            db "Is it really you?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"I haven't seen you since",$0D
            db " you were a little boy.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"...Yes, you're right.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"What's wrong? Aren't",$0D
            db " you happy to see me?"
            db $10 : dl CONTINUE_ARIEL
            db " Our fathers were",$0D
            db " two of the Three",$0D
            db " Knights of Lexford,",$0D
            db " weren't they?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"But, your father took",$0D
            db " Galneon's side. He's the",$0D
            db " reason my parents...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"I am nothing like",$0D
            db " my father.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"...Fine, let's not",$0D
            db " talk about that."
            db $10 : dl WAIT_NEWLINE
            db " By the way, who is",$0D
            db " that behind you?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_004: db $10 : dl DISPLAY_ARIEL
            db $22,"She is Teefa,",$0D
            db " my subordinate.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db $22,"Nice to meet you.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"Actually, I'm glad I",$0D
            db " finally found you."
            db $10 : dl CONTINUE_ARIEL
            db " There's something",$0D
            db " I wanted to ask you.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"What is it?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"You know how the",$0D
            db " number of monsters has",$0D
            db " increased lately?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Yeah... it's strange.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"I was looking into the",$0D
            db " cause, and finally found",$0D
            db " a source."
            db $10 : dl CONTINUE_ARIEL
            db " There's an altar to an evil",$0D
            db " religion at Balnea Temple."
            db $10 : dl CONTINUE_ARIEL
            db " It seems they're calling",$0D
            db " evil spirits there.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Then no matter what,",$0D
            db " we must seal the gateway",$0D
            db " to the spirit world.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"But the only one with",$0D
            db " that ability is you now,",$0D
            db " Rooks the Card Master."
            db $10 : dl CONTINUE_ARIEL
            db " Will you do it for us?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"...Alright,",$0D
            db " I'll give it a try.",$0D
            db " Are you ready to go?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"No, sorry.",$0D
            db " I just remembered."
            db $10 : dl CONTINUE_ARIEL
            db " I wish I could join you,",$0D
            db " but I have something",$0D
            db " important to do."
            db $10 : dl CONTINUE_ARIEL
            db " Please take Teefa",$0D
            db " with you instead.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db $22,"Don't worry, I also",$0D
            db " know the way to",$0D
            db " the temple.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"I'm counting on you,",$0D
            db " Rooks. Or should I say,",$0D
            db " Rooks the Card Master!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Teefa",$0D
            db "joins the party."
            db $1B,$01,$FF
            db $00

;End of Chapter 1
SCRIPT_005: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Oww!",$0D
            db " Something stung me.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_TEEFA
            db $22,"That's strange,",$0D
            db " there aren't any",$0D
            db " enemies here.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Must've been the wind.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_006: db $10 : dl CLEAR
            db $10 : dl DISPLAY_AXS
            db $22,"Who are you two?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SORCERER
            db $22,"You're not Galneon's",$0D
            db " minions, are you?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"No, we're here to-",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_TEEFA
            db $22,"Silence!",$0D
            db " Not another word.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_007: db $10 : dl MACRO_119
            db $1D
            db $1B,$01,$01
            db "Axs",       $08,$64,"*1",$0D
            db "The Priest",$08,$64,"*1"
            db $7F
            db $10 : dl MACRO_119
            db $05,$FF,$3C
            db $1D
            db "Teefa",$0D
            db "cast the spell of",$0D
            db "Paralyze Spark."
            db $05,$FF,$28
            db $0D
            db $1B,$01,$02
            db $00

SCRIPT_008: db $10 : dl MACRO_119
            db $1D
            db "Axs has",$0D
            db "been paralyzed.",$0D
            db $00

SCRIPT_009: db "The Priest has",$0D
            db "been paralyzed."
            db $00

SCRIPT_010: db $10 : dl MACRO_119
            db $1C
            db "The enemy has fallen.",$0D
            db $7F
            db $1B,$01,$FF
            db $00

SCRIPT_011: db $10 : dl CLEAR
            db $10 : dl DISPLAY_TEEFA
            db $05,$01,$08     ;Slow text
            db $22,"This sword..."
            db $1B,$00,$FE,$0D ;Clear portrait
            db $05,$01,$02     ;Regular speed text
            db $1B,$00,$04     ;Show evil eyes
            db " is now mine!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$0A
            db $0C
            db $00

SCRIPT_012: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Wait a minute!",$0D
            db " Were these people",$0D
            db " really controlling the",$0D
            db " monsters?"
            db $10 : dl WAIT_NEWLINE
            db " And, what on earth",$0D
            db " is that sword?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA_RED
            db $22,"I came here to take",$0D
            db " this sword.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"What did you say?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_013: db $10 : dl DISPLAY_ARIEL
            db $22,"Allow me to explain",$0D
            db " things from here.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$0C
            db $10 : dl PROMPT_ROOKS
            db $22,"Alan!",$0D
            db " When did you get here?"
            db $10 : dl WAIT_NEWLINE
            db " What is the meaning of",$0D
            db " all this?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"I have learned how",$0D
            db " to control Rimsala,",$0D
            db " the Evil Empress.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Rimsala? You mean..."
            db $10 : dl WAIT_NEWLINE
            db " ...That ancient legend",$0D
            db " about the Reign of Evil",$0D
            db " ruling over the land?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"That's right. In this",$0D
            db " world, people live in fear",$0D
            db " not only of monsters,",$0D
            db " but unending wars."
            db $10 : dl CONTINUE_ARIEL
            db " This madness won't stop",$0D
            db " until someone gains",$0D
            db " control of the situation,",$0D
            db " don't you think?"
            db $10 : dl CONTINUE_ARIEL
            db " We want to unify every",$0D
            db " nation in the world"
            db $10 : dl CONTINUE_ARIEL
            db " and build a utopia",$0D
            db " where nobody is able to",$0D
            db " disturb the peace."
            db $10 : dl CONTINUE_ARIEL
            db " To do that, we will",$0D
            db " need great power."
            db $10 : dl CONTINUE_ARIEL
            db " One, who is strong",$0D
            db " enough to suppress all",$0D
            db " who might oppose us."
            db $10 : dl CONTINUE_ARIEL
            db " This Crystal Sword is",$0D
            db " essential to controlling",$0D
            db " Rimsala. We will have",$0D
            db " her stop the wars.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Don't tell me you",$0D
            db " two are helping Galneon!",$0D
            db " That priest was right.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"So you figured that out?"
            db $10 : dl CONTINUE_ARIEL
            db " How about it, Rooks, can",$0D
            db " we count on your help?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $01,$00,$14    ;Move cursor
            db $1C
            db $08,$0A,"No way!"
            db $08,$52,"Yes, I'll",$0D
            db $08,$52," help."
            db $1B,$01,$FF
            db $00

SCRIPT_014: db $10 : dl PROMPT_ROOKS
            db $22,"You're making",$0D
            db " a mistake!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"I see..."
                    ;JP adds 2 portrait changes here, but I don't see anything.
            db $10 : dl CONTINUE_ARIEL
            db " What a pity to have",$0D
            db " to do this to a",$0D
            db " childhood friend."
            db $10 : dl CONTINUE_ARIEL
            db " If only you weren't",$0D
            db " a Card Master.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_015: db $10 : dl PROMPT_ROOKS
            db $22,"Is it really OK?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"Yeah. But...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"But?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"There's still one",$0D
            db " problem with that."
            db $10 : dl CONTINUE_ARIEL
            db " There's one person who",$0D
            db " can get in the way of",$0D
            db " this plan,"
            db $10 : dl CONTINUE_ARIEL
            db " and that's someone",$0D
            db " whose unique skill can",$0D
            db " stop Rimsala and seal",$0D
            db " her away again."
            db $10 : dl CONTINUE_ARIEL
            db $05,$01,$04
            db " Yes, Rooks,",$0D
            db " I'm talking about you.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_016: db $10 : dl MACRO_119
            db $1D
            db "Alan", $08,$64,"*1",$0D
            db "Teefa",$08,$64,"*1"
            db $7F
            db $1B,$01,$FF
            db $00

SCRIPT_017: db $10 : dl CLEAR
            db $05,$FF,$3C
            db "Rooks attacks!",$0D
            db $1D
            db $0D
            db $1B,$01,$14
            db "Rooks",$0D
            db $05,$01,$06      ;Slow text
            db $22,"What...? ",$0D
            db $05,$01,$02      ;Normal text
            db " What's going on?",$7F,$0D
            db $05,$01,$06      ;Slow text
            db " My body",$0D
            db $05,$01,$02      ;Normal text
            db " won't move!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA_RED
            db $22,"Heehee, I stung you",$0D
            db " with a poisoned needle",$0D
            db " just a moment ago."
            db $10 : dl CONTINUE_TEEFA
            db " Looks like it's starting",$0D
            db " to take effect.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"No hard feelings.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_018: db $1B,$00,$2A
            db $10 : dl MACRO_119
            db $1C
            db "Alan ",$0D
            db $22,"Die, Rooks!",$22
            db $10 : dl WAIT_NEWLINE
            db $1B,$00,$2C
            db $10 : dl MACRO_119
            db $1C
            db "Priest",$0D
            db $22,"Watch out!",$22
            db $10 : dl WAIT_NEWLINE
            db $1B,$00,$FF
            db $1B,$01,$29
            db $10 : dl MACRO_119
            db $1C
            db "The Priest has",$0D
            db "cast the spell of",$0D
            db "Summon Fire Spirit."
            db $05,$FF,$3C
            db $0D
            db $1B,$01,$2A
            db $00

SCRIPT_019: db $10 : dl MACRO_119
            db $1C
            db "Alan suffered ",$0D
            db $06,$0E,"252 ",$06,$0D,"points damage."
            db $00

SCRIPT_020: db $10 : dl MACRO_119
            db $1C
            db "Teefa suffered",$0D
            db $06,$0E,"239 ",$06,$0D,"points damage."
            db $05,$FF,$5A
            db $0D
            db $10 : dl MACRO_119
            db $1B,$01,$3C
            db $1C
            db "Alan"
            db $05,$FF,$3C
            db " ran away.",$0D
            db $1B,$01,$3D
            db $1C
            db "Teefa ran away.",$0D
            db $7F
            db $10 : dl DISPLAY_ARIEL
            db $22,"What a nuisance.",$0D
            db " We'll meet again...",$0D
            db " if you're still alive.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$06
            db $22,"Ugh...",$0D
            db " You bastard...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

;Start of Chapter 2
SCRIPT_021: db $10 : dl CLEAR
            db $1C
            db "Rooks",$0D, $05,$01,$04
            db $22,"..Mmm...",$22
            db $7F
            db $10 : dl MACRO_119
            db $0D
            db $22,"Sir Axs, he just",$0D
            db "woke up!",$22
            db $7F
            db $10 : dl PROMPT_ROOKS
            db $22,"Where is this...?",$0D
            db " Who... are you?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $0D
            db $22,"Me? I'm Sarah.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Sarah?",$0D
            db " Where have I heard",$0D
            db " that name before...?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Axs",$0D, $05,$01,$01
            db $22,"The one sitting there...",$7F,$0D
            db " is Princess Sarah,",$0D
            db " the orphaned daughter of",$0D
            db " the late King Wagnall.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_022: db $10 : dl PROMPT_ROOKS
            db "(",$22,"Ah, he was there",$0D
            db " when...",$22,")"
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"You seem to be in",$0D
            db " good shape now.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$04
            db $22,"Yeah.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$01
            db $22,"What was that all",$0D
            db " about, anyway?"
            db $10 : dl WAIT_NEWLINE
            db " If you don't mind,",$0D
            db " can you fill me in?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Hmm"
            db $1B,$00,$FE
            db $05,$01,$08
            db ".....",$0D
            db $1B,$00,$08
            db $05,$01,$01
            db " Sure I can."
            db $10 : dl CONTINUE_AXS
            db " It's already been",$0D
            db " ten years."
            db $10 : dl CONTINUE_AXS
            db " When that bastard",$0D
            db " Galneon started",$0D
            db " his rebellion,"
            db $10 : dl CONTINUE_AXS
            db " the late King Wagnall,",$0D
            db " with his last words,",$0D
            db " entrusted me with young",$0D
            db " Princess Sarah's care."
            db $10 : dl CONTINUE_AXS
            db " From that day on, I",$0D
            db " swore to defeat Galneon,"
            db $10 : dl CONTINUE_AXS
            db " and rebuild the kingdom",$0D
            db " with the king's heirs",$0D
            db " as the rightful rulers."
            db $10 : dl CONTINUE_AXS
            db " Galneon sold his soul",$0D
            db " to the darkness.",$0D
            db " He murdered the king,",$0D
            db " and on top of that..."
            db $10 : dl CONTINUE_AXS
            db " he is also planning",$0D
            db " to summon the Evil",$0D
            db " Empress using an",$0D
            db " ancient ritual."
            db $10 : dl CONTINUE_AXS
            db " That's why Alan stole",$0D
            db " the Crystal Sword."
            db $10 : dl CONTINUE_AXS
            db " We must prevent the",$0D
            db " Evil Empress's",$0D
            db " resurrection no",$0D
            db " matter what.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"You were guarding",$0D
            db " the Crystal Sword",$0D
            db " there, weren't you?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Yeah, that's right."
            db $10 : dl CONTINUE_AXS
            db " By the way, can you",$0D
            db " use that card?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"It's a keepsake",$0D
            db " from my parents.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"The only person in",$0D
            db " this country who should",$0D
            db " know how to use them",$0D
            db " was the late Zahan."
            db $10 : dl CONTINUE_AXS
            db " I see, so you're",$0D
            db " Zahan's son?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Did you know my father?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Yes, your father and I",$0D
            db " were fellow knights.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Then, you were one of",$0D
            db " the Three Knights of",$0D
            db " Lexford?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Myself, your father,",$0D
            db " and Alan's father...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,".....",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"But what can we do",$0D
            db " to thwart Galneon's",$0D
            db " ambitions?"
            db $10 : dl CONTINUE_AXS
            db " We don't have much time.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Maybe we should ask",$0D
            db " the sage Reinoll. He",$0D
            db " might know something.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Reinoll?"
            db $05,$01,$06
            db $1B,$00,$FE
            db ".....",$0D
            db $05,$01,$01
            db $1B,$00,$08
            db " Oh right, Reinoll!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"I'll go ask him.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SALAH
            db $22,"I will come too.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"What?! It's too",$0D
            db " dangerous!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SALAH
            db $22,"I can fight too.",$0D
            db " I've been studying magic."
            db $10 : dl CONTINUE_SALAH
            db " Please, Sir Axs?",$22,$0D
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $1B,$00,$09
            db $05,$01,$06
            db $22,"....."
            db $1B,$00,$08
            db $05,$01,$01
            db "I guess it's fine.",$0D
            db " Rooks, I entrust the",$0D
            db " princess to you.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$06
            db $22,". . ."
            db $05,$01,$01
            db "I understand.",$0D
            db " Leave it to me!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Sarah",$0D
            db "joins the party.",$0D
            db $1B,$01,$FF
            db $00

SCRIPT_023: db $10 : dl CLEAR
            db $10 : dl PROMPT_SALAH
            db $22,"I hear something.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_024: db $10 : dl CLEAR
            db $10 : dl PROMPT_SALAH
            db $22,"He's being attacked by",$0D
            db " monsters!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"I'll give you a hand!",$22
            db $1B,$01,$01
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_THE_MAN
            db $22,"No need. This should",$0D
            db " finish them off!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $05,$FF,$1E
            db $0C
            db $0D
            db $10 : dl CLEAR
            db $1B,$01,$02
            db $05,$FF,$28
            db "The warrior attacks!",$0D
            db $05,$FF,$01
            db $1B,$01,$0B
            db "Chimera suffered",$0D
            db $05,$FF,$28
            db $06,$0E,"73 ",$06,$0D,"points damage.",$0D
            db $05,$FF,$50
            db "Chimera is defeated.",$0D
            db $05,$FF,$1E
            db $0C
            db $0D
            db $10 : dl CLEAR
            db $1B,$01,$02
            db $05,$FF,$28
            db "The warrior attacks!",$0D
            db $05,$FF,$01
            db "Chimera suffered",$0D
            db $1B,$01,$0C
            db $05,$FF,$28
            db $06,$0E,"81 ",$06,$0D,"points damage.",$0D
            db $05,$FF,$50
            db "Chimera is defeated.",$0D
            db $05,$FF,$1E
            db $0C
            db $0D
            db $10 : dl CLEAR
            db $1B,$01,$0D
            db $05,$FF,$01
            db "All monsters defeated.",$0D
            db $7F
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_025: db $1B,$01,$14
            db $05,$FF,$28
            db $0D
            db $10 : dl DISPLAY_THE_MAN
            db $22,"Huh? You're out for a",$0D
            db " stroll in a place full",$0D
            db " of monsters like this?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"No, that's not-",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_THE_MAN
            db $22,"Entering the",$0D
            db " Lost Forest is too",$0D
            db " dangerous for novices."
            db $10 : dl CONTINUE_DARWIN
            db " You should turn back.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"No matter what happens,",$0D
            db " we have to press on."
            db $10 : dl WAIT_NEWLINE
            db " We have important",$0D
            db " business to attend to.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_THE_MAN
            db $22,"Alright then.",$0D
            db " Stay on your guard",$0D
            db " as you proceed.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_026: db $10 : dl CLEAR
            db $05,$FF,$28
            db $0D
            db $10 : dl DISPLAY_THE_MAN
            db $22,"Wow, that's a big deal.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"You're the guy we just",$0D
            db " passed earlier?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_THE_MAN
            db $22,"I'm Darwin.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,".....?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db $22,"There's someone quite",$0D
            db " strong up ahead."
            db $10 : dl CONTINUE_DARWIN
            db " I would have been okay",$0D
            db " on my own, but I'm in",$0D
            db " a hurry and it'd take",$0D
            db " too long by myself."
            db $10 : dl CONTINUE_DARWIN
            db " What do you think?",$0D
            db " Until then, why don't",$0D
            db " we work together?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $01,$00,$14
            db $05,$FF,$01
            db $08,$0A,"Of course",$08,$52,"No way!"
            db $1B,$01,$FF
            db $00

SCRIPT_027: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Sure, let's go.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_028: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"If you'll be okay,",$0D
            db " why don't you go by",$0D
            db " yourself?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db $22,"We can help each",$0D
            db " other.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$08
            db $22,"......"
            db $05,$01,$02
            db "I guess I have no",$0D
            db " choice, but that's as",$0D
            db " far as we'll go together.",$22
            db $7F
            db $10 : dl DISPLAY_DARWIN
            db $22,"I'm indebted to you.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_029: db $10 : dl MACRO_119
            db $1C
            db "Darwin",$0D
            db "joins the party."
            db $00

SCRIPT_030: db $10 : dl CLEAR
            db $10 : dl MACRO_119
            db $1D
            db "You have obtained",$0D
            db "the Fire Spirit."
            db $1B,$01,$FF
            db $00

SCRIPT_031: db $10 : dl PROMPT_ROOKS
            db $22,"The Fire Spirit...",$0D
            db " (I should be able to",$0D
            db " call it now.)",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db $22,"So even the Spirits",$0D
            db " are attacking people?",$0D
            db " That can't be...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Maybe the whole world",$0D
            db " is going crazy.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_032: db $10 : dl DISPLAY_DARWIN
            db $22,"Sorry to cut off the",$0D
            db " conversation, but...",$22,$0D
            db $22,"I have to go now.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Be careful.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db $22,"I hope we meet again",$0D
            db " if we have the chance.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

;Outside Reinoll's house
SCRIPT_033: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Excuse me.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Reinoll",$0D, $05,$01,$01
            db $22,"Who is it? I'm busy.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_034: db $10 : dl DISPLAY_REINOLL
            db $22,"Ah, Rooks!",$0D
            db " It's been a long time."
            db $10 : dl CONTINUE_REINOLL
            db " Oh, who is this?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db $22,"My name is Sarah.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_REINOLL
            db $22,"Sarah!",$0D
            db " By any chance,",$0D
            db " are you the late",$0D
            db " King Wagnall's...?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db $22,"Yes.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_REINOLL
            db $22,"Princess, I always",$0D
            db " thought you'd gone",$0D
            db " missing. What a relief",$0D
            db " to see you're safe."
            db $10 : dl CONTINUE_REINOLL
            db " If I remember correctly,",$0D
            db " the princesses were",$0D
            db " twins.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db $22,"My sister is...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_REINOLL
            db $22,"Sorry, it seems like",$0D
            db " I asked about something",$0D
            db " I shouldn't have.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db $22,"No, don't worry about it.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_REINOLL
            db $22,"I must be getting",$0D
            db " rude in my old age.",$0D
            db " That's no good."
            db $10 : dl CONTINUE_REINOLL
            db " There's no point in",$0D
            db " standing around and",$0D
            db " talking, so let's go",$0D
            db " inside...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

;Entered Reinoll's house
SCRIPT_035: db $10 : dl DISPLAY_BIG_REINOLL
            db $22,"Yes, the Evil",$0D
            db " Empress.",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_ROOKS
            db $22,"I thought you might know",$0D
            db " something...",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl DISPLAY_BIG_REINOLL
            db $22,"I don't know the details",$0D
            db " either, but in order to",$0D
            db " defeat Rimsala we need",$0D
            db " the four Spirits"
            db $10 : dl CONTINUE_BIG_REINOLL
            db " and the three",$0D
            db " Sacred Treasures.",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_ROOKS
            db $22,"Spirits, and",$0D
            db " Sacred Treasures.",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl DISPLAY_BIG_REINOLL
            db $22,"That's right."
            db $10 : dl WAIT_BIG_REINOLL
            db $1B,$01,$FF
            db $00

;Fade out to Seven MacGuffins cutscene
SCRIPT_036: db " The 4 spirits",$0D
            db " are Wind, Fire,",$0D
            db " Water, and Earth..."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_037: db " The 3 Sacred Treasures",$0D
            db " are the Spirit Sword,",$0D
            db " the Enchanted Jewel,",$0D
            db " and the Crystal Sword."
            db $10 : dl WAIT_NEWLINE
            db " They are all necessary",$0D
            db " for the Seal of Rimsala.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

;Fade back to Reinoll's house
SCRIPT_038: db $22,"Just as the legendary",$0D
            db " hero prevailed.",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_ROOKS
            db $22,"The hero Fanas?",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl DISPLAY_BIG_REINOLL
            db $22,"The only people who",$0D
            db " can do that are those",$0D
            db " who have the same",$0D
            db " ability as Fanas."
            db $10 : dl CONTINUE_BIG_REINOLL
            db $22,"That's right, only a",$0D
            db " Card Master can do it"
            db $1B,$00,$FE
            db ".....",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_ROOKS
            db $22,".....",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl DISPLAY_BIG_REINOLL
            db $22,"Oh, that's right."
            db $10 : dl CONTINUE_BIG_REINOLL
            db " Isn't Princess Sarah",$0D
            db " supposed to have the",$0D
            db " Enchanted Jewel?",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_SALAH
            db $22,"Yes, the Jewel is",$0D
            db " hidden somewhere.",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_ROOKS
            db $22,"What do you mean,",$0D
            db " somewhere?",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_SALAH
            db $22,"The Ice Mine.",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_039: db $10 : dl DISPLAY_BIG_REINOLL
            db $22,"Did the wind just",$0D
            db " pick up? It's getting",$0D
            db " loud out there.",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_SALAH
            db $22,"I'll take a look.",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_040: db $10 : dl PROMPT_ROOKS
            db $22,"Even if we have",$0D
            db " everything,"
            db $10 : dl WAIT_NEWLINE
            db " how should we seal",$0D
            db " away the Evil Empress?",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl DISPLAY_BIG_REINOLL
            db $22,"Well then...",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl MACRO_119
            db $0D
            db $22,"Aieee!",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_ROOKS
            db $22,"Sarah!",$22
            db $10 : dl WAIT_BIG_REINOLL
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_041: db $10 : dl PROMPT_ROOKS
            db $22,"Alan! You...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"Sorry Rooks, but",$0D
            db " I'll be taking Sarah",$0D
            db " with me.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"Whoa, don't move.",$0D
            db " One more step and",$0D
            db " the princess dies."
            db $10 : dl CONTINUE_ARIEL
            db " See ya, Rooks!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_042: db $10 : dl PROMPT_ROOKS
            db $22,"Wait!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_043: db $10 : dl PROMPT_ROOKS
            db $22,"Alan!!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $0D
            db $22,"Master Alan has already",$0D
            db " left.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Who are you?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$02
            db $10 : dl DISPLAY_ZEREL
            db $22,"Master Alan's first",$0D
            db " subordinate, Zero."
            db $10 : dl CONTINUE_ZEREL
            db " I have come to take",$0D
            db " your life.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ZEREL
            db "Zero",$0D
            db $22,"Get ready!!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

;org $8CC871   ;Big Reinoll macro
DISPLAY_BIG_REINOLL:  db $1B,$00,$19
                      db $05,$FF,$14
                      db $0C
                      db $0D
                      db $01,$00,$06
                      db "Reinoll"
                      db $05,$01,$01
                      db $0D
                      db $1B,$00,$18
                      db $00

CONTINUE_BIG_REINOLL: db $1B,$00,$FE
                      db $7F
                      db $0D
                      db $1B,$00,$18
                      db $00

WAIT_BIG_REINOLL:     db $1B,$00,$FE
                      db $7F
                      db $0D
                      db $00

SCRIPT_047: db $10 : dl CLEAR
            db $05,$01,$14
            db $20
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$04
            db $22,"Sarah....",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

;Start of Chapter 3
SCRIPT_048: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Where did Axs go",$0D
            db " at such an important",$0D
            db " time?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_049: db $10 : dl PROMPT_ROOKS
            db $22,"Ah! There's a scroll on",$0D
            db " the desk.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_050: db $10 : dl MACRO_119
            db $0D,"To Sarah:"
            db $10 : dl WAIT_NEWLINE
            db "I'm going to the Ice Mine.",$0D
            db "Wait here patiently until",$0D
            db "I get back.",$0D
            db $08,$78,"Axs"
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$02
            db $10 : dl PROMPT_ROOKS
            db $22,"The Ice Mine...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_051: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Axs!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1D
            db "Rooks",$0D
            db "cast the spell of",$0D
            db "Unpetrify."
            db $1B,$01,$FF
            db $00

SCRIPT_052: db $10 : dl MACRO_119
            db $1D
            db "Axs",$0D
            db "has recovered",$0D
            db "from Petrified."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Rooks!",$0D
            db " Thank you for saving me.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"No problem. But",$0D
            db " more importantly...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Is this about Sarah?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"How did you know?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"I found Alan, so I",$0D
            db " followed him here. But",$0D
            db " I got caught, and put",$0D
            db " in that situation.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Sarah must have been",$0D
            db " with him.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Hmm, then he's trying",$0D
            db " to steal the",$0D
            db " Enchanted Jewel."
            db $10 : dl CONTINUE_AXS
            db " I am worried about Sarah.",$0D
            db " Let's hurry.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Axs",$0D
            db "joins the party."
            db $1B,$01,$FF
            db $00

SCRIPT_053: db $10 : dl CLEAR
            db $10 : dl PROMPT_AXS
            db $22,"You're a full-fledged",$0D
            db " adult now."
            db $10 : dl WAIT_NEWLINE
            db " This reminds me of",$0D
            db " fighting alongside Zahan.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"(Father...)",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"Oh, that's right!",$0D
            db " I should give you this.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "You have obtained",$0D
            db "the Water Spirit."
            db $1B,$01,$FF
            db $00

SCRIPT_054: db $10 : dl PROMPT_ROOKS
            db $22,"(This is Dad's...)",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"Your father gave this",$0D
            db " to me a long time ago."
            db $10 : dl WAIT_NEWLINE
            db " As you are now, you",$0D
            db " should be able to",$0D
            db " use this.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Thank you, Axs.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"Don't mention it.",$0D
            db " Let's hurry, Sarah",$0D
            db " is waiting for us!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Yeah!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_055: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"(A room of lava?)",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"This is where she",$0D
            db " hid the Enchanted",$0D
            db " Jewel.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"It's so hot",$0D
            db " in here...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_056: db $10 : dl PROMPT_ROOKS
            db $22,"Sarah!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_057: db $10 : dl DISPLAY_ARIEL
            db $22,"You're a persistent",$0D
            db " one, aren't you!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"You!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_058: db $10 : dl DISPLAY_ARIEL
            db $22,"I needed a little",$0D
            db " help from the Princess",$0D
            db " getting into this room."
            db $10 : dl CONTINUE_ARIEL
            db " Well, she put up a",$0D
            db " fight, so I put her",$0D
            db " to sleep.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,".....",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"I got the Enchanted",$0D
            db " Jewel.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS2
            db $22,"Sarah is okay.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_059: db $10 : dl DISPLAY_AXS2
            db $22,"She's just magically",$0D
            db " put to sleep.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_060: db $10 : dl DISPLAY_ARIEL
            db $22,"Sorry, I had to do",$0D
            db " it to accomplish",$0D
            db " my plan.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"What, so you're",$0D
            db " allowed to do anything",$0D
            db " if it's for the sake",$0D
            db " of your plan?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"How about it?",$0D
            db " I'll ask you again,"
            db $10 : dl CONTINUE_ARIEL
            db " would you like to",$0D
            db " join me?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"I'm not falling for",$0D
            db " a trick like that!",$22
            db $10 : dl WAIT_NEWLINE
            db $22,"You need to stop these",$0D
            db " plans of yours right",$0D
            db " now!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"If you thought about",$0D
            db " what you just said,",$0D
            db " you'd know I couldn't",$0D
            db " stop now."
            db $10 : dl CONTINUE_ARIEL
            db " The Enchanted Jewel is",$0D
            db " in my hands,"
            db $10 : dl CONTINUE_ARIEL
            db " and of course the",$0D
            db " Crystal Sword, too."
            db $10 : dl CONTINUE_ARIEL
            db " The revival of the",$0D
            db " Evil Empress is now",$0D
            db " only a matter of time."
            db $10 : dl CONTINUE_ARIEL
            db " Too bad we couldn't have",$0D
            db " worked together, Rooks.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"In that case, I'll take",$0D
            db " the Jewel by force!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_061: db $10 : dl DISPLAY_SAUZA
            db $22,"Alan, leave this to",$0D
            db " to me and hurry on.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"All right, I'll leave",$0D
            db " this to you.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$03
            db $0C
            db $05,$FF,$28
            db $0D
            db $10 : dl DISPLAY_SAUZA
            db $22,"No problem, I owe you",$0D
            db " my life!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_062: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"If I'd only been",$0D
            db " more careful, Sarah",$0D
            db " wouldn't have ended",$0D
            db " up like this...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS2
            db $22,"In any case, we",$0D
            db " need to let the",$0D
            db " princess rest.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_063: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Is Sarah all right?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"She's sleeping well",$0D
            db " now.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_064: db $10 : dl DISPLAY_ICORINA
            db $22,"There, she'll be",$0D
            db " fine soon.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Thank you.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ICORINA
            db $22,"Don't worry about it.",$0D
            db " Looks like you all had",$0D
            db " a rough time."
            db $10 : dl CONTINUE_ICORINA
            db " Axs and I have been",$0D
            db " friends for a long time."
            db $10 : dl CONTINUE_ICORINA
            db " I'll stay with Miss",$0D
            db " Sarah. If there's",$0D
            db " anything else, you",$0D
            db " can call me any time.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_065: db $10 : dl PROMPT_ROOKS
            db $22,"Alan, that bastard...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Looks like they're",$0D
            db " all set."
            db $10 : dl CONTINUE_AXS
            db " If this continues, the",$0D
            db " the Evil Empress will",$0D
            db " be resurrected."
            db $10 : dl CONTINUE_AXS
            db " This may be our last",$0D
            db " chance to stop it."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Let's go, Axs!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"You might end up",$0D
            db " losing your life."
            db $10 : dl CONTINUE_AXS
            db " Are you prepared for",$0D
            db " that?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"I know what I'm",$0D
            db " getting into."
            db $10 : dl WAIT_NEWLINE
            db " No matter what happens,",$0D
            db " we can't just let",$0D
            db " them succeed!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Like father, like son.",$0D
            db " They are probably in",$0D
            db " Limuros Tower.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Limuros Tower...?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_066: db $10 : dl CLEAR
            db $10 : dl MACRO_119
            db $0D,$22,"Keh heh heh heh.",$0D
            db " You guys are going to",$0D
            db " die here.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"What? Who is it?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_067: db $10 : dl DISPLAY_DARAMA
            db $22,"Keh heh heh heh.",$0D
            db " I should thank Galneon",$0D
            db " for summoning me from",$0D
            db " the spirit world.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_068: db $10 : dl CLEAR
            db $10 : dl MACRO_119
            db $1C
            db "You have obtained",$0D
            db "the Earth Spirit."
            db $1B,$01,$FF
            db $00

;Nice.
SCRIPT_069: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"No good!",$0D
            db " It won't open.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"Nothing we can do."
            db $10 : dl WAIT_NEWLINE
            db " Let's go back to the",$0D
            db " village for a bit. There",$0D
            db " might be another way.",$22
            db $0D
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_070: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Sarah!",$0D
            db " Are you okay?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SALAH
            db $22,"Yes, I'm fine now.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"But...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SALAH
            db $22,"I'm coming with you.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS : db $05,$01,$08
            db $22,". . . . .",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"But you're still not",$0D
            db " fully...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ICORINA
            db $22,"Take her along.",$0D
            db " She says she wants to go."
            db $10 : dl CONTINUE_ICORINA
            db " If Rooks is by your",$0D
            db " side to protect you,",$0D
            db " you'll be fine, right?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$08
            db $22,"..."
            db $05,$01,$01
            db "Let's go, Sarah.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"Hm, I guess we have",$0D
            db " no choice.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ICORINA
            db $22,"Take care!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_071: db $10 : dl PROMPT_ROOKS
            db $22,"No good.",$0D
            db " It still won't open.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db $22,"I know how to open this.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Huh? You do?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_072: db $10 : dl PROMPT_SALAH
            db $22,"I've heard that, in order",$0D
            db " to enter the inner part of",$0D
            db " the Tower of Limuros,"
            db $10 : dl WAIT_NEWLINE
            db " you need to use royal",$0D
            db " blood.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_073: db $10 : dl DISPLAY_SALAH2
            db $22,"You do it like this.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $0D,"Ouch!",$22
            db $1B,$01,$FF
            db $00

SCRIPT_074: db $10 : dl MACRO_119
            db $0D,$22,"We can go through",$0D
            db " now.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$02
            db $10 : dl PROMPT_ROOKS
            db $22,"Sarah, your hand",$0D
            db " is bleeding...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SALAH2
            db $22,"I'm all right. Let's go.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_075: db $10 : dl CLEAR
            db $10 : dl MACRO_119
            db $0D,$22,"Too bad.",$0D
            db " What you've taken is",$0D
            db " not really the",$0D
            db " Earth Spirit.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_076: db $10 : dl DISPLAY_DARAMA
            db $22,"Keh heh heh heh.",$0D
            db " We're unbeatable.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_077: db $10 : dl CLEAR
            db $10 : dl MACRO_119
            db $1C
            db "You have obtained",$0D
            db "the Earth Spirit."
            db $1B,$01,$FF
            db $00

SCRIPT_078: db $10 : dl CLEAR
            db $10 : dl PROMPT_SALAH
            db $22,"Wait! There is a door.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_079: db $10 : dl PROMPT_ROOKS
            db $22,"Can we get inside?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"Be careful! There",$0D
            db " might be a trap.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"If there's a trap,",$0D
            db " I'll jump in from here!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_080: db $10 : dl PROMPT_ROOKS
            db $22,"Alan!!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"You're amazing, you",$0D
            db " know that? Coming this",$0D
            db " far",$1B,$00,$FE,".....",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Give me the Crystal",$0D
            db " Sword and the",$0D
            db " Enchanted Jewel.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"Heh, It's too late."
            db $10 : dl CONTINUE_ARIEL
            db " The preparations for the",$0D
            db " resurrection have",$0D
            db " already begun.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"But I don't think you have",$0D
            db " the Spirit Sword.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"Teefa has arranged that",$0D
            db " perfectly for me.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"What?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db $22,"Teefa?!",$0D
            db " Where is my sister?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Huh? So the other",$0D
            db " princess was Teefa?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"I expect she's at",$0D
            db " the altar assisting with",$0D
            db " Rimsala's revival.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"I see, Teefa's blood",$0D
            db " is being used."
            db $10 : dl WAIT_NEWLINE
            db " They used blood from the",$0D
            db " Royal Family of Lexford.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"Exactly."
            db $10 : dl CONTINUE_ARIEL
            db " She's an important key",$0D
            db " in the rise of the revival",$0D
            db " of Rimsala.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$06
            db $22,"Alan...",$0D
            db $05,$01,$01
            db " I can't let you do that.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"In that case, how are",$0D
            db " you going to stop me?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"..... Axs, Sarah, let me",$0D
            db " take care of this on",$0D
            db " my own.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"Understood.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_081: db $10 : dl DISPLAY_ARIEL
            db $22,"Come on, Rooks!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_082: db $10 : dl MACRO_119
            db $1C
            db "Alan",$0D, $05,$01,$01
            db $22,"Why... don't you finish",$0D
            db " me off?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,".....",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Alan",$0D, $05,$01,$01
            db $22,"Watch out for Galneon..."
            db $10 : dl WAIT_NEWLINE
            db " His goal is neither to",$0D
            db " create a utopia nor",$0D
            db " world domination,"
            db $10 : dl WAIT_NEWLINE
            db " His goal is-",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_GALNEON
            db $22,"Alan, that's enough.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1D
            db "Galneon",$0D
            db "cast the spell of",$0D
            db "Armageddon."
            db $1B,$01,$FF
            db $00

SCRIPT_083: db $10 : dl MACRO_119
            db $1D
            db "Alan has taken ",$0D
            db $06,$0E,"207 ",$06,$0D,"points damage."
            db $0D
            db $05,$01,$5A
            db " "
            db $10 : dl MACRO_119
            db $1D
            db "Alan ",$0D,"has perished."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$06
            db $22,"Alan!"
            db $05,$01,$46
            db " ",$0D
            db $05,$01,$01
            db " Alaaan!!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_084: db $10 : dl DISPLAY_GALNEON
            db $22,"Alan,",$0D
            db " I always knew you were",$0D
            db " planning to betray me."
            db $10 : dl CONTINUE_GALNEON
            db " You have been used as a",$0D
            db " pawn, just like your",$0D
            db " father.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"You...",$0D
            db " you're Galneon!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db $22,"Are you Zahan's son?"
            db $10 : dl CONTINUE_GALNEON
            db " Do you intend to stand",$0D
            db " in my way as he did?"
            db $10 : dl CONTINUE_GALNEON
            db " Either way, I will finish",$0D
            db " you off personally, just",$0D
            db " like I did with Zahan!",$22
            db $10 : dl CONTINUE_GALNEON
            db $22,"You'll be tossed aside",$0D
            db " like an old rag like Alan.",$0D
            db " Muahahahaha!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$06
            db $22,"My father...?",$22,$0D
            db $05,$01,$01
            db $22,"What did you do to",$0D
            db " my father?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db $22,"I don't know what",$0D
            db " you were told,"
            db $10 : dl CONTINUE_GALNEON
            db " but I strangled your",$0D
            db " parents with my own",$0D
            db " hands!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_085: db $10 : dl PROMPT_GALNEON
            db $22,"We will meet again!"
            db $10 : dl WAIT_NEWLINE
            db " If you're still alive!",$0D
            db " Wahahaha!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,".....",$22,$0D
            db $22,"Galneon, you bastard!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db $22,"Rooks!",$22,$0D
            db $22,"Where are you going?!",$22
            db $1B,$01,$FF
            db $00

SCRIPT_086: db $10 : dl DISPLAY_DARWIN
            db $22,"Looks like we share",$0D
            db " the same destination.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Why are you here?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db $22,"Let me lend you",$0D
            db " a hand!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Darwin",$0D
            db "joins the party."
            db $1B,$01,$FF
            db $00

SCRIPT_087: db $10 : dl CLEAR
            db $10 : dl DISPLAY_GALNEON
            db $22,"So you're still",$0D
            db " alive, Rooks!"
            db $10 : dl CONTINUE_GALNEON
            db " Oh? Isn't that the",$0D
            db " same elf swordsman",$0D
            db " from before?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db $22,"Princess Teefa!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"You know Teefa?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db $22,"Teefa!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA_RED
            db $1B,$00,$FE
            db $22,".....",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db $22,"Wahahaha!",$0D
            db " Teefa doesn't seem to",$0D
            db " know who you are."
            db $10 : dl CONTINUE_GALNEON
            db " I don't need this",$0D
            db " woman any more!"
            db $10 : dl CONTINUE_GALNEON
            db " I give her back. Don't",$0D
            db " worry, I've taken good",$0D
            db " care of her."
            db $10 : dl CONTINUE_GALNEON
            db " Wahahaha!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_088: db $10 : dl PROMPT_DARWIN
            db $22,"Teefa, it's me Darwin.",$22,$0D
            db $22,"Are you sure you don't",$0D
            db " recognize me?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA_RED
            db $1B,$00,$FE
            db $22,".....",$0D
            db $1B,$00,$04
            db " I don't understand what",$0D
            db " you're saying!"
            db $10 : dl CONTINUE_TEEFA
            db " This will be your grave!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_089: db $10 : dl DISPLAY_TEEFA_CROUCH
            db $05,$01,$08
            db $22,"Wh"
            db $1B,$00,$FE   ;Don't talk during the dots
            db "...",$0D
            db $1B,$00,$06
            db " Where"
            db $1B,$00,$FE
            db "...",$0D
            db $1B,$00,$06
            db " am I"
            db $1B,$00,$FE
            db ".....?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"It seems that Galneon's",$0D
            db " spell has been broken.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA_CROUCH
            db $05,$01,$04
            db $22,"Darwin"
            db $1B,$00,$FE
            db "...?!",$0D
            db $1B,$00,$06
            db " Why" 
            db $1B,$00,$FE
            db "......"
            db $1B,$00,$06
            db "here"
            db $1B,$00,$FE
            db "...?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_090: db $10 : dl DISPLAY_DARWIN
            db $22,"You don't need to",$0D
            db " think about it right now.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA_CROUCH
            db $1B,$00,$FE
            db $05,$01,$04
            db $22,".....",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Take care of Teefa."
            db $10 : dl WAIT_NEWLINE
            db " I'm going on ahead.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db $05,$01,$06
            db $1B,$00,$FE
            db $22,"....."
            db $05,$01,$01
            db $1B,$00,$14
            db "Hm, be careful.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_091: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"There you are, Galneon!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db $22,"Hmm, you've done well",$0D
            db " to make it this far."
            db $10 : dl CONTINUE_GALNEON
            db " It seems you didn't care",$0D
            db " much for the gift I left",$0D
            db " behind for you.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,".....",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db $22,"Well that's fine, you",$0D
            db " get to watch me revive",$0D
            db " the Evil Empress.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Isn't it cruel to",$0D
            db " leave all of us behind?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_092: db $10 : dl DISPLAY_GALNEON
            db $22,"Oh, so Sir Axs of the",$0D
            db " Three Knights of Lexford",$0D
            db " and Princess Sarah"
            db $10 : dl CONTINUE_GALNEON
            db " have arrived as well!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$08
            db $22,"Galneon..."
            db $05,$01,$01
            db " prepare",$0D
            db " yourself for the end."
            db $10 : dl WAIT_NEWLINE
            db " I can never forgive you",$0D
            db " for what you've done!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db $22,"And how are you going",$0D
            db " to stop me?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_093: db $10 : dl PROMPT_AXS
            db $22,"Rooks! You and Sarah",$0D
            db " retreat!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_094: db $10 : dl PROMPT_ROOKS
            db $22,"Axs!!!",$22
            db $1B,$01,$FF
            db $00

SCRIPT_095: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Are you all right?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db $22,"Yes.",$0D
            db " Um"
            db $1B,$00,$FE
            db ", "
            db $1B,$00,$02
            db "my sister"
            db $1B,$00,$FE
            db "...?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"She's at Miss Icorina's.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db $22,"Oh"
            db $1B,$00,$FE  ;Don't talk
            db "...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db $05,$01,$06
            db $1B,$00,$FE  ;Don't talk
            db $22,"..."
            db $05,$01,$01
            db $1B,$00,$02  ;Talk
            db "Sorry. What I did to",$0D
            db " you was terrible"
            db $1B,$00,$FE  ;Don't talk
            db "...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"It's alright. Don't",$0D
            db " worry about it."
            db $10 : dl WAIT_NEWLINE
            db " But more importantly,",$0D
            db " how did Galneon...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db $05,$01,$06
            db $1B,$00,$FE
            db $22,".....",$22,$0D
            db $05,$01,$01
            db $1B,$00,$02
            db $22,"My father King Wagnall",$0D
            db " passed away."
            db $10 : dl CONTINUE_TEEFA2
            db " I was put in the care",$0D
            db " of Darwin."
            db $10 : dl CONTINUE_TEEFA2
            db " But one day many years",$0D
            db " ago, Galneon"
            db $1B,$00,$FE
            db "...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"It's all right...",$0D
            db " Sorry I asked about",$0D
            db " such a painful subject.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db $22,"No, it's okay"
            db $1B,$00,$FE,"...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_096: db $10 : dl PROMPT_ROOKS
            db $22,"How was it out there?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db $22,"It's fine. There",$0D
            db " was no sign of Rimsala's",$0D
            db " influence in the city.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"So, was the revival",$0D
            db " a failure then?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db $22,"No, I'm sure she",$0D
            db " has revived.",$22,$0D
            db $22,"It's just",$1B,$00,$FE,"...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Just what?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db $22,"It will take time",$0D
            db " for her to revive",$0D
            db " completely.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Really? So if things",$0D
            db " continue like this,",$0D
            db " then one day...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db $22,"Is there a way to",$0D
            db " stop her?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db $22,"If we can get",$0D
            db " the Crystal Sword,",$0D
            db " the Enchanted Jewel,"
            db $10 : dl CONTINUE_TEEFA2
            db " and the Spirit Sword",$0D
            db " back from Galneon, we",$0D
            db " might have a chance.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db $22,"There should be a",$0D
            db " connection from the",$0D
            db " castle to the tower!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Let's go!!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_097: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"...Do you have business",$0D
            db " with us?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_KARUL
            db $22,"I'm Alan's subordinate,",$0D
            db " Karul."
            db $10 : dl CONTINUE_KARUL
            db " Rooks, I thought I'd test",$0D
            db " your strength.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"I'm in a hurry.",$0D
            db " Get out of my way!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_KARUL
            db $22,"It would be easy to",$0D
            db " defeat you here.",$0D
            db " However, now that Alan",$0D
            db " is dead,"
            db $10 : dl CONTINUE_KARUL
            db " I don't really care",$0D
            db " what you do to Galneon.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db $22,"Rooks, don't worry",$0D
            db " about them. Let's",$0D
            db " move on.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_098: db $10 : dl MACRO_119
            db $1C
            db $05,$01,$01
            db "Karul",$0D
            db $05,$01,$06
            db $22,"But...",$0D
            db $05,$01,$01
            db " I will avenge Alan!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_099: db $10 : dl MACRO_119
            db $1D
            db "You have obtained",$0D
            db "the Crystal Sword."
            db $1B,$01,$FF
            db $00

SCRIPT_100: db $10 : dl PROMPT_ROOKS
            db $22,"...What a cruel world.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_TEEFA
            db $22,"Don't be so weak!"
            db $10 : dl WAIT_NEWLINE
            db " Rooks, remember what",$0D
            db " you need to do.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $05,$01,$06
            db $22,"....."
            db $05,$01,$01
            db "You're right.",$0D
            db " Let's go!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_101: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Galneon!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON2
            db $22,"Geheheheheh,",$0D
            db " it's you,",$0D
            db " gehahahaha!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Have you gone mad,",$0D
            db " Galneon?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON2
            db $22,"I finally got it!",$0D
            db " The greatest of all",$0D
            db " powers!"
            db $10 : dl CONTINUE_GALNEON2
            db " Yes, the power of a",$0D
            db " god! Muwahahahaha!"
            db $10 : dl CONTINUE_GALNEON2
            db " Divine judgement shall",$0D
            db " rain down upon all who",$0D
            db " oppose me!",$0D
            db " Die, Rooks!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_102: db $10 : dl MACRO_119
            db $1C
            db "You have obtained",$0D
            db "the Enchanted Jewel."
            db $1B,$01,$FF
            db $00

SCRIPT_103: db $10 : dl PROMPT_ROOKS
            db $22,".....",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db $22,"...Let's go.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $0D,$22,"Mm...",$0D
            db "Mwahahahaha!!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"What?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db "Galneon",$0D
            db $22,"It doesn't work...",$0D
            db " it doesn't work..."
            db $10 : dl WAIT_NEWLINE
            db " Not against me and",$0D
            db " my divine power!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_104: db $10 : dl MACRO_119
            db $1C
            db "You have obtained",$0D
            db "the Spirit Sword."
            db $1B,$01,$FF
            db $00

SCRIPT_105: db $10 : dl PROMPT_DARWIN
            db $22,"What a miserable way",$0D
            db " to go.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"What good is there",$0D
            db " in losing your humanity",$0D
            db " for power?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_106: db $10 : dl CLEAR
            db $1C
            db "Rooks",$0D
            db $22,"It's the enemy!",$22
            db $05,$FF,$3C
            db $0D
            db $10 : dl MACRO_119
            db $1D
            db "Blue Golem",$08,$64,"*1",$0D
            db "Red Golem",$08,$64,"*1"
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_107: db $10 : dl DISPLAY_AXS
            db $22,"Leave this to us",$0D
            db " and go on ahead!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Axs! You're alive!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"It will still take",$0D
            db " time before Rimsala",$0D
            db " starts to awaken."
            db $10 : dl CONTINUE_AXS
            db " If you're going to",$0D
            db " defeat her, you need",$0D
            db " to do it now! Hurry!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"...I understand.",$0D
            db " Don't die, Axs!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db $22,"Good luck, big sister!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_108: db $10 : dl CLEAR
            db $1C
            db "Rooks",$0D
            db $22,"Damn it!",$22
            db $05,$FF,$3C
            db $0D
            db $10 : dl MACRO_119
            db $1D
            db "Tiamat",$08,$64,"*1"
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db $22,"Looks like we're saying",$0D
            db " goodbye here.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Huh?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_TEEFA
            db $22,"If you don't hurry,",$0D
            db " Rimsala will begin to",$0D
            db " act!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db $22,"Be sure to defeat her!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Darwin.....",$0D
            db " Teefa.....",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db $22,"Go, Rooks!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_109: db $10 : dl PROMPT_ROOKS
            db $22,"Sorry!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_110: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"So this is Rimsala...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_111: db $10 : dl PROMPT_ROOKS
            db $22,"Ow!",$0D
            db " I have a splitting",$0D
            db " headache!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $0D,$22,".........",$0D
            db " I AM...",$0D
            db " ALL POWERFUL..."
            db $10 : dl WAIT_NEWLINE
            db " THE ONE WHO...",$0D
            db " CONTROLS",$0D
            db " EVERYTHING...",$22
            db $10 : dl WAIT_NEWLINE
            db $22,"ACCEPT... ME.",$22
            db $10 : dl WAIT_NEWLINE
            db $22,"ACCEPT... ME.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"I refuse!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $0D
            db $22,"IN THAT CASE...",$0D
            db " D I E !",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_112: db $10 : dl PROMPT_ROOKS
            db $22,"Wind of the East.",$0D
            db " Fire of the South."
            db $10 : dl WAIT_NEWLINE
            db " Water of the West.",$0D
            db " Earth of the North."
            db $10 : dl WAIT_NEWLINE
            db " All the spirit gateways,",$0D
            db " I beseech you!",$0D
            db " Close the gates of",$0D
            db " darkness! Seal!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_113: db $10 : dl PROMPT_ROOKS
            db $22,"What? It didn't work?!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_114: db $10 : dl MACRO_119
            db $1D
            db "Rimsala has revealed",$0D
            db "her true form."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_115: db $10 : dl MACRO_119
            db $1C
            db $22,"MWA HA HA!",$22,$0D
            db $1B,$01,$FF
            db $00

SCRIPT_116: db $10 : dl MACRO_119
            db "Rooks is caught offguard",$0D
            db "and is knocked out..."
            db $1B,$01,$FF
            db $00

SCRIPT_117: db $10 : dl MACRO_119
            db "Rooks hears a voice",$0D
            db "from somewhere, and",$0D
            db "realizes it's the",$0D
            db "great hero Fanas."
            db $10 : dl WAIT_NEWLINE
            db $10 : dl MACRO_119
            db "Fanas",$0D
            db $22,"Rooks...",$0D
            db " You must believe."
            db $10 : dl WAIT_NEWLINE
            db " In your strength...",$0D
            db " In everyone's strength...",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

;org $8CF7C2    ;Original location of macros
     CLEAR: db $06,$0D
            db $0C
            db $01,$00,$06
            db $03,$0E
            db $00

 MACRO_119: db $05,$FF,$14
            db $0C
            db $0D
            db $01,$00,$06
            db $05,$01,$01
            db $00

;Unused
 MACRO_120: db $05,$FF,$14
            db $0C
            db $0D
            db $01,$00,$06
            db $05,$01,$01
            db $00

PROMPT_ROOKS: db $05,$FF,$14
              db $0C
              db $0D
              db $01,$00,$06
              db "Rooks"
              db $05,$01,$01
              db $0D
              db $00

DISPLAY_ARIEL: db $1B,$00,$01
               db $05,$FF,$14
               db $0C
               db $0D
               db $01,$00,$06
               db "Alan"
               db $05,$01,$01
               db $0D
               db $1B,$00,$00
               db $00

DISPLAY_TEEFA: db $1B,$00,$03
               db $05,$FF,$14
               db $0C
               db $0D
               db $01,$00,$06
               db "Teefa"
               db $05,$01,$01
               db $0D
               db $1B,$00,$02
               db $00

PROMPT_TEEFA: db $05,$FF,$14
              db $0C
              db $0D
              db $01,$00,$06
              db "Teefa"
              db $05,$01,$01
              db $0D
              db $00

DISPLAY_TEEFA_RED: db $1B,$00,$05
                db $05,$FF,$14
                db $0C
                db $0D
                db $01,$00,$06
                db "Teefa"
                db $05,$01,$01
                db $0D
                db $1B,$00,$04
                db $00

DISPLAY_TEEFA_CROUCH: db $1B,$00,$07
                      db $05,$FF,$14
                      db $0C
                      db $0D
                      db $01,$00,$06
                      db "Teefa"
                      db $05,$01,$01
                      db $0D
                      db $1B,$00,$06
                      db $00

DISPLAY_AXS: db $1B,$00,$09
             db $05,$FF,$14
             db $0C
             db $0D
             db $01,$00,$06
             db "Axs"
             db $05,$01,$01
             db $0D
             db $1B,$00,$08
             db $00

DISPLAY_AXS2: db $1B,$00,$0B
              db $05,$FF,$14
              db $0C
              db $0D
              db $01,$00,$06
              db "Axs"
              db $05,$01,$01
              db $0D
              db $1B,$00,$0A
              db $00

DISPLAY_SORCERER: db $1B,$00,$0D
                  db $05,$FF,$14
                  db $0C
                  db $0D
                  db $01,$00,$06
                  db "Priest"
                  db $05,$01,$01
                  db $0D
                  db $1B,$00,$0C
                  db $00

DISPLAY_SALAH: db $1B,$00,$0F
               db $05,$FF,$14
               db $0C
               db $0D
               db $01,$00,$06
               db "Sarah"
               db $05,$01,$01
               db $0D
               db $1B,$00,$0E
               db $00

DISPLAY_SALAH2: db $1B,$00,$13
                db $05,$FF,$14
                db $0C
                db $0D
                db $01,$00,$06
                db "Sarah"
                db $05,$01,$01
                db $0D
                db $1B,$00,$12
                db $00

PROMPT_SALAH: db $05,$FF,$14
              db $0C
              db $0D
              db $01,$00,$06
              db "Sarah"
              db $05,$01,$01
              db $0D
              db $00

DISPLAY_THE_MAN: db $1B,$00,$15
                 db $05,$FF,$14
                 db $0C
                 db $0D
                 db $01,$00,$06
                 db "Warrior"
                 db $05,$01,$01
                 db $0D
                 db $1B,$00,$14
                 db $00

DISPLAY_DARWIN: db $1B,$00,$15
                db $05,$FF,$14
                db $0C
                db $0D
                db $01,$00,$06
                db "Darwin"
                db $05,$01,$01
                db $0D
                db $1B,$00,$14
                db $00

PROMPT_DARWIN: db $05,$FF,$14
               db $0C
               db $0D
               db $01,$00,$06
               db "Darwin"
               db $05,$01,$01
               db $0D
               db $00

DISPLAY_REINOLL: db $1B,$00,$17
                 db $05,$FF,$14
                 db $0C
                 db $0D
                 db $01,$00,$06
                 db "Reinoll"
                 db $05,$01,$01
                 db $0D
                 db $1B,$00,$16
                 db $00

DISPLAY_ZEREL: db $1B,$00,$1B
               db $05,$FF,$14
               db $0C
               db $0D
               db $01,$00,$06
               db " "
               db $05,$01,$01
               db $0D
               db $1B,$00,$1A
               db $00

PROMPT_AXS: db $05,$FF,$14
            db $0C
            db $0D
            db $01,$00,$06
            db "Axs"
            db $05,$01,$01
            db $0D
            db $00

DISPLAY_SAUZA: db $1B,$00,$29
               db $05,$FF,$14
               db $0C
               db $0D
               db $01,$00,$06
               db "Sauza"
               db $05,$01,$01
               db $0D
               db $1B,$00,$28
               db $00

DISPLAY_ICORINA: db $1B,$00,$1D
                 db $05,$FF,$14
                 db $0C
                 db $0D
                 db $01,$00,$06
                 db "Icorina"
                 db $05,$01,$01
                 db $0D
                 db $1B,$00,$1C
                 db $00

PROMPT_GALNEON: db $05,$FF,$14
                db $0C
                db $0D
                db $01,$00,$06
                db "Galneon"
                db $05,$01,$01
                db $0D
                db $00

DISPLAY_GALNEON: db $1B,$00,$23
                 db $05,$FF,$14
                 db $0C
                 db $0D
                 db $01,$00,$06
                 db "Galneon"
                 db $05,$01,$01
                 db $0D
                 db $1B,$00,$22
                 db $00

DISPLAY_GALNEON2: db $1B,$00,$25
                  db $05,$FF,$14
                  db $0C
                  db $0D
                  db $01,$00,$06
                  db "Galneon"
                  db $05,$01,$01
                  db $0D
                  db $1B,$00,$24
                  db $00

DISPLAY_DARAMA: db $1B,$00,$1F
                db $05,$FF,$14
                db $0C
                db $0D
                db $01,$00,$06
                db "Hell's Messenger, Darah"
                db $05,$01,$01
                db $0D
                db $1B,$00,$1E
                db $00

DISPLAY_KARUL: db $1B,$00,$27
               db $05,$FF,$14
               db $0C
               db $0D
               db $01,$00,$06
               db "Karul"
               db $05,$01,$01
               db $0D
               db $1B,$00,$26
               db $00

WAIT_NEWLINE: db $7F
              db $0D
              db $00

CONTINUE_ARIEL: db $1B,$00,$FE
                db $7F
                db $0D
                db $1B,$00,$00
                db $00

UNUSED_148: db $1B,$00,$FE
            db $7F
            db $0D
            db $1B,$00,$0C
            db $00

CONTINUE_TEEFA: db $1B,$00,$FE
                db $7F
                db $0D
                db $1B,$00,$04
                db $00

CONTINUE_AXS: db $1B,$00,$FE
              db $7F
              db $0D
              db $1B,$00,$08
              db $00

CONTINUE_SALAH: db $1B,$00,$FE
                db $7F
                db $0D
                db $1B,$00,$0E
                db $00

UNUSED_152: db $1B,$00,$FE
            db $7F
            db $0D
            db $1B,$00,$12
            db $00

CONTINUE_DARWIN: db $1B,$00,$FE
                 db $7F
                 db $0D
                 db $1B,$00,$14
                 db $00

CONTINUE_REINOLL: db $1B,$00,$FE
                  db $7F
                  db $0D
                  db $1B,$00,$16
                  db $00

CONTINUE_ZEREL: db $1B,$00,$FE
                db $7F
                db $0D
                db $1B,$00,$1A
                db $00

CONTINUE_ICORINA: db $1B,$00,$FE
                  db $7F
                  db $0D
                  db $1B,$00,$1C
                  db $00

CONTINUE_GALNEON: db $1B,$00,$FE
                  db $7F
                  db $0D
                  db $1B,$00,$22
                  db $00

CONTINUE_GALNEON2: db $1B,$00,$FE
                   db $7F
                   db $0D
                   db $1B,$00,$24
                   db $00

UNUSED_159: db $1B,$00,$FE
            db $7F
            db $0D
            db $1B,$00,$1E
            db $00

CONTINUE_KARUL: db $1B,$00,$FE
                db $7F
                db $0D
                db $1B,$00,$26
                db $00

CONTINUE_TEEFA2: db $1B,$00,$FE
                 db $7F
                 db $0D
                 db $1B,$00,$02
                 db $00

WAIT_REMOVE_PORTRAIT: db $1B,$00,$FE
                      db $7F
                      db $1B,$00,$FF
                      db $0D
                      db $00

; Clear unused original text, if necessary
padbyte $FF
pad $8CFAAF

; Chapter 1 paralysis scene
org $989E8B
Tbl_Who_Hits_Rooks: dw Ariel_Attacks
                    dw Teefa_Attacks

     Ariel_Attacks: db $10 : dl MACRO_119
                    db $1C
                    db "Alan attacks!",$0D
                    db $00,$00

     Teefa_Attacks: db $10 : dl MACRO_119
                    db $1C
                    db "Teefa attacks!",$0D
                    db $00

   Rooks_Halved_HP: db "Rooks has taken",$0D
                    db $06,$0E,$11,$00 : dl $001903 : db $06,$0D
                    db " points damage.",$0D
                    db $00

   Wind_Spirit_KOd: db "Sylph has taken",$0D
                    db $06,$0E,$11,$00 : dl $001903 : db $06,$0D
                    db " points damage.",$0D
                    db $00
 Wind_Spirit_break: db "Sylph has been broken."
                    db $00
;Don't overwrite the code for cutscene damage
warnpc $989F30

; List: Everywhere in bank $18 that the scripts are called
org $9896DF : dl SCRIPT_001                        ;
org $9897A4 : dl SCRIPT_002                        ;
org $9897E8 : dl SCRIPT_003                        ;
org $989807 : dl SCRIPT_004                        ;
org $98987E : dl SCRIPT_005                        ;
org $98992B : dl SCRIPT_006                        ;
org $989939 : dl SCRIPT_007                        ;
org $989968 : dl SCRIPT_008                        ;
org $98997A : dl SCRIPT_009                        ;
org $989984 : dl SCRIPT_010                        ;
org $98999A : dl MACRO_119                         ;
org $9899D8 : dl SCRIPT_011                        ;
org $9899FC : dl SCRIPT_012                        ;
org $989A1D : dl SCRIPT_013                        ;
org $989A5F : dl SCRIPT_016                        ;
org $989A6A : dl SCRIPT_017                        ;
org $989AC5 : dl Wind_Spirit_break                 ;
org $989AE8 : dl SCRIPT_018                        ;
org $989B2F : dl SCRIPT_019                        ;
org $989B3F : dl SCRIPT_020                        ;
org $989D55 : dl SCRIPT_015                        ;
org $989D60 : dl SCRIPT_014                        ;
org $98A0BD : dl SCRIPT_021                        ;
org $98A0E3 : dl SCRIPT_022                        ;
org $98A1DB : dl SCRIPT_023                        ;
org $98A265 : dl SCRIPT_024                        ;
org $98A29C : dl SCRIPT_025                        ;
org $98A3A4 : dl SCRIPT_026                        ;
org $98A3CC : dl SCRIPT_029                        ;
org $98A404 : dl SCRIPT_028                        ;
org $98A40F : dl SCRIPT_027                        ;
org $98A457 : dl SCRIPT_030                        ;
org $98A462 : dl SCRIPT_031                        ;
org $98A489 : dl SCRIPT_032                        ;
org $98A508 : dl SCRIPT_033                        ;
org $98A532 : dl SCRIPT_034                        ;
org $98A54C : dl SCRIPT_035                        ;
org $98A600 : dl SCRIPT_036                        ;
org $98A659 : dl SCRIPT_037                        ;
org $98A682 : dl SCRIPT_038                        ;
org $98A697 : dl SCRIPT_039                        ;
org $98A6A7 : dl SCRIPT_040                        ;
org $98A73B : dl SCRIPT_041                        ;
org $98A74F : dl SCRIPT_042                        ;
org $98A78F : dl SCRIPT_043                        ;
org $98A7BA : dl SCRIPT_047                        ;
org $98AB03 : dl SCRIPT_048                        ;
org $98AB23 : dl SCRIPT_049                        ;
org $98AB43 : dl SCRIPT_050                        ;
org $98AC1E : dl SCRIPT_051                        ;
org $98AC5F : dl SCRIPT_052                        ;
org $98AD1D : dl SCRIPT_053                        ;
org $98AD2E : dl SCRIPT_054                        ;
org $98ADDC : dl SCRIPT_055                        ;
org $98AE1F : dl SCRIPT_056                        ;
org $98AE32 : dl SCRIPT_057                        ;
org $98AE9A : dl SCRIPT_058                        ;
org $98AED2 : dl SCRIPT_059                        ;
org $98AEFA : dl SCRIPT_060                        ;
org $98AF35 : dl SCRIPT_061                        ;
org $98AFCA : dl SCRIPT_062                        ;
org $98B2F8 : dl SCRIPT_063                        ;
org $98B320 : dl SCRIPT_064                        ;
org $98B33A : dl SCRIPT_065                        ;
org $98B478 : dl SCRIPT_066                        ;
org $98B49A : dl SCRIPT_067                        ;
org $98B4C3 : dl SCRIPT_068                        ;
org $98B505 : dl SCRIPT_069                        ;
org $98B5C1 : dl SCRIPT_070                        ;
org $98B65A : dl SCRIPT_071                        ;
org $98B66D : dl SCRIPT_072                        ;
org $98B6A4 : dl SCRIPT_073                        ;
org $98B6B4 : dl MACRO_119                         ;
org $98B6EB : dl SCRIPT_074                        ;
org $98B7BC : dl SCRIPT_075                        ;
org $98B7E7 : dl SCRIPT_076                        ;
org $98B810 : dl SCRIPT_077                        ;
org $98B8B0 : dl SCRIPT_078                        ;
org $98B8D8 : dl SCRIPT_079                        ;
org $98B958 : dl SCRIPT_080                        ;
org $98B969 : dl SCRIPT_081                        ;
org $98B9C0 : dl SCRIPT_082                        ;
org $98B9EF : dl SCRIPT_083                        ;
org $98BA14 : dl SCRIPT_084                        ;
org $98BA26 : dl SCRIPT_085                        ;
org $98BB7E : dl SCRIPT_086                        ;
org $98BC21 : dl SCRIPT_087                        ;
org $98BC38 : dl SCRIPT_088                        ;
org $98BC9F : dl SCRIPT_089                        ;
org $98BCC6 : dl SCRIPT_090                        ;
org $98BD9D : dl SCRIPT_091                        ;
org $98BDB3 : dl SCRIPT_092                        ;
org $98BDD3 : dl SCRIPT_093                        ;
org $98BE17 : dl SCRIPT_094                        ;
org $98C2C0 : dl SCRIPT_095                        ;
org $98C2F6 : dl SCRIPT_096                        ;
org $98C3AE : dl SCRIPT_097                        ;
org $98C3C7 : dl SCRIPT_098                        ;
org $98C3F7 : dl SCRIPT_099                        ;
org $98C40F : dl SCRIPT_100                        ;
org $98C483 : dl SCRIPT_101                        ;
org $98C4C3 : dl SCRIPT_102                        ;
org $98C4D5 : dl SCRIPT_103                        ;
org $98C50A : dl SCRIPT_104                        ;
org $98C51C : dl SCRIPT_105                        ;
org $98C5DD : dl SCRIPT_106                        ;
org $98C626 : dl SCRIPT_107                        ;
org $98C755 : dl SCRIPT_108                        ;
org $98C7A2 : dl SCRIPT_109                        ;
org $98C8E5 : dl SCRIPT_110                        ;
org $98C8F8 : dl SCRIPT_111                        ;
org $98C9A8 : dl SCRIPT_113                        ;
org $98CA43 : dl SCRIPT_114                        ;
org $98CA50 : dl SCRIPT_115                        ;
org $98CA6C : dl SCRIPT_116                        ;
org $98CAA6 : dl SCRIPT_117                        ;
org $98CD73 : dl SCRIPT_112                        ;
org $98D3EF : dl CLEAR                             ;
