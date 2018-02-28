execute @a[score_Class_min=6,score_Class=6,score_Spell3_min=1799] ~ ~ ~ /particle reddust ~ ~1 ~ 7 1 7 1 500 force
execute @a[score_InGame_min=1,score_Class_min=6,score_Class=6,score_Spell3_min=1799,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=10,tag=IsPlaying,score_EffDamage=1002] EffDamage 1002
execute @a[score_InGame_min=1,score_Class_min=6,score_Class=6,score_Spell3_min=1799,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=10,tag=IsPlaying,score_EffSlow=3040] EffSlow 3040
execute @a[score_InGame_min=1,score_Class_min=6,score_Class=6,score_Spell3_min=1799,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=Blue,r=10,tag=IsPlaying,score_EffHeal=2002] EffHeal 2002
execute @a[score_InGame_min=1,score_Class_min=6,score_Class=6,score_Spell3_min=1799,m=2,team=Blue] ~ ~ ~ /effect @e[team=Orange,r=10,tag=IsPlaying] blindness 3 1 true
execute @a[score_InGame_min=1,score_Class_min=6,score_Class=6,score_Spell3_min=1799,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=10,tag=IsPlaying] TouchBy 6
execute @a[score_Class_min=6,score_Class=6,score_Spell3_min=1799] ~ ~ ~ /playsound entity.firework.twinkle record @a[r=30] ~ ~ ~ 2 1 1
execute @a[score_InGame_min=1,score_Class_min=6,score_Class=6,score_Spell3_min=1799,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=10,tag=IsPlaying,score_EffDamage=1002] EffDamage 1002
execute @a[score_InGame_min=1,score_Class_min=6,score_Class=6,score_Spell3_min=1799,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=10,tag=IsPlaying,score_EffSlow=3040] EffSlow 3040
execute @a[score_InGame_min=1,score_Class_min=6,score_Class=6,score_Spell3_min=1799,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Orange,r=10,tag=IsPlaying,score_EffHeal=2002] EffHeal 2002
execute @a[score_InGame_min=1,score_Class_min=6,score_Class=6,score_Spell3_min=1799,m=2,team=Orange] ~ ~ ~ /effect @e[team=Blue,r=10,tag=IsPlaying] blindness 3 1 true
execute @a[score_InGame_min=1,score_Class_min=6,score_Class=6,score_Spell3_min=1799,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=10,tag=IsPlaying] TouchBy 6