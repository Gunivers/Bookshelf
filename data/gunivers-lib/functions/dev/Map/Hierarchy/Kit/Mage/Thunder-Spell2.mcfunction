execute @a[score_InGame_min=1,score_Class_min=3,score_Class=3,m=2,score_UseCarrot=2,score_UseCarrot_min=2] ~ ~ ~ /summon Lightning_Bolt ~ ~7 ~
execute @e[type=armor_stand,score_Class_min=3,score_Class=3] ~ ~ ~ /particle spell ~ ~ ~ 1 1 1 0 10 force
execute @e[type=armor_stand,score_Class_min=-3,score_Class=-3] ~ ~ ~ /particle spell ~ ~ ~ 1 1 1 0 10 force

execute @a[score_InGame_min=1,score_Class_min=3,score_Class=3,m=2,score_UseCarrot_min=2,score_UseCarrot=2,team=Blue] ~ ~ ~ /execute @e[team=Orange,score_C3_min=1] ~ ~ ~ /scoreboard players set @e[team=Blue,r=4,score_InGame_min=1,score_EffInvulnerable=2] EffInvulnerable 2
execute @a[score_InGame_min=1,score_Class_min=3,score_Class=3,m=2,score_UseCarrot_min=2,score_UseCarrot=2,team=Orange] ~ ~ ~ /execute @e[team=Orange,score_C3_min=1] ~ ~ ~ /scoreboard players set @e[team=Orange,r=4,score_InGame_min=1,score_EffInvulnerable=2] EffInvulnerable 2
execute @a[score_InGame_min=1,score_Class_min=3,score_Class=3,m=2,score_UseCarrot=2,score_UseCarrot_min=2,team=Blue] ~ ~ ~ /execute @e[team=Orange,score_C3_min=1] ~ ~ ~ /summon Lightning_Bolt ~ ~ ~
execute @a[score_InGame_min=1,score_Class_min=3,score_Class=3,m=2,score_UseCarrot=2,score_UseCarrot_min=2,team=Orange] ~ ~ ~ /execute @e[team=Blue,score_C3_min=1] ~ ~ ~ /summon Lightning_Bolt ~ ~ ~
execute @a[score_InGame_min=1,score_Class_min=3,score_Class=3,m=2,score_UseCarrot=2,score_UseCarrot_min=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=Orange,score_C3_min=1,score_C3=390] C3 0
execute @a[score_InGame_min=1,score_Class_min=3,score_Class=3,m=2,score_UseCarrot=2,score_UseCarrot_min=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Blue,score_C3_min=1,score_C3=390] C3 0
scoreboard players set @e[type=armor_stand,score_Class_min=-3,score_Class=-3] DirSpeed 100
scoreboard players set @e[type=armor_stand,score_Class_min=3,score_Class=3] DirSpeed 100
scoreboard players set @e[type=armor_stand,score_Class_min=-3,score_Class=-3] DirCollision 1
scoreboard players set @e[type=armor_stand,score_Class_min=3,score_Class=3] DirCollision 1
execute @e[type=armor_stand,score_Class_min=-3,score_Class=-3] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=3] C3 200
execute @e[type=armor_stand,score_Class_min=3,score_Class=3] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=3] C3 200
execute @a[score_InGame_min=1,score_Class_min=3,score_Class=3,m=2,score_UseCarrot=2,score_UseCarrot_min=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=Orange,score_C3_min=1] TouchBy 3
execute @a[score_InGame_min=1,score_Class_min=3,score_Class=3,m=2,score_UseCarrot=2,score_UseCarrot_min=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=Blue,score_C3_min=1] TouchBy 3