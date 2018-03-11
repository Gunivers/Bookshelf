#Gere ce qui concerne les véhicules terrestres

#Acceleration et Desceleration
execute @e[score_Driving_min=1] ~ ~ ~ scoreboard players set @e[score_VehicleType_min=1,score_VehicleType=9,r=2,c=1] TimerTool 0
execute @e[score_InVehicle_min=1,score_InVehicle=9,score_Driving=0] ~ ~ ~ scoreboard players add @e[score_VehicleType_min=1,score_VehicleType=9,r=2,c=1] TimerTool 1
scoreboard players set @e[score_TimerTool_min=3,score_VehicleType_min=1,score_VehicleType=9] GroundSpeed 0
scoreboard players set @e[score_TimerTool_min=4,score_VehicleType_min=1,score_VehicleType=9] TimerTool 3
execute @e[score_Driving_min=1,score_InVehicle_min=1,score_InVehicle=1] ~ ~ ~ scoreboard players add @e[score_VehicleType_min=1,score_VehicleType=1,r=2,c=1] GroundSpeed 20
execute @e[score_Driving_min=1,score_InVehicle_min=2,score_InVehicle=2] ~ ~ ~ scoreboard players add @e[score_VehicleType_min=2,score_VehicleType=2,r=2,c=1] GroundSpeed 10
scoreboard players set @e[score_GroundSpeed_min=5001] GroundSpeed 5000
scoreboard players set @e[score_GroundSpeed=-1] GroundSpeed 0

#Actualise la vitesse du cheval si elle doit l'etre
execute @e[score_VehicleType_min=1,score_VehicleType=9] ~ ~ ~ scoreboard players operation @s SpeedDiff -= @s GroundSpeed
scoreboard players tag @e[score_VehicleType_min=1,score_VehicleType=9] add UpdateSpeed
scoreboard players tag @e[score_SpeedDiff_min=0,score_SpeedDiff=0] add UpdateSpeed
execute @e[score_VehicleType_min=1,score_VehicleType=9] ~ ~ ~ scoreboard players operation @s SpeedDiff = @s GroundSpeed
function Gunivers-Lib:Map/VehiculesSol/UpdateHorseSpeed if @e[tag=UpdateSpeed]

#Ajoute une selle
entitydata @e[tag=AddSaddle] {SaddleItem:{id:"minecraft:saddle",Count:1b}}
clear @a saddle

#Gestion du model détaché (quand le cheval n'est pas monté)
scoreboard players tag @e remove AddModel
scoreboard players tag @e[score_VehicleType_min=1,score_VehicleType=9,score_IsControled=0] add AddModel
scoreboard players tag @e[tag=VehiSolModel] add KillModel
execute @e[score_VehicleType_min=1,score_VehicleType=9,score_IsControled=0] ~ ~ ~ scoreboard players tag @e[tag=VehiSolModel,r=2,c=1] remove KillModel
execute @e[tag=ModelQuad] ~ ~ ~ scoreboard players tag @e[score_VehicleType_min=1,score_VehicleType=1,r=2,c=1] remove AddModel
execute @e[tag=ModelTank] ~ ~ ~ scoreboard players tag @e[score_VehicleType_min=2,score_VehicleType=2,r=2,c=1] remove AddModel
execute @e[tag=KillModel] ~ ~ ~ kill @s[tag=VehiSolModel]
execute @e[score_VehicleType_min=1,score_VehicleType=1,tag=AddModel] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["CanBeAlive","VehiSolModel","ModelQuad"],NoGravity:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"stone",Count:1b}]}
execute @e[score_VehicleType_min=2,score_VehicleType=2,tag=AddModel] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["CanBeAlive","VehiSolModel","ModelTank"],NoGravity:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"stone",Count:1b}]}
execute @e[tag=VehiSolModel] ~ ~ ~ tp @s @e[score_VehicleType_min=1,score_VehicleType=9,r=2,c=1]

#Gestion du model sur la tete du joueur
execute @a[score_InVehicle_min=1,score_InVehicle=1] ~ ~ ~ function Gunivers-Lib:Map/VehiculesSol/ModelQuadOnHead
execute @a[score_InVehicle_min=2,score_InVehicle=2] ~ ~ ~ function Gunivers-Lib:Map/VehiculesSol/ModelTankOnHead

#Divers
scoreboard players set @a Driving 0


