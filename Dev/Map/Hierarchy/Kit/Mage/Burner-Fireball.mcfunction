scoreboard players set @e[type=armor_stand,tag=MBG] DirSpeed 100
scoreboard players set @e[type=armor_stand,tag=MBG] DirCollision 1

scoreboard players tag @e[type=armor_stand,tag=MBG,score_Timer_min=30] add DirCollision

execute @a[team=Orange,tag=IsPlaying] ~ ~ ~ /scoreboard players tag @e[type=armor_stand,score_Class_min=-2,score_Class=-2,r=3] add DirCollision
execute @a[team=Blue,tag=IsPlaying] ~ ~ ~ /scoreboard players tag @e[type=armor_stand,score_Class_min=2,score_Class=2,r=3] add DirCollision

execute @e[type=armor_stand,tag=MBG,tag=DirCollision] ~ ~ ~ /particle hugeexplosion ~ ~ ~ 0 0 0 0 1
execute @e[type=armor_stand,tag=MBG,tag=DirCollision] ~ ~ ~ /playsound entity.generic.explode record @a[r=30] ~ ~ ~ 2 1 1


execute @e[type=armor_stand,score_Class_min=-2,score_Class=-2,tag=DirCollision] ~ ~ ~ /scoreboard players set @e[tag=AffectByBlue,r=3] EffDamage 1002
execute @e[type=armor_stand,score_Class_min=2,score_Class=2,tag=DirCollision] ~ ~ ~ /scoreboard players set @e[tag=AffectByOrange,r=3] EffDamage 1002
execute @e[type=armor_stand,score_Class_min=-2,score_Class=-2,tag=DirCollision] ~ ~ ~ /scoreboard players set @e[team=!Blue,tag=IsPlaying,r=3] TouchBy 2
execute @e[type=armor_stand,score_Class_min=2,score_Class=2,tag=DirCollision] ~ ~ ~ /scoreboard players set @e[team=!Orange,tag=IsPlaying,r=3] TouchBy 2

execute @e[type=armor_stand,tag=MBG] ~ ~ ~ /particle flame ~ ~0 ~ 0.3 0.3 0.3 0 3 force
execute @e[type=armor_stand,tag=MBG] ~ ~ ~ /particle largesmoke ~ ~0 ~ 0.3 0.3 0.3 0 3 force

kill @e[type=armor_stand,tag=MBG,tag=DirCollision]