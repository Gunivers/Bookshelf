#Calcule un vecteur vers l'entité ayant l'id stocké dans le TargetId de l'executant
scoreboard players tag @s add Self
scoreboard players operation @e[tag=!Self] ShooterId -= @s TargetId

#Passe le résultat de Loc (Executant) - Loc (Cible) sur TargetVector (Executant)
scoreboard players operation @s TargetVectorX = @e[score_ShooterId_min=0,score_ShooterId=0,tag=Fighting] LocX
scoreboard players operation @s TargetVectorY = @e[score_ShooterId_min=0,score_ShooterId=0,tag=Fighting] LocY
scoreboard players operation @s TargetVectorZ = @e[score_ShooterId_min=0,score_ShooterId=0,tag=Fighting] LocZ
scoreboard players operation @s TargetVectorX -= @s LocX
scoreboard players operation @s TargetVectorY -= @s LocY
scoreboard players operation @s TargetVectorZ -= @s LocZ

function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/NormalizeVectorT

scoreboard players operation @e[tag=!Self] ShooterId += @s TargetId
scoreboard players tag @s remove Self