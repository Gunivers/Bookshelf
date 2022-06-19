tag @s add glib.collisionX

function glib.core:default_entity

scoreboard players operation @e[tag=glib.new] glib.locX = move.vectorX glib
scoreboard players set @e[tag=glib.new] glib.locY 0
scoreboard players set @e[tag=glib.new] glib.locZ 0
execute as @e[tag=glib.new] at @s run function glib.location:add/accuracy/10-3

#__________________________________________________
# Detection

execute at @e[tag=glib.new,limit=1,sort=nearest] if block ~ ~ ~ #glib.move:pass_through run tag @s remove glib.collisionX
tag @s[scores={VectorX=0}] remove glib.collisionX

# Start Debug
execute at @s[tag=glib.collisionX,tag=glib.debug.move.by_vector] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# End Debug