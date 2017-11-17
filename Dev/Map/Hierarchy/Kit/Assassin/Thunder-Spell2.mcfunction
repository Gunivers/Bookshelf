scoreboard players set @e[type=armor_stand,tag=AT2G] DirWall 10
execute @e[type=armor_stand,score_Class_min=13,score_Class=13] ~ ~ ~ /tp @e[team=Blue,r=3,score_LifeState_min=500] @p[team=Orange,score_Class_min=13,score_Class=13,score_Spell2_min=400]
execute @e[type=armor_stand,score_Class_min=-13,score_Class=-13] ~ ~ ~ /tp @e[team=Orange,r=3,score_LifeState_min=500] @p[team=Blue,score_Class_min=13,score_Class=13,score_Spell2_min=400]
execute @e[type=armor_stand,tag=AT2G] ~ ~ ~ /playsound entity.arrow.shoot record @a[r=10] ~ ~ ~ 1 2 0.5

execute @e[type=armor_stand,tag=AT2G] ~ ~ ~ /particle spell ~ ~ ~ 0.5 0.5 0.5 0 7 force
execute @e[type=armor_stand,tag=AT2G] ~ ~ ~ /particle sweepAttack ~ ~ ~ 1 1 1 0 1 force