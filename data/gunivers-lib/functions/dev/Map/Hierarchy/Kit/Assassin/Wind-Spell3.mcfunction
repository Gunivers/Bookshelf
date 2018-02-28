execute @a[score_Class_min=15,score_Class=15,score_Spell3_min=1199,team=Blue] ~ ~ ~ /scoreboard players set @a[team=Orange,r=15,tag=IsPlaying] C15S3 23
execute @a[score_Class_min=15,score_Class=15,score_Spell3_min=1180,score_Spell3=1180] ~ ~ ~ /execute @a[score_InGame_min=1] ~ ~ ~ /playsound entity.generic.explode record @a[r=30] ~ ~ ~ 2 0.5 1
execute @a[score_Class_min=15,score_Class=15,score_Spell3_min=1185] ~ ~ ~ /execute @a[score_InGame_min=1] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 1 1
tp @e[score_C15S3=1,score_C15S3_min=1] ~ ~15 ~
effect @e[score_C15S3_min=22] levitation 1 25 true
execute @a[score_C15S3=2,score_C15S3_min=2] ~ ~ ~ /spreadplayers ~ ~ 15 50 false @p
effect @a[score_Class_min=15,score_Class=15,score_Spell3_min=1199] levitation 1 25 true
execute @a[score_Class_min=15,score_Class=15,score_Spell3=1175,score_Spell3_min=1175] ~ ~ ~ /spreadplayers ~ ~ 15 50 false @p
scoreboard players remove @e[score_C15S3_min=1] C15S3 1
scoreboard players set @e[score_C15S3=1,score_C15S3_min=1] TouchBy 15
scoreboard players set @e[score_C15S3=1,score_C15S3_min=1,score_EffFall=100] EffFall 100
scoreboard players set @a[score_Class_min=15,score_Class=15,score_Spell3_min=1199,score_EffInvulnerable=2] EffInvulnerable 20
execute @a[score_Class_min=15,score_Class=15,score_Spell3_min=1199,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Blue,r=15,tag=IsPlaying] C15S3 23
execute @a[score_Class_min=15,score_Class=15,score_Spell3_min=1187] ~ ~ ~ /particle sweepAttack ~ ~1 ~ 1 1 1 0 10 force
execute @a[score_Class_min=15,score_Class=15,score_Spell3_min=1180] ~ ~ ~ /particle cloud ~ ~1 ~ 1 1 1 0 10 force
execute @a[score_C15S3_min=1,tag=IsPlaying] ~ ~ ~ /particle sweepAttack ~ ~1 ~ 1 1 1 0 10 force
execute @a[score_C15S3_min=1,tag=IsPlaying] ~ ~ ~ /particle cloud ~ ~1 ~ 1 1 1 0 10 force