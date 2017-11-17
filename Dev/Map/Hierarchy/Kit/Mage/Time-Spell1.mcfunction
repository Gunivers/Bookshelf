execute @e[type=armor_stand,score_Class_min=-1,score_Class=-1] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=4] EffDamage 3
execute @e[type=armor_stand,score_Class_min=1,score_Class=1] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=4] EffDamage 3
execute @e[type=armor_stand,score_Class_min=-1,score_Class=-1] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=4] TouchBy 1
execute @e[type=armor_stand,score_Class_min=1,score_Class=1] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=4] TouchBy 1
scoreboard players set @e[type=armor_stand,score_DirMoving_min=1,score_Class_min=1,score_Class=1] DirSpeed 100
scoreboard players set @e[type=armor_stand,score_DirMoving_min=1,score_Class_min=-1,score_Class=-1] DirSpeed 100

execute @e[type=armor_stand,score_Class_min=1,score_Class=1] ~ ~ ~ /particle witchMagic ~ ~ ~ 1 1 1 0 7 force
execute @e[type=armor_stand,score_Class_min=-1,score_Class=-1] ~ ~ ~ /particle witchMagic ~ ~ ~ 1 1 1 0 7 force
execute @e[type=armor_stand,score_Class_min=1,score_Class=1] ~ ~ ~ /particle depthsuspend ~ ~ ~ 1 1 1 0 7 force
execute @e[type=armor_stand,score_Class_min=-1,score_Class=-1] ~ ~ ~ /particle depthsuspend ~ ~ ~ 1 1 1 0 7 force