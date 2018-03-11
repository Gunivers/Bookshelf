#Changement de comportement
scoreboard players set @e[tag=TankIA] Tmp 0
execute @e[tag=CanonIA] ~ ~ ~ scoreboard players set @e[tag=TankIA,score_TankDistance_min=1,score_TankDistance=1,r=16] Tmp 1
execute @e[tag=CanonIA] ~ ~ ~ scoreboard players set @e[tag=TankIA,score_TankDistance_min=2,score_TankDistance=2,r=19] Tmp 1
execute @e[tag=CanonIA] ~ ~ ~ scoreboard players set @e[tag=TankIA,score_TankDistance_min=3,score_TankDistance=3,r=22] Tmp 1
execute @e[tag=CanonIA] ~ ~ ~ scoreboard players set @e[tag=TankIA,score_TankDistance_min=4,score_TankDistance=4,r=25] Tmp 1
execute @e[tag=CanonIA] ~ ~ ~ scoreboard players set @e[tag=TankIA,score_TankDistance_min=5,score_TankDistance=5,r=28] Tmp 1
scoreboard players tag @e[tag=TankIA,score_Tmp_min=1] add ModeTir
execute @e[tag=TankIA,score_Tmp_min=1] ~ ~ ~ scoreboard players tag @s[tag=MoveIA] add FinMouvement
scoreboard players tag @e[tag=TankIA,score_Tmp=0] add MoveIA
scoreboard players tag @e[tag=TankIA,score_Tmp=0] remove ModeTir
scoreboard players tag @e[tag=TankIA,score_Tmp=0] remove TankCanShoot

#Mode Tir

#Recherche de cibles
scoreboard players tag @e[tag=ModeTir] add TargetDead
execute @e[tag=ModeTir] ~ ~ ~ function Gunivers-Lib:Map/Tools/IsTargetDead
execute @e[tag=ModeTir] ~ ~ ~ scoreboard players tag @s[tag=!TargetDead] add TankCanShoot
execute @e[tag=ModeTir] ~ ~ ~ scoreboard players tag @s[tag=TargetDead] add TankSearchTa
scoreboard players tag @e[tag=TankSearchTa] remove TankCanShoot
execute @e[tag=TankSearchTa,score_Team_min=1,score_Team=1] ~ ~ ~ scoreboard players operation @s TargetId = @r[type=armor_stand,tag=CanonIA,r=30] ShooterId
execute @e[tag=TankSearchTa,score_Team_min=2,score_Team=2] ~ ~ ~ scoreboard players operation @s TargetId = @r[type=horse,tag=Tank,r=20] ShooterId
execute @e[tag=TankSearchTa,score_Team_min=2,score_Team=2] ~ ~ ~ scoreboard players operation @s TargetId = @r[type=armor_stand,tag=TankIA,r=31] ShooterId
scoreboard players tag @e remove TankSearchTa

#Tir
scoreboard players tag @e[tag=TankCanShoot] add TankTir
scoreboard players tag @e[tag=TankCanShoot,score_Reloading_min=1] remove TankTir
execute @e[tag=TankTir] ~ ~ ~ function Gunivers-Lib:Map/IA/Combat/GetVectorToTargetId

#Gestion du villageois sur les canons
execute @e[tag=InitCanon] ~ ~ ~ summon villager ~ ~2 ~ {NoAI:1,Tags:["TargetIA","Invisible","CanBeAlive","Invincible","Team2","CanonTarget"],Silent:1}
scoreboard players tag @e remove InitCanon
scoreboard players set @e[tag=CanonTarget] Tmp 0
execute @e[tag=CanonIA] ~ ~2 ~ scoreboard players set @e[tag=CanonTarget,r=1,c=1] Tmp 1
scoreboard players set @e[tag=CanonTarget,score_Tmp=0] CanBeAlive 0

#Spawners de Tanks
scoreboard players add @e[tag=TankSpawner] TimerTool4 0
execute @e[tag=TankSpawner,score_TimerTool4_min=0,score_TimerTool4=0] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:"Tank",CustomNameVisible:1,Marker:1,ShowArms:1,Tags:["NoAnimLegs","CanBeAlive","Team1","InitIA","InitMoveIA","Fighting","Tank","TankIA"],NoBasePlate:1}
scoreboard players operation @e[tag=TankSpawner,score_TimerTool4_min=0,score_TimerTool4=0] Random = @r[type=armor_stand,tag=Random,score_Random_min=8,score_Random=10] Random
scoreboard players operation @e[tag=TankSpawner,score_TimerTool4_min=0,score_TimerTool4=0] Random *= 20 Constant
scoreboard players operation @e[tag=TankSpawner,score_TimerTool4_min=0,score_TimerTool4=0] Random += @r[type=armor_stand,tag=Random,score_Random_min=1,score_Random=10] Random
execute @e[tag=TankSpawner,score_TimerTool4_min=0,score_TimerTool4=0] ~ ~ ~ scoreboard players operation @s TimerTool4 = @s Random
scoreboard players set @e[tag=TankSpawner] Tmp 1
execute @e[tag=TankIA] ~ ~ ~ scoreboard players set @e[tag=TankSpawner,r=2] Tmp 0
scoreboard players remove @e[tag=TankSpawner,score_Tmp_min=1] TimerTool4 1

#Divers
execute @e[tag=MoveIA] ~ ~ ~ scoreboard players tag @s[tag=TankIA] add AskLocation
scoreboard players tag @e[tag=Tank,score_IsControled_min=1] add AskLocation
execute @e[tag=CanonIA] ~ ~ ~ scoreboard players tag @e[score_Team_min=1,score_Team=1,tag=ObusTank,r=3] add Explode
execute @e[tag=Tank] ~ ~ ~ scoreboard players tag @e[score_Team_min=2,score_Team=2,tag=ObusTank,r=3] add Explode