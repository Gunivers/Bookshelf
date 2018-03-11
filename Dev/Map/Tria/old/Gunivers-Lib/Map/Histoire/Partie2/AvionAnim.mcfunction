# Animation du début du chapitre 2

#Tirs des avions
scoreboard players add @e[tag=AvionAnimTir] TimerTool 1
scoreboard players set @e[tag=AvionAnimTir,score_TimerTool_min=12] TimerTool 1
execute @e[tag=AvionAnimTir,score_TimerTool_min=1,score_TimerTool=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["JustSpawned","Moving","AvionAnimBalle"],NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1}

scoreboard players set @e[tag=JustSpawned] VectorSpeed 200
execute @e[tag=JustSpawned] ~ ~ ~ scoreboard players operation @s VectorX = @e[tag=AvionAnim,r=2,c=1] VectorX
execute @e[tag=JustSpawned] ~ ~ ~ scoreboard players operation @s VectorY = @e[tag=AvionAnim,r=2,c=1] VectorY
execute @e[tag=JustSpawned] ~ ~ ~ scoreboard players operation @s VectorZ = @e[tag=AvionAnim,r=2,c=1] VectorZ
scoreboard players set @e[tag=JustSpawned] CanBeAlive -30
scoreboard players tag @e remove JustSpawned
execute @e[tag=AvionAnimBalle] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0 1 force

#Avion détruits
execute @e[tag=AvionAnimFall] ~ ~ ~ particle smoke ~ ~ ~ 0.1 0.1 0.1 0.01 50 force
scoreboard players tag @e[tag=AvionAnimExpl] add Explode
scoreboard players tag @e[tag=AvionAnimExpl] add DontKillExpl
scoreboard players tag @e[tag=AvionAnimExpl] add Falling
scoreboard players tag @e[tag=AvionAnimExpl] add AvionAnimFall
scoreboard players tag @e remove AvionAnimExpl
scoreboard players tag @e[tag=AvionAnimFall] add Explode
execute @e[tag=AvionAnimFall] ~ ~ ~ detect ~ ~-3 ~ air 0 scoreboard players tag @s remove Explode
execute @e[tag=Explode] ~ ~ ~ scoreboard players tag @s[tag=AvionAnim6] add BigExpl
execute @e[tag=Explode] ~ ~ ~ scoreboard players tag @s[tag=AvionAnim2] add HugeExpl
