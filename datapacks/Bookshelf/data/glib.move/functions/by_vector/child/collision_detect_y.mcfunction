tag @s add bs.collisionY

function bs.core:default_entity

scoreboard players set @e[tag=bs.new] bs.locX 0
scoreboard players operation @e[tag=bs.new] bs.locY = move.vectorY glib
scoreboard players set @e[tag=bs.new] bs.locZ 0
execute as @e[tag=bs.new] at @s run function bs.location:add/accuracy/10-3

#__________________________________________________
# Detection

execute at @e[tag=bs.new,limit=1,sort=nearest] if block ~ ~ ~ #bs.move:pass_through run tag @s remove bs.collisionY
tag @s[scores={VectorY=0}] remove bs.collisionY

# Start Debug
execute at @s[tag=bs.collisionY,tag=bs.debug.move.by_vector] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# End Debug