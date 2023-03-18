tag @s add bs.collisionZ

function bs.core:entity/summon

scoreboard players set @e[tag=bs.new] bs.loc.x 0
scoreboard players set @e[tag=bs.new] bs.loc.y 0
scoreboard players operation @e[tag=bs.new] bs.loc.z = move.vectorZ bs
execute as @e[tag=bs.new] at @s run function bs.location:add/accuracy/10-3

#__________________________________________________
# Detection

execute at @e[tag=bs.new,limit=1,sort=nearest] if block ~ ~ ~ #bs.move:pass_through run tag @s remove bs.collisionZ
tag @s[scores={VectorZ=0}] remove bs.collisionZ

# Start Debug
execute at @s[tag=bs.collisionZ,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["bs","Debug"]}
# End Debug