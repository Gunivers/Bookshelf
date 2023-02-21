#__________________________________________________
# Clear

tag @s add bs.collisionFront

#__________________________________________________
# Create new tmp entity

function bs.core:default_entity

#__________________________________________________
# Calcul next position

scoreboard players operation @e[tag=bs.new] bs.loc.x = move.vectorX bs
scoreboard players operation @e[tag=bs.new] bs.loc.y = move.vectorY bs
scoreboard players operation @e[tag=bs.new] bs.loc.z = move.vectorZ bs
execute as @e[tag=bs.new] at @s run function bs.location:add/accuracy/10-3

#__________________________________________________
# Detect block

execute at @e[tag=bs.new,limit=1,sort=nearest] if block ~ ~ ~ #bs.move:pass_through run tag @s remove bs.collisionFront