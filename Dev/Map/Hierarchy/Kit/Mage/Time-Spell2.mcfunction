execute @a[score_Class_min=1,score_Class=1,score_Spell2=299,score_Spell2_min=299,score_InGame_min=1,m=2] ~ ~ ~ /playsound mob.endermen.portal record @a[r=10] ~ ~ ~ 2 1 1
execute @a[score_Class_min=1,score_Class=1,score_Spell2_min=299,score_Spell2=299] ~ ~ ~ /playsound entity.guardian.death record @a[r=30] ~ ~ ~ 2 2 1
execute @a[score_Class_min=1,score_Class=1,score_Spell2_min=299,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /scoreboard players set @e[team=!Blue,r=5,score_LifeState_min=500,score_EffSlow=3020] EffSlow 3020
execute @a[score_Class_min=1,score_Class=1,score_Spell2_min=299,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /scoreboard players set @e[team=!Orange,r=5,score_LifeState_min=500,score_EffSlow=3020] EffSlow 3020
execute @a[score_Class_min=1,score_Class=1,score_Spell2_min=299,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /tp @e[team=!Blue,r=5,score_LifeState_min=500] ~ ~ ~ ~180 ~
execute @a[score_Class_min=1,score_Class=1,score_Spell2_min=299,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /tp @e[team=!Orange,r=5,score_LifeState_min=500] ~ ~ ~ ~180 ~
execute @a[score_Class_min=1,score_Class=1,score_Spell2=299,score_Spell2_min=299,score_InGame_min=1,m=2,team=Blue] ~ ~ ~ /spreadplayers ~ ~ 0 10 false @e[type=!armor_stand,team=Orange,r=5,tag=IsPlaying]
execute @a[score_Class_min=1,score_Class=1,score_Spell2=299,score_Spell2_min=299,score_InGame_min=1,m=2,team=Orange] ~ ~ ~ /spreadplayers ~ ~ 0 10 false @e[type=!armor_stand,team=Blue,r=5,tag=IsPlaying]

execute @a[score_Class_min=1,score_Class=1,score_Spell2_min=299,score_Spell2=299] ~ ~ ~ /particle largesmoke ~ ~1 ~ 3 0.5 3 0 30 force