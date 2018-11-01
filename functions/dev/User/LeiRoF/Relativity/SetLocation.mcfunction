function Gunivers-Lib:Entity/Id/Check

execute @e[tag=IdMatch,c=1] ~ ~ ~ /function gunivers-lib:Entity/Location/Get

scoreboard players operation @s LocX += @e[tag=IdMatch,c=1] LocX
scoreboard players operation @s LocY += @e[tag=IdMatch,c=1] LocY
scoreboard players operation @s LocZ += @e[tag=IdMatch,c=1] LocZ

function Gunivers-Lib:Entity/Location/Set