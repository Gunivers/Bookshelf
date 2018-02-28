scoreboard players set @e[type=armor_stand,tag=MW3G] DirCollision 1
scoreboard players set @e[type=armor_stand,tag=MW3G] DirSpeed 80
execute @e[type=armor_stand,tag=MW3G] ~ ~ ~ /playsound entity.enderdragon.flap record @a[r=30] ~ ~ ~ 2 1 1
scoreboard players remove @e[type=armor_stand,tag=MW3G,score_DirY_min=20] DirY 20
execute @e[type=armor_stand,tag=MW3G] ~ ~ ~ /particle sweepAttack ~ ~ ~ 2 2 2 0 5 force
execute @e[type=armor_stand,tag=MW3G] ~ ~ ~ /particle cloud ~ ~ ~ 3 3 3 0.5 20 force

scoreboard players set @e[score_InGame_min=1,score_Class_min=5,score_Class=5,score_Spell3_min=799,m=2,score_EffSpeed=1060] EffSpeed 1060
scoreboard players set @e[score_InGame_min=1,score_Class_min=5,score_Class=5,score_Spell3_min=799,m=2,score_EffJump=1060] EffJump 1060

execute @e[type=armor_stand,score_Class_min=-5,score_Class=-5] ~ ~ ~ /teleport @e[type=!Villager,team=Orange,tag=IsPlaying,r=6] ~ ~2 ~
execute @e[type=armor_stand,score_Class_min=5,score_Class=5] ~ ~ ~ /teleport @e[type=!Villager,team=Blue,tag=IsPlaying,r=6] ~ ~2 ~
execute @e[type=armor_stand,score_Class_min=-5,score_Class=-5] ~ ~ ~ /scoreboard players set @e[team=Orange,tag=IsPlaying,r=5,score_EffPoison=1005] EffPoison 1005
execute @e[type=armor_stand,score_Class_min=5,score_Class=5] ~ ~ ~ /scoreboard players set @e[team=Blue,tag=IsPlaying,r=5,score_EffPoison=1005] EffPoison 1005
execute @e[type=armor_stand,score_Class_min=-5,score_Class=-5] ~ ~ ~ /scoreboard players set @e[team=Orange,tag=IsPlaying,r=5] TouchBy 5
execute @e[type=armor_stand,score_Class_min=5,score_Class=5] ~ ~ ~ /scoreboard players set @e[team=Blue,tag=IsPlaying,r=5] TouchBy 5
execute @e[type=armor_stand,score_Class_min=-5,score_Class=-5] ~ ~ ~ /scoreboard players set @e[team=Orange,tag=IsPlaying,r=5,score_EffFall=100] EffFall 100
execute @e[type=armor_stand,score_Class_min=5,score_Class=5] ~ ~ ~ /scoreboard players set @e[team=Blue,tag=IsPlaying,r=5,score_EffFall=100] EffFall 100