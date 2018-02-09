execute @a[score_InGame_min=1,score_Class_min=2,score_Class=2,score_Spell3_min=1498,m=2] ~ ~ ~ /playsound entity.firework.blast record @a ~ ~ ~ 2 0.5 1
execute @e[score_InGame_min=1,score_Class_min=2,score_Class=2,score_Spell3_min=1498,m=2] ~ ~ ~ /particle flame ~ ~5 ~ 0.5 10 0.5 0 100 force
execute @e[score_InGame_min=1,score_Class_min=2,score_Class=2,score_Spell3_min=1498,m=2] ~ ~ ~ /particle largesmoke ~ ~5 ~ 0.5 10 0.5 0 100 force

execute @a[score_Class_min=2,score_Class=2,score_InGame_min=1,m=2,score_Spell3_min=1460,score_Spell3=1460,team=Blue] ~ ~ ~ /execute @a[team=Orange,tag=IsPlaying,c=10] ~ ~ ~ /summon armor_stand ~ ~15 ~ {NoGravity:1,Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,Tags:["023B","023G","Projectile","Blue","NotOrange"]}
execute @a[score_Class_min=2,score_Class=2,score_InGame_min=1,m=2,score_Spell3_min=1460,score_Spell3=1460,team=Orange] ~ ~ ~ /execute @a[team=Blue,tag=IsPlaying,c=10] ~ ~ ~ /summon armor_stand ~ ~15 ~ {NoGravity:1,Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,Tags:["023R","023G","Projectile","Orange","NotBlue"]}
execute @a[score_Class_min=2,score_Class=2,score_InGame_min=1,m=2,score_Spell3_min=1480,score_Spell3=1480,team=Blue] ~ ~ ~ /execute @a[team=Orange,tag=IsPlaying,c=10] ~ ~ ~ /summon armor_stand ~ ~15 ~ {NoGravity:1,Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,Tags:["023B","023G","Projectile","Blue","NotOrange"]}
execute @a[score_Class_min=2,score_Class=2,score_InGame_min=1,m=2,score_Spell3_min=1480,score_Spell3=1480,team=Orange] ~ ~ ~ /execute @a[team=Blue,tag=IsPlaying,c=10] ~ ~ ~ /summon armor_stand ~ ~15 ~ {NoGravity:1,Marker:1b,Invisible:1b,Small:1,DisabledSlots:31,Invulnerable:1,NoBasePlate:1,Tags:["023R","023G","Projectile","Orange","NotBlue"]}

scoreboard players set @e[type=armor_stand,tag=023B] Class -2
scoreboard players set @e[type=armor_stand,tag=023R] Class 2

scoreboard players set @e[type=armor_stand,tag=023G] DirY -1000
scoreboard players set @e[type=armor_stand,tag=023G] DirX 0
scoreboard players set @e[type=armor_stand,tag=023G] DirZ 0
scoreboard players tag @e[type=armor_stand,tag=023G] add DirMoving
scoreboard players set @e[type=armor_stand,tag=023G] DirSpeed 100
