;org $0C9CF8    ;Start of extra free space
org $0CA010     ;Start of main script
SCRIPT_001: db $10 : dl CLEAR
            db $10 : dl MACRO_120
            db "The days passed peacefully",$0D
            db "for Rooks, living in the",$0D
            db "village of Galia."
            db $10 : dl WAIT_NEWLINE
            db "His parents had long",$0D
            db "ago passed on to the",$0D
            db "next world."
            db $10 : dl WAIT_NEWLINE
            db "But during the time",$0D
            db "of the rebellion his",$0D
            db "parents and a few",$0D
            db "soldiers"
            db $10 : dl WAIT_NEWLINE
            db "led the townspeople",$0D
            db "out of the village",$0D
            db "into the woods to",$0D
            db "await reinforcements."
            db $10 : dl WAIT_NEWLINE
            db "In the meantime,",$0D
            db "a friend of Rooks' father",$0D
            db "betrayed the survivors,"
            db $10 : dl WAIT_NEWLINE
            db "leading to the",$0D
            db "unfortunate demise of",$0D
            db "Rooks' parents."
            db $10 : dl WAIT_NEWLINE
            db "Taking the final",$0D
            db "magic card left to him by",$0D
            db "his parents,"
            db $10 : dl WAIT_NEWLINE
            db "Rooks began training",$0D
            db "every day to learn the",$0D
            db "ways of the",$0D
            db "Card Masters."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_002: db $10 : dl CLEAR
            db $10 : dl MACRO_120 : db $0D
            db """You look healthy."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What, who's there?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_003: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22, "Ariel, is that Ariel?", $22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """I haven't seen you ",$0D
            db " since you were a boy."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Yes."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """What happened?",$0D
            db " Have you been",$0D
            db " avoiding me ?"""
            db $10 : dl CONTINUE_ARIEL
            db """Didn't our fathers",$0D
            db " fight together as",$0D
            db " Knights of Lexford?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """But your father and",$0D
            db " Galneon. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """I have a different opinion",$0D
            db " from my father."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Yes, But let's not",$0D
            db " discuss that."
            db $10 : dl WAIT_NEWLINE
            db " Who is the girl?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_004: db $10 : dl DISPLAY_ARIEL
            db $22,"She is Teefa,",$0D
            db " my apprentice."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db """The pleasure is mine."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """There is something",$0D
            db " important I want you",$0D
            db " to do for me."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """It's not just a coincidence",$0D
            db " that we meet today."
            db $10 : dl CONTINUE_ARIEL
            db " Are you aware that dark",$0D
            db " spirits have arisen",$0D
            db " in Lexford?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Yes."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """I've been trying to",$0D
            db " find the reason for this."
            db $10 : dl CONTINUE_ARIEL
            db " There is chaos at the",$0D
            db " temple in Balnia. It would",$0D
            db " seem that they are being",$0D
            db " summoned there."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Then at whatever cost",$0D
            db " we must seal the",$0D
            db " passageway."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """The only one who can do",$0D
            db " that is you, Rooks.",$0D
            db " You are the only Card",$0D
            db " Master remaining."
            db $10 : dl CONTINUE_ARIEL
            db " Will you do it?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Yes, I'll try."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """Thank you Rooks.",$0D
            db " We would be forever in",$0D
            db " your debt."
            db $10 : dl CONTINUE_ARIEL
            db " I wish I could join you,",$0D
            db " but my destiny leads me",$0D
            db " elsewhere."
            db $10 : dl CONTINUE_ARIEL
            db " Please take Teefa",$0D
            db " with you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db """I know the way",$0D
            db " to the Temple."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """I'll leave it up to you.",$0D
            db " Rooks. . uh . . ",$0D
            db " Card Master. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Teefa",$0D
            db "joins the group."
            db $1B,$01,$FF
            db $00

SCRIPT_005: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Ouch,",$0D
            db " something stung me!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_TEEFA
            db $22,"That's strange, there's",$0D
            db " nothing here that could",$0D
            db " sting you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """I must have imagined it."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_006: db $10 : dl CLEAR
            db $10 : dl DISPLAY_AXS
            db """Who's there?",$0D
            db " Oh, it's you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SORCERER
            db """Are you with Galneon?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """No we. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_TEEFA
            db """Silence!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_007: db $10 : dl MACRO_119
            db $1D
            db $1B,$01,$01
            db "Axs",     $08,$64,"*1",$0D
            db "Sorcerer",$08,$64,"*1"
            db $7F
            db $10 : dl MACRO_119
            db $05,$FF,$3C
            db "Teefa attacks!",$0D
            db $1C
            db "Uses lightning."
            db $05,$FF,$28
            db $0D
            db $1B,$01,$02
            db $00

SCRIPT_008: db $10 : dl MACRO_119
            db $1C
            db "Axs has",$0D
            db "been paralyzed.",$0D
            db $00

SCRIPT_009: db "Sorcerer has",$0D
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
            db """I humbly accept this",$0D
            db " sword."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$0A
            db $0C
            db $00

SCRIPT_012: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """Wait a minute!",$0D
            db " Is it true these people",$0D
            db " can control evil spirits?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What is it about this",$0D
            db " sword. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA2
            db """I came here to win this",$0D
            db " sword."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_013: db $10 : dl DISPLAY_ARIEL
            db $22,"First, let me explain."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$0C
            db $10 : dl PROMPT_ROOKS
            db $22,"Ariel, how long have you",$0D
            db " been here?"
            db $10 : dl WAIT_NEWLINE
            db " What do mean?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """I know how to control",$0D
            db " Rimsala,",$0D
            db " the Evil Empress."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """This Rimsala. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """In this world there are",$0D
            db " evil spirits that we battle",$0D
            db " with constantly."
            db $10 : dl CONTINUE_ARIEL
            db " Unless someone comes",$0D
            db " forth to defeat them, the",$0D
            db " conflict will never end."
            db $10 : dl CONTINUE_ARIEL
            db " We want to create a",$0D
            db " peaceful land"
            db $10 : dl CONTINUE_ARIEL
            db " where people of all",$0D
            db " countries can live",$0D
            db " together in peace."
            db $10 : dl CONTINUE_ARIEL
            db " In order to do that",$0D
            db " we're going to need all",$0D
            db " the strength we can",$0D
            db " muster."
            db $10 : dl CONTINUE_ARIEL
            db " We'll have to sway our",$0D
            db " people toward that end,"
            db $10 : dl CONTINUE_ARIEL
            db " so we're going to need",$0D
            db " this sword to control",$0D
            db " Rimsala."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Is that why you're",$0D
            db " helping Galneon?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """Oh, you knew about that?"
            db $10 : dl CONTINUE_ARIEL
            db " How about it. Rooks, can",$0D
            db " we count on your help?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $01,$00,$14
            db $1C
            db $08,$0A,"No!",$08,$52,"Yes"
            db $1B,$01,$FF
            db $00

SCRIPT_014: db $10 : dl PROMPT_ROOKS
            db """You've made a mistake!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """Oh!. . . that's too bad."
            db $10 : dl CONTINUE_ARIEL
            db " You would let down a",$0D
            db " childhood friend. . . ?!",$0D
            db " It's because you're",$0D
            db " a Card Master. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_015: db $10 : dl PROMPT_ROOKS
            db $22,"Is it OK, really?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """Good. But. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """But what?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """There's one thing I'm",$0D
            db " concerned about."
            db $10 : dl CONTINUE_ARIEL
            db " There is one obstacle to",$0D
            db " this plan."
            db $10 : dl CONTINUE_ARIEL
            db " His ability is exactly the",$0D
            db " opposite of the",$0D
            db " Evil Empress Rimsala's",$0D
            db " ability."
            db $10 : dl CONTINUE_ARIEL
            db " The obstacle is you,",$0D
            db " Rooks."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_016: db $10 : dl MACRO_119
            db $1D
            db "Ariel",$08,$64,"*1",$0D
            db "Teefa",$08,$64,"*1"
            db $7F
            db $1B,$01,$FF
            db $00

SCRIPT_017: db $10 : dl CLEAR
            db $05,$FF,$3C
            db "Rooks Attacks!",$0D
            db $1D
            db $0D
            db $1B,$01,$14
            db "Rooks",$0D, $05,$01,$01
            db """What. . .",$0D
            db " What. . . I can't. . .",$0D
            db " I can't move. . . . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA2
            db """That sting. . . I stung you",$0D
            db " when we entered this",$0D
            db " room."
            db $10 : dl CONTINUE_TEEFA
            db " It's starting to take",$0D
            db " effect."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """Save your strength!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_018: db $1B,$00,$2A
            db $10 : dl MACRO_119
            db $1C
            db "Ariel",$0D
            db $22,"Give up, Rooks!",$22
            db $10 : dl WAIT_NEWLINE
            db $1B,$00,$2C
            db $10 : dl MACRO_119
            db $1C
            db "Sorcerer",$0D
            db """It's dangerous!"""
            db $10 : dl WAIT_NEWLINE
            db $1B,$00,$FF
            db $1B,$01,$29
            db $10 : dl MACRO_119
            db $1C
            db "The Sorcerer casts",$0D
            db "a spell to summon",$0D
            db "the Fire Spirit."
            db $05,$FF,$3C
            db $0D
            db $1B,$01,$2A
            db $00

SCRIPT_019: db $10 : dl MACRO_119
            db $1C
            db "Ariel suffered",$0D
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
            db "Ariel has",$0D
            db $05,$FF,$3C
            db "taken flight.",$0D
            db $1B,$01,$3D
            db $1C
            db "Teefa has",$0D
            db "taken flight.",$0D
            db $7F
            db $10 : dl DISPLAY_ARIEL
            db """An obstacle has entered",$0D
            db " here. We'll meet again. . .",$0D
            db " if you live."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Oh, no. . .",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_021: db $10 : dl CLEAR
            db $1C
            db "Rooks",$0D, $05,$01,$01
            db """Uhh. . ."""
            db $7F
            db $10 : dl MACRO_120
            db $0D
            db """You've awakened!"""
            db $7F
            db $10 : dl PROMPT_ROOKS
            db """Where am I?",$0D
            db " Who are you?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_120
            db $0D
            db """Me? I'm Salah."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Salah?",$0D
            db " I've heard that name",$0D
            db " somewhere before."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Axs",$0D, $05,$01,$01
            db """She is Princess Salah,",$0D
            db " the daughter of the slain",$0D
            db " King Wagnall."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_022: db $10 : dl PROMPT_ROOKS
            db $22,"You were, ah. . .",$22,$0D
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """You look like you've",$0D
            db " recovered nicely."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What's going on?"
            db $10 : dl WAIT_NEWLINE
            db " If it's all right with you,",$0D
            db " could I get a detailed",$0D
            db " account of what's",$0D
            db " happened?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """Sure.",$0D
            db " It happened ten years",$0D
            db " ago,"
            db $10 : dl CONTINUE_AXS
            db " when Galneon started",$0D
            db " the rebellion."
            db $10 : dl CONTINUE_AXS
            db " The late King entrusted",$0D
            db " me with the care of his",$0D
            db " daughter Salah."
            db $10 : dl CONTINUE_AXS
            db " Since that day, I have",$0D
            db " sworn to overthrow the",$0D
            db " government of Galneon"
            db $10 : dl CONTINUE_AXS
            db " and restore the King to",$0D
            db " his rightful throne."
            db $10 : dl CONTINUE_AXS
            db " Galneon has sold out",$0D
            db " to the evil side."
            db $10 : dl CONTINUE_AXS
            db " He defeated the King,",$0D
            db " and will try to raise the",$0D
            db " Evil Empress using",$0D
            db " ancient secret methods."
            db $10 : dl CONTINUE_AXS
            db " That's why he captured",$0D
            db " the Crystal Sword."
            db $10 : dl CONTINUE_AXS
            db " We must prevent the ",$0D
            db " reforming of the Evil",$0D
            db " Empress at all costs."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """You guarded the Crystal",$0D
            db " Sword, didn't you?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """Yes."
            db $10 : dl CONTINUE_AXS
            db " At any rate, you know",$0D
            db " how to use the cards,",$0D
            db " don't you?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """It's a gift passed down",$0D
            db " from my father."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """In this country the only",$0D
            db " one who could use the",$0D
            db " cards was Zahan,"
            db $10 : dl CONTINUE_AXS
            db " but he's deceased now."
            db $10 : dl CONTINUE_AXS
            db " Are you Zahan's son?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Did you know my father?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """Your father and I were",$0D
            db " in the same fighting unit."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """So you were one of the",$0D
            db " Knights of Lexford."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """That's right.",$0D
            db " Your father and I,",$0D
            db " and Ariel's father. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """. . . . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """What should we do if",$0D
            db " we're to thwart",$0D
            db " Galneon's plan?"
            db $10 : dl CONTINUE_AXS
            db " There isn't much time."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Maybe if we asked",$0D
            db " Reinoll. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """Reinoll?",$0D
            db " Ask Reinoll?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """I'll go."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SALAH
            db $22,"Wait, I'll go with you.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """It will be risky."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SALAH
            db """I can fight. I'm studying",$0D
            db " spells and magic."
            db $10 : dl CONTINUE_SALAH
            db " Axs, please permit it.",$22,$0D
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """I have no choice.",$0D
            db " Rooks, I commit the",$0D
            db " princess to you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """OK.",$0D
            db " Leave it to me."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """I'm counting on you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Salah",$0D
            db "joins the group.",$0D
            db $1B,$01,$FF
            db $00

SCRIPT_023: db $10 : dl CLEAR
            db $10 : dl PROMPT_SALAH
            db """I hear something."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_024: db $10 : dl CLEAR
            db $10 : dl PROMPT_SALAH
            db """He's being attacked by",$0D
            db " Monsters!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """I'll give you a hand!"""
            db $1B,$01,$01
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_THE_MAN
            db """No thanks.",$0D
            db " This is the last attack."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $05,$FF,$1E
            db $0C
            db $0D
            db $10 : dl CLEAR
            db $1B,$01,$02
            db $05,$FF,$28
            db "The Man Attacks!",$0D
            db $05,$FF,$01
            db $1B,$01,$0B
            db "Gurgeon suffered",$0D
            db $05,$FF,$28
            db $06,$0E,"73 ",$06,$0D,"points damage.",$0D
            db $05,$FF,$50
            db "Gurgeon is defeated.",$0D
            db $05,$FF,$1E
            db $0C
            db $0D
            db $10 : dl CLEAR
            db $1B,$01,$02
            db $05,$FF,$28
            db "The Man Attacks!",$0D
            db $05,$FF,$01
            db "Gurgeon suffered",$0D
            db $1B,$01,$0C
            db $05,$FF,$28
            db $06,$0E,"81 ",$06,$0D,"points damage.",$0D
            db $05,$FF,$50
            db "Gurgeon is defeated.",$0D
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
            db $22,"So, you dare to walk",$0D
            db " in such a place?"
            db $10 : dl CONTINUE_DARWIN
            db " There are many monsters",$0D
            db " here."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """No. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_THE_MAN
            db """This will be dangerous",$0D
            db " for women and children."
            db $10 : dl CONTINUE_DARWIN
            db " I think you should turn",$0D
            db " back."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """No matter what happens",$0D
            db " we have to press on."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_THE_MAN
            db """Keep your eyes open.",$0D
            db " Let's go on."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_026: db $10 : dl CLEAR
            db $05,$FF,$28
            db $0D
            db $10 : dl DISPLAY_THE_MAN
            db $22,"Oh, great!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Are you. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_THE_MAN
            db """I'm Darwin."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db """There is a very strong",$0D
            db " monster beyond this. . ."
            db $10 : dl CONTINUE_DARWIN
            db " I would have been OK on",$0D
            db " my own, but since I'm in",$0D
            db " such a hurry",$0D
            db " I'm glad I have some help."
            db $10 : dl CONTINUE_DARWIN
            db " So, are you going with",$0D
            db " me?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $01,$00,$14
            db $05,$FF,$01
            db $08,$0A,"Of Course",$08,$52,"No!"
            db $1B,$01,$FF
            db $00

SCRIPT_027: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """Of course!",$0D
            db " I'll go with you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_028: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """If it's OK why don't you",$0D
            db " try it on your own?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db """For the good of our",$0D
            db " side. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Huh.",$0D
            db " I guess I have no choice.",$0D
            db " I'll give it a try."""
            db $7F
            db $10 : dl DISPLAY_DARWIN
            db """I'm indebted to you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_029: db $10 : dl MACRO_119
            db $1C
            db "Darwin",$0D
            db "joins the group."
            db $00

SCRIPT_030: db $10 : dl CLEAR
            db $10 : dl MACRO_119
            db $1D
            db "You have earned",$0D
            db "the Fire Spirit."
            db $1B,$01,$FF
            db $00

SCRIPT_031: db $10 : dl PROMPT_ROOKS
            db """The Fire Spirit. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db """Are you telling me the",$0D
            db " Spirits were attacking",$0D
            db " humans? That can't be!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """The whole world is going",$0D
            db " crazy!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_032: db $10 : dl DISPLAY_DARWIN
            db """I'm sorry to cut this",$0D
            db " short, but I've got to",$0D
            db " hurry."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Be careful!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db """I'll see you again",$0D
            db " if there's a chance."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_033: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """Excuse me."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Reinoll",$0D, $05,$01,$01
            db """Who is it? I'm busy."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_034: db $10 : dl DISPLAY_REINOLL
            db $22,"Oh, Rooks! It's been a",$0D
            db " long time!"
            db $10 : dl CONTINUE_REINOLL
            db " Who is this?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db """I'm known as Salah."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_REINOLL
            db """The slain King had a",$0D
            db " daughter named. . .",$0D
            db " oh, I'm sorry."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db """That's all right."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_REINOLL
            db """Princess, the last I heard",$0D
            db " your whereabouts was",$0D
            db " unknown,"
            db $10 : dl CONTINUE_REINOLL
            db " but I can see now",$0D
            db " that you're safe."
            db $10 : dl CONTINUE_REINOLL
            db " But weren't there",$0D
            db " twins?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db """My sister. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_REINOLL
            db """I have heard some bad",$0D
            db " things. I'm sorry"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db """No, don't worry about it."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_REINOLL
            db """I guess I'm getting rude",$0D
            db " in my old age. I'm sorry."
            db $10 : dl CONTINUE_REINOLL
            db " Why don't you come in,",$0D
            db " sit and talk a while?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_035: db $10 : dl DISPLAY_BIG_REINOLL
            db $22,"Well,",$0D
            db " this Evil Empress. . ."""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_ROOKS
            db """I thought you might know",$0D
            db " something. . ."""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl DISPLAY_BIG_REINOLL
            db """I don't really know the",$0D
            db " details,"
            db $10 : dl CONTINUE_BIG_REINOLL
            db " but if you want to defeat",$0D
            db " Rimsala you need four",$0D
            db " different kinds of",$0D
            db " Spirits"
            db $10 : dl CONTINUE_BIG_REINOLL
            db " and three kinds of",$0D
            db " Treasures."""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_ROOKS
            db """Spirits and Treasures."""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl DISPLAY_BIG_REINOLL
            db """That's right."
            db $10 : dl WAIT_BIG_REINOLL
            db $1B,$01,$FF
            db $00

SCRIPT_036: db " The four kinds of spirits",$0D
            db " are Wind, Fire, Water",$0D
            db " and Earth."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_037: db " The three treasures are",$0D
            db " the Spirit Sword,",$0D
            db " the Enchanted Jewel,",$0D
            db " and the Crystal Sword."
            db $10 : dl WAIT_NEWLINE
            db " These are the only things",$0D
            db " that can contain the",$0D
            db " Evil Empress."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_038: db $10 : dl PROMPT_ROOKS
            db """Just like the ancient",$0D
            db " legend."""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl DISPLAY_BIG_REINOLL
            db $22,"Yes,",$0D
            db " the legend of Fanas."
            db $10 : dl CONTINUE_BIG_REINOLL
            db " If such a thing can be",$0D
            db " done again,"
            db $10 : dl WAIT_BIG_REINOLL
            db " we will need someone",$0D
            db " with the strengths and",$0D
            db " talents Fanal had."""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_SALAH
            db $22,"That's right, only",$0D
            db " a Card Master can do it."""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_ROOKS
            db """. . . . ."""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl DISPLAY_BIG_REINOLL
            db """I guess you're right."
            db $10 : dl CONTINUE_BIG_REINOLL
            db " But Salah, don't you have",$0D
            db " the Enchanted Jewel?"""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_SALAH
            db $22,"Yes, I have it hidden",$0D
            db " away in a safe place."""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_ROOKS
            db $22,"What do you mean,",$0D
            db " a safe place?"""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_SALAH
            db """It's in the Ice Mine."""
            db $10 : dl WAIT_BIG_REINOLL
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_039: db $10 : dl DISPLAY_BIG_REINOLL
            db """Even the wind can't",$0D
            db " reach it there."""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_SALAH
            db """Let me see it."""
            db $10 : dl WAIT_BIG_REINOLL
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_040: db $10 : dl PROMPT_ROOKS
            db """When everything is",$0D
            db " arranged."
            db $10 : dl WAIT_NEWLINE
            db " How are we going to",$0D
            db " thwart the Evil",$0D
            db " Empress?"""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl DISPLAY_BIG_REINOLL
            db """We will. . . . ."""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl MACRO_119
            db $0D
            db """Whoa!"""
            db $10 : dl WAIT_BIG_REINOLL
            db $10 : dl PROMPT_ROOKS
            db """Salah!"""
            db $10 : dl WAIT_BIG_REINOLL
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_041: db $10 : dl PROMPT_ROOKS
            db """Ariel! You. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """Rooks, I will take Salah",$0D
            db " with me."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"Wait, don't move.",$0D
            db " The Princess is dying."
            db $10 : dl CONTINUE_ARIEL
            db " I wonder, Rooks!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_042: db $10 : dl PROMPT_ROOKS
            db """Wait!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_043: db $10 : dl PROMPT_ROOKS
            db """Ariel!!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $0D
            db $22,"No, Ariel is already",$0D
            db " gone."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Who are you?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$02
            db $10 : dl DISPLAY_ZEREL
            db """Ariel's first apprentice",$0D
            db " Zerel."
            db $10 : dl CONTINUE_ZEREL
            db " I have come to defeat",$0D
            db " you!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ZEREL
            db """Prepare to meet",$0D
            db " your doom!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

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
            db """Salah. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_048: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """With such an important",$0D
            db " mission to complete,",$0D
            db " where has he gone?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_049: db $10 : dl PROMPT_ROOKS
            db """Wait! There's a letter on",$0D
            db " top of the desk!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_050: db $10 : dl MACRO_120
            db $0D,"To Salah:"
            db $10 : dl WAIT_NEWLINE
            db "I'm coming to the Ice Mine.",$0D
            db "Don't do anything until I",$0D
            db "get there.",$0D
            db $08,$78,"Axs"
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$02
            db $10 : dl PROMPT_ROOKS
            db """The Ice Mine. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_051: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """Axs!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Rooks casts",$0D
            db "an Unpetrify Spell."
            db $1B,$01,$FF
            db $00

SCRIPT_052: db $10 : dl MACRO_119
            db $1C
            db "Axs is healed."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Thank you, Rooks!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """That's all right. But. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """What about Salah?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Why did you do that?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """I found Ariel, so I tailed",$0D
            db " him. But he found me out,",$0D
            db " and petrified me."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Salah went there with",$0D
            db " him."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Yes, he will try to win",$0D
            db " the Enchanted Jewel."
            db $10 : dl CONTINUE_AXS
            db " I am worried about Salah,",$0D
            db " Let's hurry!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Axs",$0D
            db "joins the group."
            db $1B,$01,$FF
            db $00

SCRIPT_053: db $10 : dl CLEAR
            db $10 : dl PROMPT_AXS
            db """Now you're a full grown",$0D
            db " man, aren't you?"
            db $10 : dl WAIT_NEWLINE
            db " I remember fighting with",$0D
            db " Zahan."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """. . . . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"Oh, of course!",$0D
            db " I grant you this."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "You have earned",$0D
            db "the Water Spirit."
            db $1B,$01,$FF
            db $00

SCRIPT_054: db $10 : dl PROMPT_ROOKS
            db """This. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"Long ago, I received this",$0D
            db " from your father."
            db $10 : dl WAIT_NEWLINE
            db " But it looks like you've",$0D
            db " reached the point where",$0D
            db " you can use it."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Thank you, Axs.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db """It's my pleasure.",$0D
            db " Let's hurry,",$0D
            db " Salah is waiting!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Let's go!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_055: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """This place. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db """This is where the",$0D
            db " Enchanted Jewel was",$0D
            db " hidden."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Even so, it's hot. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_056: db $10 : dl PROMPT_ROOKS
            db """Salah!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_057: db $10 : dl DISPLAY_ARIEL
            db """A persistent guy!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """You!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_058: db $10 : dl DISPLAY_ARIEL
            db """I had a little help from",$0D
            db " the Princess getting into",$0D
            db " this room."
            db $10 : dl CONTINUE_ARIEL
            db " She put up a fight,",$0D
            db " so I put her to sleep."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """I see."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """I've got the Enchanted",$0D
            db " Jewel."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS2
            db $22,"Salah is fine, she wasn't",$0D
            db " wounded at all."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_059: db $10 : dl DISPLAY_AXS2
            db """She was just put to sleep",$0D
            db " with a magic spell."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_060: db $10 : dl DISPLAY_ARIEL
            db $22,"Sorry, but it was all",$0D
            db " according to plan."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Can you get away with",$0D
            db " anything if it's according",$0D
            db " to the plan?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"How about it,"
            db $10 : dl CONTINUE_ARIEL
            db " if I ask once more, do you",$0D
            db " think I could persuade",$0D
            db " you to join up?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Don't try to trick me",$0D
            db " with your fine words!"
            db $10 : dl WAIT_NEWLINE
            db " You should abandon a plan",$0D
            db " like that, and the sooner",$0D
            db " the better!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """If you thought about what",$0D
            db " you just said. . ."
            db $10 : dl CONTINUE_ARIEL
            db " The Enchanted Jewel is in",$0D
            db " my hand."
            db $10 : dl CONTINUE_ARIEL
            db " The Crystal Sword, too."
            db $10 : dl CONTINUE_ARIEL
            db " The Reforming of the",$0D
            db " Evil Empress is just a",$0D
            db " matter of time.",$0D
            db " That's too bad, Rooks.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """If necessary I'll take the",$0D
            db " Jewel by force!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_061: db $10 : dl DISPLAY_SAUZA
            db $22,"Ariel, leave this area to",$0D
            db " me and press on!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """All right. I'll leave it up",$0D
            db " to you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$03
            db $0C
            db $05,$FF,$28
            db $0D
            db $10 : dl DISPLAY_SAUZA
            db """I owe you my life!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_062: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"I'm sorry, I'm doing the",$0D
            db " best I can,"
            db $10 : dl WAIT_NEWLINE
            db " even though Salah wasn't",$0D
            db " around for the worst of",$0D
            db " it. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS2
            db """If she doesn't rest a",$0D
            db " little. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_063: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """Is Salah all right?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """She's sleeping now."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_064: db $10 : dl DISPLAY_ICORINA
            db $22,"Good,",$0D
            db " she'll be fine soon."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Thank you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ICORINA
            db """You don't have to worry.",$0D
            db " That was some adventure",$0D
            db " you went through."
            db $10 : dl CONTINUE_ICORINA
            db " Axs has been a friend for",$0D
            db " a long time."
            db $10 : dl CONTINUE_ICORINA
            db " I'm worried about Salah,",$0D
            db " if anything happens,",$0D
            db " please tell me."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_065: db $10 : dl PROMPT_ROOKS
            db """That Ariel. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """It looks like all the",$0D
            db " preparations have been",$0D
            db " finished."
            db $10 : dl CONTINUE_AXS
            db " Unless we do something,",$0D
            db " the Reign of Evil is",$0D
            db " assured."
            db $10 : dl CONTINUE_AXS
            db " This could be our last",$0D
            db " chance to stop her."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Let's go, Axs!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """This could be the day we",$0D
            db " lose our lives."
            db $10 : dl CONTINUE_AXS
            db " Even that would be all",$0D
            db " right, wouldn't it?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """We must be prepared for",$0D
            db " whatever happens."
            db $10 : dl WAIT_NEWLINE
            db " I can't forgive them, no",$0D
            db " matter what!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db $22,"Like father, like son.",$0D
            db " They are probably in the",$0D
            db " Stavery Tower."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Stavery Tower. . . ?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_066: db $10 : dl CLEAR
            db $10 : dl MACRO_119
            db $0D,"""Heh heh heh heh. . .",$0D
            db " You are all going to meet",$0D
            db " your end here!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What! Who is it!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_067: db $10 : dl DISPLAY_DARAMA
            db """Heh heh heh heh. . .",$0D
            db " Galneon has summoned me",$0D
            db " from the spirit world."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_068: db $10 : dl CLEAR
            db $10 : dl MACRO_119
            db $1C
            db "You have earned",$0D
            db "the Earth Spirit."
            db $1B,$01,$FF
            db $00

SCRIPT_069: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """It's no good!",$0D
            db " It won't open!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db """We have no other way."
            db $10 : dl WAIT_NEWLINE
            db " Let's go back to the",$0D
            db " village and look for",$0D
            db " another way."""
            db $0D
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_070: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """Salah!",$0D
            db " Are you all right?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SALAH
            db $22,"Yes, I'm fine.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db """But. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SALAH
            db """I will continue on with",$0D
            db " you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS : db $05,$01,$08
            db """. . . . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"In your condition, it's",$0D
            db " pointless."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ICORINA
            db """Take her along.",$0D
            db " She says she wants to go."
            db $10 : dl CONTINUE_ICORINA
            db " With Rooks close by to",$0D
            db " protect her,",$0D
            db " she'll be fine."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Let's go, Salah.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db """Right. There's nothing",$0D
            db " else we can do."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ICORINA
            db """But be careful."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_071: db $10 : dl PROMPT_ROOKS
            db """It's no good.",$0D
            db " It won't open."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db """I know how to open it."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What? You do?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_072: db $10 : dl PROMPT_SALAH
            db $22,"I've heard that, in order",$0D
            db " to get into the Stavery",$0D
            db " Tower,"
            db $10 : dl WAIT_NEWLINE
            db " you need to use royal",$0D
            db " tears."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_073: db $10 : dl DISPLAY_SALAH2
            db """You do it like this."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $0D,"""See?"""
            db $1B,$01,$FF
            db $00

SCRIPT_074: db $10 : dl MACRO_119
            db $0D,"""You can go in this way."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$02
            db $10 : dl PROMPT_ROOKS
            db $22,"Salah, are you OK?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_SALAH2
            db """I'm all right. Let's go."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_075: db $10 : dl CLEAR
            db $10 : dl MACRO_119
            db $0D,"""Too bad.",$0D
            db " You haven't yet acquired",$0D
            db " the Earth Spirit."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_076: db $10 : dl DISPLAY_DARAMA
            db """Heh heh heh heh. . .",$0D
            db " We're invulnerable."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_077: db $10 : dl CLEAR
            db $10 : dl MACRO_119
            db $1C
            db "You have earned",$0D
            db "the Earth Spirit."
            db $1B,$01,$FF
            db $00

SCRIPT_078: db $10 : dl CLEAR
            db $10 : dl PROMPT_SALAH
            db """Wait! There is a door."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_079: db $10 : dl PROMPT_ROOKS
            db """I wonder if I can get in."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db """Take care! It may be a",$0D
            db " trap!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """If it is a trap, I will fall",$0D
            db " into a trap!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_080: db $10 : dl PROMPT_ROOKS
            db """Ariel!!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"Well, you've come this",$0D
            db " far. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Hand over the Crystal",$0D
            db " Sword and the",$0D
            db " Enchanted Jewel."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """It's too late."
            db $10 : dl CONTINUE_ARIEL
            db " The preparations for the",$0D
            db " Reign of Evil have",$0D
            db " already begun."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """But I don't think you have",$0D
            db " the Spirit Sword."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """Teefa has made all of the",$0D
            db " arrangements."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What?!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db """Teefa?!",$0D
            db " Where is she?",$0D
            db " She is my sister!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What! Teefa is the other",$0D
            db " princess?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """I expect she's been",$0D
            db " helping to usher in the",$0D
            db " Reign of Evil."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db $22,"I see, Teefa's tears are",$0D
            db " being used."
            db $10 : dl WAIT_NEWLINE
            db " She is from Royal Family",$0D
            db " of Lexford."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db """Of course."
            db $10 : dl CONTINUE_ARIEL
            db " It's an important key in",$0D
            db " the rise of the Reign of",$0D
            db " Evil."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Ariel. . .",$0D
            db " I cannot forgive you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_ARIEL
            db $22,"So, what will you do?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """. . . . .",$0D
            db " Axs, Salah, please let me",$0D
            db " do this on my own."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_AXS
            db """Understood."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_081: db $10 : dl DISPLAY_ARIEL
            db """Come here! Rooks!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_082: db $10 : dl MACRO_120
            db $1C
            db "Ariel",$0D, $05,$01,$01
            db """Why, . . . don't you finish",$0D
            db " me off?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """. . . . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_120
            db $1C
            db "Ariel",$0D, $05,$01,$01
            db """Beware of Galneon. . ."
            db $10 : dl WAIT_NEWLINE
            db " His intention is not world",$0D
            db " domination, he doesn't",$0D
            db " want to organize a",$0D
            db " Utopian society. . ."
            db $10 : dl WAIT_NEWLINE
            db " His intention. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_GALNEON
            db $22,"Ariel, that's enough.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1D
            db "Galneon has cast",$0D
            db "an Attribute 11 spell."
            db $1B,$01,$FF
            db $00

SCRIPT_083: db $10 : dl MACRO_119
            db $1D
            db "Ariel has taken",$0D
            db $06,$0E,"207 ",$06,$0D,"points damage."
            db $0D
            db $05,$01,$5A
            db " "
            db $10 : dl MACRO_119
            db $1D
            db "Ariel",$0D,"has perished."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Ariel!"
            db $05,$01,$46
            db " ",$0D
            db $05,$01,$01
            db " Arieeeeeel!!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_084: db $10 : dl DISPLAY_GALNEON
            db $22,"Ariel,",$0D
            db " just as I suspected,",$0D
            db " you were the Betrayer."
            db $10 : dl CONTINUE_GALNEON
            db " You have been used as a",$0D
            db " pawn,",$0D
            db " just like your father."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """You. . .",$0D
            db " you are Galneon!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db """Are you Zahan's son?"
            db $10 : dl CONTINUE_GALNEON
            db " Just like your father,",$0D
            db " you are a hindrance and",$0D
            db " an obstacle!"
            db $10 : dl CONTINUE_GALNEON
            db " This is the beginning of",$0D
            db " the end for you!"""
            db $10 : dl CONTINUE_GALNEON
            db " I will throw you away like",$0D
            db " an old rag, the way I did",$0D
            db " with Ariel."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Did you do that to",$0D
            db " my father?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db """Weren't you told?",$0D
            db " I don't know what you",$0D
            db " were told,"
            db $10 : dl CONTINUE_GALNEON
            db " but I crushed your",$0D
            db " parents with my own",$0D
            db " hands!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_085: db $10 : dl PROMPT_GALNEON
            db """We will meet again!"
            db $10 : dl WAIT_NEWLINE
            db " If I let you live that long!",$0D
            db " Heh heh heh heh. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """. . . . .",$0D
            db " That Galneon!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_SALAH
            db $22,"Rooks,",$0D
            db " where are you going?"""
            db $1B,$01,$FF
            db $00

SCRIPT_086: db $10 : dl DISPLAY_DARWIN
            db """My intention seem to be",$0D
            db " the same as yours."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Why are you here?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db """To give you a hand!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $1C
            db "Darwin",$0D
            db "joins the group."
            db $1B,$01,$FF
            db $00

SCRIPT_087: db $10 : dl CLEAR
            db $10 : dl DISPLAY_GALNEON
            db """You did well to get this",$0D
            db " far, Rooks!"
            db $10 : dl CONTINUE_GALNEON
            db " Haven't I met that",$0D
            db " warrior elf somewhere",$0D
            db " before?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db """Princess Teefa!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Do you know Teefa?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db """Teefa!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA2
            db $1B,$00,$FE
            db """. . . . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db """Ah ha ha ha! Teefa doesn't seem to",$0D
            db " know anything about you."
            db $10 : dl CONTINUE_GALNEON
            db " I don't need her any",$0D
            db " more!"
            db $10 : dl CONTINUE_GALNEON
            db " I give her back!",$0D
            db " I used to be very fond of",$0D
            db " her."
            db $10 : dl CONTINUE_GALNEON
            db " Ah ha ha ha!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_088: db $10 : dl PROMPT_DARWIN
            db $22,"Teefa, it's me Darwin.",$0D
            db " Don't you know me?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA2
            db $1B,$00,$FE
            db """. . . . .",$0D
            db $1B,$00,$04
            db " You're not making sense!"
            db $10 : dl CONTINUE_TEEFA
            db " This will be your burial",$0D
            db " place!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_089: db $10 : dl DISPLAY_TEEFA_CROUCH
            db $05,$01,$08
            db """What?"
            db $1B,$00,$FE
            db ". . . ",$0D
            db $1B,$00,$06
            db " Here"
            db $1B,$00,$FE
            db ". . . ",$0D
            db $1B,$00,$06
            db " where"
            db $1B,$00,$FE
            db ". . . . .?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """It seems that Galneon's",$0D
            db " spell has been broken."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA_CROUCH
            db """Darwin"
            db $1B,$00,$FE
            db ". . . ?!",$0D
            db $1B,$00,$06
            db " Why are you here. . . ?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_090: db $10 : dl DISPLAY_DARWIN
            db """Right now don't think",$0D
            db " about anything."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA_CROUCH : db $1B,$00,$FE
            db """. . . . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Take care of Teefa."
            db $10 : dl WAIT_NEWLINE
            db " I'm pushing on ahead."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN : db $1B,$00,$FE
            db """Be careful."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_091: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db $22,"Galneon, it's you!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db $22,"Well,",$0D
            db " you've come this far."
            db $10 : dl CONTINUE_GALNEON
            db " It seems you didn't care",$0D
            db " much for the gift I left",$0D
            db " behind for you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """. . . . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db """Good, you will be able to",$0D
            db " watch me rebuild my",$0D
            db " Empire right there."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """Won't it be difficult to",$0D
            db " leave all of us behind?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_092: db $10 : dl DISPLAY_GALNEON
            db """Aren't Axs of the great",$0D
            db " Knights of Lexford and",$0D
            db " Princess Salah"
            db $10 : dl CONTINUE_GALNEON
            db " going to make an",$0D
            db " appearance?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Galneon. . . prepare",$0D
            db " yourself for the end."
            db $10 : dl WAIT_NEWLINE
            db " This is where your dream",$0D
            db " dies!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON
            db """We'll see!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_093: db $10 : dl PROMPT_AXS
            db """Rooks! You and Salah",$0D
            db " retreat!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_094: db $10 : dl PROMPT_ROOKS
            db """Axs!!!"""
            db $1B,$01,$FF
            db $00

SCRIPT_095: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """Are you all right?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db """Yes.",$0D
            db " My sister. . . ?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """She is at Icorina's place."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db """Thank you.",$0D
            db " I'm so grateful to you. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """My pleasure. Don't give",$0D
            db " it a thought."
            db $10 : dl WAIT_NEWLINE
            db " But, more importantly,",$0D
            db " what about Galneon. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db $22,"My father, King Wagnall,",$0D
            db " is now deceased."
            db $10 : dl CONTINUE_TEEFA2
            db " I have been put in the",$0D
            db " care of Darwin."
            db $10 : dl CONTINUE_TEEFA2
            db " But many years ago",$0D
            db " Galneon. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """I'm sorry.",$0D
            db " I have heard some",$0D
            db " things. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db """No. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_096: db $10 : dl PROMPT_ROOKS
            db """How was it?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db """The people in the village",$0D
            db " haven't changed."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """So was the Reign of Evil",$0D
            db " thwarted?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db """No, it's taken place,",$0D
            db " but. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """But what?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db """It will take time for it",$0D
            db " to be fully implemented."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db """Is there anything",$0D
            db " we can do?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_TEEFA
            db """If we can get",$0D
            db " the Crystal Sword,",$0D
            db " the Enchanted Jewel,"
            db $10 : dl CONTINUE_TEEFA2
            db " and the Spirit Sword back from Galneon there",$0D
            db " might be a chance."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_DARWIN
            db """I would think the castle",$0D
            db " would be connected",$0D
            db " to the tower."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Let's go!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_097: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """What is it?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_KARUL
            db $22,"I am Ariel's apprentice,",$0D
            db " Karul."
            db $10 : dl CONTINUE_KARUL
            db " Rooks, I thought I'd have",$0D
            db " a look at you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """I'm in a hurry.",$0D
            db " Don't interfere."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_KARUL
            db """It would be easy to",$0D
            db " defeat you here,"
            db $10 : dl CONTINUE_KARUL
            db " but now that Ariel is gone"
            db $10 : dl CONTINUE_KARUL
            db " I don't know what",$0D
            db " Galneon will do."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db """Rooks, don't meddle.",$0D
            db " Let's go on."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_098: db $10 : dl MACRO_120
            db $1C
            db $05,$01,$01
            db "Karul",$0D
            db """But. . .",$0D
            db " please defeat Ariel's",$0D
            db " enemies!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_099: db $10 : dl MACRO_119
            db $1D
            db "You have earned",$0D
            db "the Crystal Sword."
            db $1B,$01,$FF
            db $00

SCRIPT_100: db $10 : dl PROMPT_ROOKS
            db $22,"Cruel, isn't it?",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_TEEFA
            db """Don't lose your nerve!"
            db $10 : dl WAIT_NEWLINE
            db " Rooks, there is still",$0D
            db " something I must give",$0D
            db " you."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """. . . . .",$0D
            db " So there is.",$0D
            db " Let's go!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_101: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """Galneon!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON2
            db """Heh heh heh. . .",$0D
            db " so, it's you.",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Have you gone mad,",$0D
            db " Galneon!!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_GALNEON2
            db """The one with the most",$0D
            db " ambition gets the most",$0D
            db " power!"
            db $10 : dl CONTINUE_GALNEON2
            db " The power of the gods!",$0D
            db " Ah hah hah hah!"
            db $10 : dl CONTINUE_GALNEON2
            db " Your opposition to me",$0D
            db " will bring trouble to you!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_102: db $10 : dl MACRO_119
            db $1C
            db "You have earned",$0D
            db "the Enchanted Jewel."
            db $1B,$01,$FF
            db $00

SCRIPT_103: db $10 : dl PROMPT_ROOKS
            db """. . . . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db """. . . Let's go."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $0D, """Ah hah hah hah!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db "Galneon",$0D
            db """It has no effect. . ."
            db $10 : dl WAIT_NEWLINE
            db " I'm the one who holds",$0D
            db " the power!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_104: db $10 : dl MACRO_119
            db $1C
            db "You have earned",$0D
            db "the Spirit Sword."
            db $1B,$01,$FF
            db $00

SCRIPT_105: db $10 : dl PROMPT_DARWIN
            db $22,"Pitiful, isn't it. . .",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """When a man perishes at",$0D
            db " the hand of another man,",$0D
            db " what is there to do. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_106: db $10 : dl CLEAR
            db $1C
            db "Rooks",$0D
            db """An enemy!"""
            db $05,$FF,$3C
            db $0D
            db $10 : dl MACRO_119
            db $1D
            db "Blue Guardian",$08,$64,"*1",$0D
            db "Red Guardian",$08,$64,"*1"
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_107: db $10 : dl DISPLAY_AXS
            db """Leave this area to me",$0D
            db " and go on ahead!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db $22,"Axs, you're alive!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl DISPLAY_AXS
            db """It will take time before",$0D
            db " Rimsala starts to move."
            db $10 : dl CONTINUE_AXS
            db " The time to defeat her",$0D
            db " is now!  Hurry!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """All right!",$0D
            db " Axs, be careful!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_108: db $10 : dl CLEAR
            db $1C
            db "Rooks",$0D
            db """Oh no!"""
            db $05,$FF,$3C
            db $0D
            db $10 : dl MACRO_119
            db $1D
            db "Tiamat",$08,$64,"*1"
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db """It looks like we'll have to ",$0D
            db " split up here!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """What?!?"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_TEEFA
            db """If we don't hurry",$0D
            db " Rimsala will awaken!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db """No matter what, we must",$0D
            db " defeat Rimsala!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """Darwin. . . . .",$0D
            db " Teefa. . . . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_DARWIN
            db $22,"Go, Rooks!",$22
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $1B,$01,$FF
            db $00

SCRIPT_109: db $10 : dl PROMPT_ROOKS
            db """I'm sorry!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_110: db $10 : dl CLEAR
            db $10 : dl PROMPT_ROOKS
            db """So this is Rimsala. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_111: db $10 : dl PROMPT_ROOKS
            db """Oh!",$0D
            db " It hurts my head!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_120
            db $0D,""". . . . .",$0D
            db " After all this time. . .",$0D
            db " Revive me. . ."
            db $10 : dl WAIT_NEWLINE
            db " Listen to me and obey. . .",$0D
            db " Listen to me and obey. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl PROMPT_ROOKS
            db """No!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $10 : dl MACRO_119
            db $0D
            db """In that case. . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_112: db $10 : dl PROMPT_ROOKS
            db """To the East_Wind.",$0D
            db " To the South_Fire."
            db $10 : dl WAIT_NEWLINE
            db " To the West_Water.",$0D
            db " To the North_Earth."
            db $10 : dl WAIT_NEWLINE
            db " All of the Gates to the",$0D
            db " Spirit World, close!",$0D
            db " Close, oh dark gateways!",$0D
            db " I seal you!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_113: db $10 : dl PROMPT_ROOKS
            db """What!",$0D
            db " No effect?!"""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_114: db $10 : dl MACRO_120
            db $1D
            db "Rimsala has regained",$0D
            db "consciousness."
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

SCRIPT_115: db $10 : dl MACRO_120
            db $1C
            db "Rimsala's attack!",$0D
            db $1B,$01,$FF
            db $00

SCRIPT_116: db $10 : dl MACRO_120
            db "Rooks gradually slips into",$0D
            db "unconsciousness. . ."
            db $1B,$01,$FF
            db $00

SCRIPT_117: db $10 : dl MACRO_120
            db "From somewhere in the",$0D
            db "distance the voice of the",$0D
            db "great hero Fanas",$0D
            db "can be heard."
            db $10 : dl WAIT_NEWLINE
            db $10 : dl MACRO_120
            db $0D,""". . . . .",$0D
            db " Rooks. . .",$0D
            db " I believe in you."
            db $10 : dl WAIT_NEWLINE
            db " Your strength. . .",$0D
            db " everyone's strength."
            db " . ."""
            db $10 : dl WAIT_REMOVE_PORTRAIT
            db $0C
            db $1B,$01,$FF
            db $00

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
               db "Ariel"
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

DISPLAY_TEEFA2: db $1B,$00,$05
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
                  db "Sorcerer"
                  db $05,$01,$01
                  db $0D
                  db $1B,$00,$0C
                  db $00

DISPLAY_SALAH: db $1B,$00,$0F
               db $05,$FF,$14
               db $0C
               db $0D
               db $01,$00,$06
               db "Salah"
               db $05,$01,$01
               db $0D
               db $1B,$00,$0E
               db $00

DISPLAY_SALAH2: db $1B,$00,$13
                db $05,$FF,$14
                db $0C
                db $0D
                db $01,$00,$06
                db "Salah"
                db $05,$01,$01
                db $0D
                db $1B,$00,$12
                db $00

PROMPT_SALAH: db $05,$FF,$14
              db $0C
              db $0D
              db $01,$00,$06
              db "Salah"
              db $05,$01,$01
              db $0D
              db $00

DISPLAY_THE_MAN: db $1B,$00,$15
                 db $05,$FF,$14
                 db $0C
                 db $0D
                 db $01,$00,$06
                 db "The Man"
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
               db " "
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
                db "Darama"
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
pad $0CFAAF

; Chapter 1 paralysis scene
org $189E8B
Tbl_Who_Hits_Rooks: dw Ariel_Attacks
                    dw Teefa_Attacks

     Ariel_Attacks: db $10 : dl MACRO_119
                    db $1C
                    db "Ariel Attacks!",$0D
                    db $00

     Teefa_Attacks: db $10 : dl MACRO_119
                    db $1C
                    db "Teefa Attacks!",$0D
                    db $00

   Rooks_Halved_HP: db "Rooks has taken",$0D
                    db $06,$0E,$11,$00 : dl $001903 : db $06,$0D
                    db " points damage.",$0D
                    db $00

   Wind_Spirit_KOd: db "Wind Spirit has taken",$0D
                    db $06,$0E,$11,$00 : dl $001903 : db $06,$0D
                    db " points damage.",$0D
                    db $00
 Wind_Spirit_break: db "Wind Spirit",$0D
                    db "has been broken."
                    db $00

; List: Everywhere in bank $18 that the scripts are called
org $1896DF : dl SCRIPT_001                        ;
org $1897A4 : dl SCRIPT_002                        ;
org $1897E8 : dl SCRIPT_003                        ;
org $189807 : dl SCRIPT_004                        ;
org $18987E : dl SCRIPT_005                        ;
org $18992B : dl SCRIPT_006                        ;
org $189939 : dl SCRIPT_007                        ;
org $189968 : dl SCRIPT_008                        ;
org $18997A : dl SCRIPT_009                        ;
org $189984 : dl SCRIPT_010                        ;
org $18999A : dl MACRO_119                         ;
org $1899D8 : dl SCRIPT_011                        ;
org $1899FC : dl SCRIPT_012                        ;
org $189A1D : dl SCRIPT_013                        ;
org $189A5F : dl SCRIPT_016                        ;
org $189A6A : dl SCRIPT_017                        ;
org $189AC5 : dl Wind_Spirit_break                 ;
org $189AE8 : dl SCRIPT_018                        ;
org $189B2F : dl SCRIPT_019                        ;
org $189B3F : dl SCRIPT_020                        ;
org $189D55 : dl SCRIPT_015                        ;
org $189D60 : dl SCRIPT_014                        ;
org $18A0BD : dl SCRIPT_021                        ;
org $18A0E3 : dl SCRIPT_022                        ;
org $18A1DB : dl SCRIPT_023                        ;
org $18A265 : dl SCRIPT_024                        ;
org $18A29C : dl SCRIPT_025                        ;
org $18A3A4 : dl SCRIPT_026                        ;
org $18A3CC : dl SCRIPT_029                        ;
org $18A404 : dl SCRIPT_028                        ;
org $18A40F : dl SCRIPT_027                        ;
org $18A457 : dl SCRIPT_030                        ;
org $18A462 : dl SCRIPT_031                        ;
org $18A489 : dl SCRIPT_032                        ;
org $18A508 : dl SCRIPT_033                        ;
org $18A532 : dl SCRIPT_034                        ;
org $18A54C : dl SCRIPT_035                        ;
org $18A600 : dl SCRIPT_036                        ;
org $18A659 : dl SCRIPT_037                        ;
org $18A682 : dl SCRIPT_038                        ;
org $18A697 : dl SCRIPT_039                        ;
org $18A6A7 : dl SCRIPT_040                        ;
org $18A73B : dl SCRIPT_041                        ;
org $18A74F : dl SCRIPT_042                        ;
org $18A78F : dl SCRIPT_043                        ;
org $18A7BA : dl SCRIPT_047                        ;
org $18AB03 : dl SCRIPT_048                        ;
org $18AB23 : dl SCRIPT_049                        ;
org $18AB43 : dl SCRIPT_050                        ;
org $18AC1E : dl SCRIPT_051                        ;
org $18AC5F : dl SCRIPT_052                        ;
org $18AD1D : dl SCRIPT_053                        ;
org $18AD2E : dl SCRIPT_054                        ;
org $18ADDC : dl SCRIPT_055                        ;
org $18AE1F : dl SCRIPT_056                        ;
org $18AE32 : dl SCRIPT_057                        ;
org $18AE9A : dl SCRIPT_058                        ;
org $18AED2 : dl SCRIPT_059                        ;
org $18AEFA : dl SCRIPT_060                        ;
org $18AF35 : dl SCRIPT_061                        ;
org $18AFCA : dl SCRIPT_062                        ;
org $18B2F8 : dl SCRIPT_063                        ;
org $18B320 : dl SCRIPT_064                        ;
org $18B33A : dl SCRIPT_065                        ;
org $18B478 : dl SCRIPT_066                        ;
org $18B49A : dl SCRIPT_067                        ;
org $18B4C3 : dl SCRIPT_068                        ;
org $18B505 : dl SCRIPT_069                        ;
org $18B5C1 : dl SCRIPT_070                        ;
org $18B65A : dl SCRIPT_071                        ;
org $18B66D : dl SCRIPT_072                        ;
org $18B6A4 : dl SCRIPT_073                        ;
org $18B6B4 : dl MACRO_119                         ;
org $18B6EB : dl SCRIPT_074                        ;
org $18B7BC : dl SCRIPT_075                        ;
org $18B7E7 : dl SCRIPT_076                        ;
org $18B810 : dl SCRIPT_077                        ;
org $18B8B0 : dl SCRIPT_078                        ;
org $18B8D8 : dl SCRIPT_079                        ;
org $18B958 : dl SCRIPT_080                        ;
org $18B969 : dl SCRIPT_081                        ;
org $18B9C0 : dl SCRIPT_082                        ;
org $18B9EF : dl SCRIPT_083                        ;
org $18BA14 : dl SCRIPT_084                        ;
org $18BA26 : dl SCRIPT_085                        ;
org $18BB7E : dl SCRIPT_086                        ;
org $18BC21 : dl SCRIPT_087                        ;
org $18BC38 : dl SCRIPT_088                        ;
org $18BC9F : dl SCRIPT_089                        ;
org $18BCC6 : dl SCRIPT_090                        ;
org $18BD9D : dl SCRIPT_091                        ;
org $18BDB3 : dl SCRIPT_092                        ;
org $18BDD3 : dl SCRIPT_093                        ;
org $18BE17 : dl SCRIPT_094                        ;
org $18C2C0 : dl SCRIPT_095                        ;
org $18C2F6 : dl SCRIPT_096                        ;
org $18C3AE : dl SCRIPT_097                        ;
org $18C3C7 : dl SCRIPT_098                        ;
org $18C3F7 : dl SCRIPT_099                        ;
org $18C40F : dl SCRIPT_100                        ;
org $18C483 : dl SCRIPT_101                        ;
org $18C4C3 : dl SCRIPT_102                        ;
org $18C4D5 : dl SCRIPT_103                        ;
org $18C50A : dl SCRIPT_104                        ;
org $18C51C : dl SCRIPT_105                        ;
org $18C5DD : dl SCRIPT_106                        ;
org $18C626 : dl SCRIPT_107                        ;
org $18C755 : dl SCRIPT_108                        ;
org $18C7A2 : dl SCRIPT_109                        ;
org $18C8E5 : dl SCRIPT_110                        ;
org $18C8F8 : dl SCRIPT_111                        ;
org $18C9A8 : dl SCRIPT_113                        ;
org $18CA43 : dl SCRIPT_114                        ;
org $18CA50 : dl SCRIPT_115                        ;
org $18CA6C : dl SCRIPT_116                        ;
org $18CAA6 : dl SCRIPT_117                        ;
org $18CD73 : dl SCRIPT_112                        ;
org $18D3EF : dl CLEAR                             ;
