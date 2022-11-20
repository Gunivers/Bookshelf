tag @s add bs.collisionX

function bs.core:default_entity

scoreboard players operation @e[tag=bs.new] bs.locX = move.vectorX bs
scoreboard players set @e[tag=bs.new] bs.locY 0
scoreboard players set @e[tag=bs.new] bs.locZ 0
execute as @e[tag=bs.new] at @s run function bs.location:add/accuracy/10-3

#__________________________________________________
# Detection

execute at @e[tag=bs.new,limit=1,sort=nearest] if block ~ ~ ~ #bs.move:pass_through run tag @s remove bs.collisionX
tag @s[scores={VectorX=0}] remove bs.collisionX

# Start Debug
execute at @s[tag=bs.collisionX,tag=bs.debug.move.by_vector] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["bs","Debug"]}
# End Debug