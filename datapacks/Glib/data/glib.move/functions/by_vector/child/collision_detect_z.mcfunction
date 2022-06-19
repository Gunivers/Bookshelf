tag @s add glib.collisionZ

function glib.core:default_entity

scoreboard players set @e[tag=glib.new] glib.locX 0
scoreboard players set @e[tag=glib.new] glib.locY 0
scoreboard players operation @e[tag=glib.new] glib.locZ = move.vectorZ glib
execute as @e[tag=glib.new] at @s run function glib.location:add/accuracy/10-3

#__________________________________________________
# Detection

execute at @e[tag=glib.new,limit=1,sort=nearest] if block ~ ~ ~ #glib.move:pass_through run tag @s remove glib.collisionZ
tag @s[scores={VectorZ=0}] remove glib.collisionZ

# Start Debug
execute at @s[tag=glib.collisionZ,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# End Debug