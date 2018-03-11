#Calcule un vecteur vers le centre de la bataille spaciale (2000 128 2000)
scoreboard players operation @s TargetVectorX = 2000 Constant
scoreboard players operation @s TargetVectorY = 128 Constant
scoreboard players operation @s TargetVectorZ = 2000 Constant
scoreboard players operation @s TargetVectorX -= @s LocX
scoreboard players operation @s TargetVectorY -= @s LocY
scoreboard players operation @s TargetVectorZ -= @s LocZ

#Inverse le vecteur si l'avion s'eloigne de l'astéroide
scoreboard players operation @s[tag=PlaneCenterE] TargetVectorX *= Neg Constant
scoreboard players operation @s[tag=PlaneCenterE] TargetVectorY *= Neg Constant
scoreboard players operation @s[tag=PlaneCenterE] TargetVectorZ *= Neg Constant

function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/NormalizeVectorT





