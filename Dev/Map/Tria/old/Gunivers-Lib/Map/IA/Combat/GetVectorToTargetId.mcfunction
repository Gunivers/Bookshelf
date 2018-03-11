#Calcule un vecteur vers l'entité ayant l'id stocké dans le TargetId de l'executant
scoreboard players tag @s add Self
scoreboard players operation @e[tag=!Self] ShooterId -= @s TargetId

#Passe le résultat de Loc (Executant) - Loc (Cible) sur Vector (Executant)
scoreboard players operation @s VectorX = @e[score_ShooterId_min=0,score_ShooterId=0,tag=Fighting] LocX
scoreboard players operation @s VectorY = @e[score_ShooterId_min=0,score_ShooterId=0,tag=Fighting] LocY
scoreboard players operation @s VectorZ = @e[score_ShooterId_min=0,score_ShooterId=0,tag=Fighting] LocZ
scoreboard players operation @s VectorX -= @s LocX
scoreboard players operation @s VectorY -= @s LocY
scoreboard players operation @s VectorZ -= @s LocZ

function Gunivers-Lib:Map/Tools/NormalizeVector

scoreboard players operation @e[tag=!Self] ShooterId += @s TargetId
scoreboard players tag @s remove Self