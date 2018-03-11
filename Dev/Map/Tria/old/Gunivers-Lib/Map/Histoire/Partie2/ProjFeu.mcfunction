#Spawn des projectiles (Mettre les armorstand avec ProjShooter un peu avant, et laisser tourner pour désyncroniser les timers)
scoreboard players add @e[tag=ProjShooter] TimerTool 0
scoreboard players operation @e[tag=ProjShooter,score_TimerTool=0] Tmp = @r[type=armor_stand,tag=Random,score_Random_min=2,score_Random=5] Random
scoreboard players operation @e[tag=ProjShooter,score_TimerTool=0] Tmp *= 50 Constant
scoreboard players operation @e[tag=ProjShooter,score_TimerTool=0] Tmp2 = @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=10] Random
execute @e[tag=ProjShooter,score_TimerTool=0] ~ ~ ~ scoreboard players operation @s Tmp += @s Tmp2
execute @e[tag=ShootProjFeu,score_TimerTool=0] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["CanBeAlive","Falling","JustSpawned","Moving","HasCollisions","NoGlassColl","NoBarsColl","NoKillCollide","ProjFeu"],ArmorItems:[{},{},{},{id:"minecraft:magma",Count:1b}],Small:1,NoGravity:1,Invisible:1,NoBasePlate:1,Marker:1,CustomName:"ProjFeu"}
execute @e[tag=ProjShooter,score_TimerTool=0] ~ ~ ~ scoreboard players operation @s TimerTool = @s Tmp
scoreboard players remove @e[tag=ProjShooter] TimerTool 1

scoreboard players set @e[tag=JustSpawned] VectorSpeed 60
scoreboard players set @e[tag=JustSpawned] Imprecision 15
scoreboard players set @e[tag=JustSpawned] GravityScale 70
execute @e[tag=JustSpawned] ~ ~ ~ scoreboard players operation @s VectorX = @e[tag=ShootProjFeu,r=2,c=1] VectorX
execute @e[tag=JustSpawned] ~ ~ ~ scoreboard players operation @s VectorY = @e[tag=ShootProjFeu,r=2,c=1] VectorY
execute @e[tag=JustSpawned] ~ ~ ~ scoreboard players operation @s VectorZ = @e[tag=ShootProjFeu,r=2,c=1] VectorZ
tp @e[tag=JustSpawned] ~ ~1.7 ~
execute @e[tag=JustSpawned] ~ ~ ~ function Gunivers-Lib:Map/Tools/RandomizeVec
scoreboard players tag @e remove JustSpawned

execute @e[tag=ProjFeu] ~ ~ ~ particle flame ~ ~ ~ 0 0 0 0.01 2 force

#Touche le sol
execute @e[tag=ProjFeuExpl] ~ ~ ~ particle flame ~ ~0.5 ~ 0 0 0 0.1 50 force
execute @e[tag=ProjFeuExpl] ~ ~ ~ playsound
execute @e[tag=ProjFeuExpl] ~ ~ ~ scoreboard players remove @e[r=3] Health 3
kill @e[tag=ProjFeuExpl]






