function Gunivers-Lib:Entity/Id/Check

execute @e[tag=IdMatch,c=1] ~ ~ ~ /function gunivers-lib:Entity/Orientation/Get

#execute @e[tag=IdMatch,c=1] ~ ~ ~ tellraw @s ["",{"text":"[DEBUG] ","color":"green"},{"text":"Phi: ","color":"none"},{"score":{"name":"@s","objective":"Phi"},"color":"none"},{"text":" Theta: ","color":"none"},{"score":{"name":"@s","objective":"Theta"},"color":"none"}]

scoreboard players operation @s Phi += @e[tag=IdMatch,c=1] Phi
scoreboard players operation @s Theta += @e[tag=IdMatch,c=1] Theta

scoreboard players operation @s Phi %= 360 Constant
scoreboard players operation @s Theta %= 180 Constant

function Gunivers-Lib:Entity/Orientation/Set