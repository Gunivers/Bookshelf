scoreboard players operation @s TargetVectorX = @s LocX
scoreboard players operation @s TargetVectorY = @s LocY
scoreboard players operation @s TargetVectorZ = @s LocZ
scoreboard players operation @s TargetVectorX -= @e[tag=TropProche] LocX
scoreboard players operation @s TargetVectorY -= @e[tag=TropProche] LocY
scoreboard players operation @s TargetVectorZ -= @e[tag=TropProche] LocZ

function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/NormalizeVectorT
scoreboard players operation @s TargetVectorX *= 2 Constant
scoreboard players operation @s TargetVectorY *= 2 Constant
scoreboard players operation @s TargetVectorZ *= 2 Constant


