execute @a[score_Class_min=3,score_Class=3,score_InGame_min=1,m=2,score_Spell1_min=139] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 2 1
execute @e[score_Class_min=3,score_Class=3,score_InGame_min=1,m=2,score_Spell1_min=119] ~ ~ ~ /particle spell ~ ~1 ~ 0.3 1 0.3 0 3 force
scoreboard players set @e[score_Class_min=3,score_Class=3,score_InGame_min=1,m=2,score_Spell1_min=139] EffSpeed 3002

execute @a[score_Class_min=3,score_Class=3,score_InGame_min=1,m=2,score_Spell1_min=119,team=Blue] ~ ~ ~ /scoreboard players set @e[team=Orange,tag=IsPlaying,r=2] C3 400
execute @a[score_Class_min=3,score_Class=3,score_InGame_min=1,m=2,score_Spell1_min=119,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Blue,tag=IsPlaying,r=2] C3 400
execute @a[score_Class_min=3,score_Class=3,score_InGame_min=1,m=2,score_Spell1_min=119,team=Blue] ~ ~ ~ /scoreboard players set @e[team=Orange,tag=IsPlaying,r=2,score_EffSlow=3020] EffSlow 3020
execute @a[score_Class_min=3,score_Class=3,score_InGame_min=1,m=2,score_Spell1_min=119,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Blue,tag=IsPlaying,r=2,score_EffSlow=3020] EffSlow 3020