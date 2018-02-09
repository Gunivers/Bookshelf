execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=99] ~ ~ ~ /playsound block.snow.step record @a[r=10] ~ ~ ~ 2 1 1
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=40,m=2] ~ ~ ~ /particle fireworksSpark ~ ~0.3 ~ 3 0 3 0 5 force

execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=99,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Blue] EffDamage 2
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=40,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=7,tag=IsPlaying] EffSlow 1002
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=99,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Blue] TouchBy 4
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=99,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Orange] EffDamage 2
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=40,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=7,tag=IsPlaying] EffSlow 1002
execute @a[score_InGame_min=1,score_Class_min=4,score_Class=4,score_Spell2_min=99,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[r=7,tag=IsPlaying,team=!Orange] TouchBy 4