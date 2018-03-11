#Intelligences Artificielles
function Gunivers-Lib:Map/Histoire/Partie2/Tanks/TanksIA

#Detection du slot utilisé
function Gunivers-Lib:Map/Tools/GetHoldItem if @a[score_InVehicle_min=2,score_InVehicle=2]

#Recuperation du temps de reload stocké sur le char
scoreboard players add @e[score_VehicleType_min=2,score_VehicleType=2] Reloading 0
execute @a[score_InVehicle_min=2,score_InVehicle=2] ~ ~ ~ scoreboard players operation @s Reloading = @e[score_VehicleType_min=2,score_VehicleType=2,r=4,c=1] Reloading

#Tir et Rechargement
execute @a[score_InVehicle_min=2,score_InVehicle=2,score_UseCarrot_min=1,score_HoldItem_min=1,score_HoldItem=1,score_Reloading=0] ~ ~ ~ scoreboard players tag @e[score_VehicleType_min=2,score_VehicleType=2,r=4,c=1] add TankTir
function Gunivers-Lib:Map/Histoire/Partie2/Tanks/TanksTir if @e[tag=TankTir]
scoreboard players remove @e[score_Reloading_min=1] Reloading 1

#Items
replaceitem entity @a[score_InVehicle=2,score_InVehicle_min=2,score_Id_min=1,score_Id=5] slot.weapon.offhand air
replaceitem entity @a[score_InVehicle=2,score_InVehicle_min=2,score_Id_min=1,score_Id=5,tag=FRA] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Feu !"}}
replaceitem entity @a[score_InVehicle=2,score_InVehicle_min=2,score_Id_min=1,score_Id=5,tag=ENG] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Fire !"}}

#Affichage
title @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=2,score_InVehicle_min=2,score_Reloading1st_min=1,score_Id_min=1,score_Id=5,tag=FRA] actionbar {"text":"Rechargement...","bold":"true"}
title @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=2,score_InVehicle_min=2,score_Reloading1st_min=1,score_Id_min=1,score_Id=5,tag=ENG] actionbar {"text":"Reloading...","bold":"true"}
title @a[score_Reloading=0,score_InVehicle_min=2,score_InVehicle=2,score_Id_min=1,score_Id=5] actionbar {"text":""}

#Effets
gamemode 3 @a[score_InVehicle=-1]
scoreboard players tag @a[score_InVehicle_min=2,score_InVehicle=2] add Invisible
scoreboard players tag @a[score_InVehicle_min=2,score_InVehicle=2] add Invincible
scoreboard players tag @a[score_InVehicle_min=2,score_InVehicle=2] add NoExplDamage
effect @a[score_InVehicle=-1] invisibility 0
effect @a[score_InVehicle=-1] resistance 0

#Affichage de la vie
execute @a[score_InVehicle_min=2,score_InVehicle=2] ~ ~-1 ~ scoreboard players operation @s Health = @e[type=horse,tag=Tank,score_IsControled_min=1,r=1,c=1] Health
scoreboard players operation @a[score_InVehicle_min=2,score_InVehicle=2] Health /= 10 Constant
scoreboard players set @a[score_InVehicle_min=2,score_InVehicle=2,score_Health=0] Health 1

#Divers
execute @e[tag=ObusTank] ~ ~ ~ particle fireworksSpark ~ ~ ~ 0 0 0 0 1 force
scoreboard players tag @e[tag=Tank,score_Health=0] add Explode
scoreboard players tag @e[tag=CanonIA,score_Health=0] add Explode
scoreboard players tag @e[tag=Tank,score_Health=0] add BigExpl
scoreboard players tag @e[tag=CanonIA,score_Health=0] add HugeExpl
execute @e[tag=Explode] ~ ~ ~ execute @s[tag=TankIA] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["CanBeAlive","DeadTank"]}

#Affichage du model
