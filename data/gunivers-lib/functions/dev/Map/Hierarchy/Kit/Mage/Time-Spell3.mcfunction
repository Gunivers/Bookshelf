execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /tp @p[r=1,score_Class_min=1,score_Class=1,team=Blue,score_Spell3_min=890] @e[type=armor_stand,tag=MT3B,r=50,c=1]
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /kill @e[type=armor_stand,tag=MT3B,r=1,c=1]
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=5] TouchBy 1
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=5] EffDamage 1
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=5] EffSilence 20

execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /tp @p[r=1,score_Class_min=1,score_Class=1,team=Orange,score_Spell3_min=890] @e[type=armor_stand,tag=MT3R,r=50,c=1]
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /kill @e[type=armor_stand,tag=MT3R,r=1,c=1]
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=5] TouchBy 1
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=5] EffDamage 1
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=5] EffSilence 20

scoreboard players set @a[score_Class_min=1,score_Class=1,score_Spell3_min=897] Spell1 0
scoreboard players set @a[score_Class_min=1,score_Class=1,score_Spell3_min=897] Spell2 0
scoreboard players set @a[score_Class_min=1,score_Class=1,score_Spell3_min=897] EffHeal 2
execute @a[score_Class_min=1,score_Class=1,score_Spell3_min=899,score_Spell3=899] ~ ~ ~ /playsound entity.zombie_horse.death record @a[r=30] ~ ~ ~ 2 2 1

execute @a[score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /particle depthsuspend ~ ~ ~ 1 1 1 0 100 force
execute @a[score_Class_min=1,score_Class=1,score_InGame_min=1,m=2,score_Spell3_min=890] ~ ~ ~ /particle largesmoke ~ ~ ~ 1 1 1 0 10 force