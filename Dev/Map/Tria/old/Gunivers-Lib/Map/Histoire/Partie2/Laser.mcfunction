#Tir des particules
scoreboard players add @e[tag=LStart] LaserTime 1
scoreboard players add @e[tag=LStart] TimerTool 1
scoreboard players set @e[tag=LStart,score_TimerTool_min=3] TimerTool 1
execute @e[tag=LStart,score_LaserTime_min=1,score_LaserTime=200,score_TimerTool=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["Moving","CanBeAlive","SetLaserData","Laser","ParticleAim"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"Laser"}
execute @e[tag=LStart,score_LaserTime_min=201,score_LaserTime=201] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["Moving","CanBeAlive","SetLaserData","Laser","ParticleEnergy"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"Laser"}
execute @e[tag=LStart,score_LaserTime_min=201,score_LaserTime=201] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["Moving","CanBeAlive","SetLaserData","Laser","ParticleEnergy","EnAvance"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"Laser"}
execute @e[tag=LStart,score_LaserTime_min=202,score_LaserTime=202] ~ ~ ~ scoreboard players set @e[tag=ParticleEnergy] VectorSpeed 120

execute @e[tag=ParticleAim] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0.002 1 force
execute @e[tag=ParticleEnergy] ~ ~ ~ particle cloud ~ ~ ~ 0.1 0.1 0.1 0 30 force
execute @e[tag=LaserEnd] ~ ~ ~ kill @e[tag=Laser,r=5]
execute @e[tag=ParticleEnergy] ~ ~ ~ scoreboard players tag @e[tag=LaserEnd,r=8] add Explode
execute @e[tag=ParticleEnergy] ~ ~ ~ scoreboard players tag @e[tag=LaserEnd,r=8] add HugeExpl
execute @e[tag=ParticleEnergy] ~ ~ ~ execute @e[tag=LaserEnd,r=8] ~ ~ ~ kill @e[tag=LStart,c=1]
execute @e[tag=ParticleEnergy] ~ ~ ~ execute @e[tag=LaserEnd,r=8] ~ ~ ~ kill @e[tag=ParticleEnergy,r=10]

#Initialisation du projectile
execute @e[tag=SetLaserData] ~ ~ ~ scoreboard players operation @s VectorX = @e[tag=LStart,r=5] VectorX
execute @e[tag=SetLaserData] ~ ~ ~ scoreboard players operation @s VectorY = @e[tag=LStart,r=5] VectorY
execute @e[tag=SetLaserData] ~ ~ ~ scoreboard players operation @s VectorZ = @e[tag=LStart,r=5] VectorZ
execute @e[tag=SetLaserData] ~ ~ ~ scoreboard players operation @s VectorSpeed = @r[type=armor_stand,tag=Random,score_Random_min=2,score_Random=5] Random
execute @e[tag=SetLaserData] ~ ~ ~ scoreboard players operation @s VectorSpeed *= 50 Constant
execute @e[tag=SetLaserData] ~ ~ ~ scoreboard players operation @s Tmp = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=10] Random
execute @e[tag=SetLaserData] ~ ~ ~ scoreboard players operation @s Tmp *= 5 Constant
execute @e[tag=SetLaserData] ~ ~ ~ scoreboard players operation @s VectorSpeed += @s Tmp
execute @e[tag=SetLaserData] ~ ~ ~ scoreboard players set @e[tag=ParticleEnergy] VectorSpeed 80
scoreboard players set @e[tag=EnAvance] VectorSpeed 120
scoreboard players tag @e remove SetLaserData













