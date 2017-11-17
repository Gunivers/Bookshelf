execute @a[score_Class_min=14,score_Class=14,score_Spell1_min=499] ~ ~ ~ /playsound block.water.ambient record @a[r=10] ~ ~ ~ 2 2 1
scoreboard players set @a[score_Class_min=14,score_Class=14,score_Spell1_min=499,score_EffSpeed=1080] EffSpeed 1080
scoreboard players set @a[score_Class_min=14,score_Class=14,score_Spell1_min=499,score_EffInvisibility=80] EffInvisibility 80

execute @a[score_Class_min=14,score_Class=14,score_Spell1_min=499] ~ ~ ~ /particle splash ~ ~1 ~ 0.3 0.7 0.3 0 100 force