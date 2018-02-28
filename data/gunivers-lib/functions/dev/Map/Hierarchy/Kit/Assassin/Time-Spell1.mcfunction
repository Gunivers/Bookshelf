scoreboard players set @a[score_Class_min=11,score_Class=11,score_Spell1_min=499] PrivateSpell 200
execute @a[score_Class_min=11,score_Class=11,score_Spell1_min=499] ~ ~ ~ /particle largesmoke ~ ~1 ~ 0 0.5 0 1 100 force
execute @a[score_Class_min=11,score_Class=11,score_Spell1_min=499] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=5] ~ ~ ~ 2 1 1
scoreboard players set @a[score_Class_min=11,score_Class=11,score_UseIronAxe_min=1] PrivateSpell 0
scoreboard players set @a[score_InGame_min=1,score_Class=11,score_Class_min=11,m=2,score_PrivateSpell_min=1,score_EffInvisibility=2] EffInvisibility 2
scoreboard players set @a[score_InGame_min=1,score_Class=11,score_Class_min=11,m=2,score_PrivateSpell_min=1,score_EffSpeed=2002] EffSpeed 2002