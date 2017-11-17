scoreboard players set @a[score_1=0,score_Timer_min=0] Timer -1
title @a[score_1=0,score_Timer_min=-20] title [{"text":"            Gunivers                            ","color":"gold","underlined":"false","bold":"false"}]
title @a[score_1=0,score_Timer_min=-20,score_Timer=-19] subtitle [{"text":"Present              ","color":"gray","bold":"false"}]
tp @a[score_Timer_min=-4,score_Timer=-3,score_1=0] 5000 120 4980 0 20
title @a[score_1=0,score_Timer_min=-40,score_Timer=-40] title [{"text":"H","color":"gold","underlined":"false","bold":"false"}]
title @a[score_1=0,score_Timer_min=-41,score_Timer=-41] title [{"text":"Hi","color":"gold","underlined":"false","bold":"false"}]
title @a[score_1=0,score_Timer_min=-42,score_Timer=-42] title [{"text":"Hie","color":"gold","underlined":"false","bold":"false"}]
title @a[score_1=0,score_Timer_min=-43,score_Timer=-43] title [{"text":"Hier","color":"gold","underlined":"false","bold":"false"}]
title @a[score_1=0,score_Timer_min=-44,score_Timer=-44] title [{"text":"Hiera","color":"gold","underlined":"false","bold":"false"}]
title @a[score_1=0,score_Timer_min=-45,score_Timer=-45] title [{"text":"Hierar","color":"gold","underlined":"false","bold":"false"}]
title @a[score_1=0,score_Timer_min=-46,score_Timer=-46] title [{"text":"Hierarc","color":"gold","underlined":"false","bold":"false"}]
title @a[score_1=0,score_Timer_min=-47,score_Timer=-47] title [{"text":"Hierarch","color":"gold","underlined":"false","bold":"false"}]
title @a[score_1=0,score_Timer_min=-60,score_Timer=-48] title [{"text":"Hierarchy","color":"gold","underlined":"false","bold":"false"}]
title @a[score_1=0,score_Timer_min=-50,score_Timer=-40] subtitle [{"text":"","color":"gray","bold":"false"}]
#title @a[score_1=0,score_Timer_min=-60,score_Timer=-60] subtitle [{"text":"The unique MOBA experience map !","color":"gray","bold":"false"}]
effect @a[score_1=0] levitation 1 255 true
effect @a[score_Timer_min=-2,score_Timer=-1,score_1=0] blindness 3 255 true
execute @a[score_Timer_min=-5,score_Timer=-5,score_1=0] ~ ~ ~ playsound minecraft:entity.firework.launch record @p[r=1] ~ ~ ~
execute @a[score_Timer_min=-40,score_Timer=-40,score_1=0] ~ ~ ~ playsound minecraft:entity.firework.blast record @p[r=1] ~ ~ ~
execute @a[score_Timer_min=-41,score_Timer=-41,score_1=0] ~ ~ ~ playsound minecraft:entity.firework.twinkle record @p[r=1] ~ ~ ~
execute @a[score_Timer_min=-41,score_Timer=-41,score_1=0] ~ ~ ~ particle fireworksSpark ~ ~1 ~ 0.2 0.5 0.2 0.2 100 force @p[r=1]
effect @a[score_1=0] invisibility 1 255 true
scoreboard teams join NoScoreDisp @a[score_1=0,score_Timer_min=-198,score_Timer=-1]
scoreboard players reset * EmptyScore
scoreboard objectives setdisplay sidebar.team.green EmptyScore
advancement grant @a[score_Timer_min=-40,score_Timer=-40,score_1=0] only Hierarchy:root
execute @a[score_Timer_min=-40,score_Timer=-40,score_1=0] ~ ~ ~ playsound minecraft:ui.toast.challenge_complete record @p
execute @a[score_Timer_min=-100,score_Timer=-100,score_1=0] ~ ~ ~ tellraw @a ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> Hey ","color":"none"},{"selector":"@p","color":"none"},{"text":"! Welcome on Hierarchy!","color":"none"}]
execute @a[score_Timer_min=-100,score_Timer=-100,score_1=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:block.note.hat record @p
execute @a[score_Timer_min=-122,score_Timer=-122,score_1=0] ~ ~ ~ tellraw @p ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> If it's your first time, you should read kits and map descriptions on our website ","color":"none"},{"text":">> click here <<","color":"aqua","clickEvent":{"action":"open_url","value":"http:gunivers.nethierarchy"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Open website (Only available in french)"}]}}}]
execute @a[score_Timer_min=-122,score_Timer=-122,score_1=0] ~ ~ ~ playsound minecraft:block.note.hat record @p
execute @a[score_Timer_min=-138,score_Timer=-138,score_1=0] ~ ~ ~ tellraw @p ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> You can also join our (french) community on ","color":"none"},{"text":"TwitchApp","color":"aqua","clickEvent":{"action":"open_url","value":"https:www.curse.cominviteCh36O8G1DEy73pHZ61sD2g"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Join us on TwitchApp!"}]}}},{"text":" or ","color":"none"},{"text":"Discord","color":"aqua","clickEvent":{"action":"open_url","value":"https:discord.gg0hXUtgUquSJE78RC"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Join us on Discord!"}]}}}]
execute @a[score_Timer_min=-138,score_Timer=-138,score_1=0] ~ ~ ~ playsound minecraft:block.note.hat record @p
execute @a[score_Timer_min=-160,score_Timer=-160,score_1=0] ~ ~ ~ tellraw @p ["",{"text":"<"},{"text":"Gunivers","color":"gold"},{"text":"> If you don't have the ressource pack, you can download it on ","color":"none"},{"text":"our website","color":"aqua","clickEvent":{"action":"open_url","value":"http:gunivers.nethierarchy"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click here to open our website"}]}}}]
execute @a[score_Timer_min=-160,score_Timer=-160,score_1=0] ~ ~ ~ playsound minecraft:block.note.hat record @p
tp @a[score_Timer=-199,score_1=0] 5000 100 5000 90 0
scoreboard players set @a[score_Timer=-199] 1 1
advancement revoke @a[score_Timer_min=0,score_1=0] everything
replaceitem entity @a[score_1=0] slot.enderchest.8 skull 1 3 {display:{Name:"Remove hat"}}
scoreboard players add @a HaveObjective 0
scoreboard players add @a Spell1 0
scoreboard players add @a Spell2 0
scoreboard players add @a Spell3 0
scoreboard players add @a EffNoMove 0
scoreboard players add @a EffNoTp 0
scoreboard players add @a UseEgg 0
scoreboard players add @a Class 0
scoreboard players add @a Drop 0
gamemode 2 @a[score_1=0,m=!2]
clear @a[score_1=0]
scoreboard players add @a InGame 0
scoreboard players add @a EffNoDie 0
scoreboard players add @a Tuto 0
scoreboard players add @a UseIronAxe 0
scoreboard players add @a HaveBow 0
scoreboard players add @a C13S3 0
scoreboard players add @a UseBow 0
scoreboard players add @a Back 0
scoreboard players add @a Jungle 0
scoreboard players add @a Hat 0
scoreboard teams join Spawn @a[score_1=0,score_Timer=-198]
scoreboard players add @a Kills 0
scoreboard players add @a IsDeadNumber 0
xp 1L @a[score_1=0]
scoreboard players add @a[score_1=0] 
scoreboard players add @a GameNumber 0
scoreboard players add @a WinNumber 0
scoreboard players add @a LoseNumber 0
scoreboard plagyers add @a Mana 0
scoreboard players add @a DeathNumber 0
scoreboard players add @a KillNumber 0
scoreboard players add @a CoinsNumber 0