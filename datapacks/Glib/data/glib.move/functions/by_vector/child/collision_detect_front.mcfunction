#__________________________________________________
# Clear

tag @s add glib.collisionFront

#__________________________________________________
# Create new tmp entity

function glib.core:default_entity

#__________________________________________________
# Calcul next position

scoreboard players operation @e[tag=glib.new] glib.locX = move.vectorX glib
scoreboard players operation @e[tag=glib.new] glib.locY = move.vectorY glib
scoreboard players operation @e[tag=glib.new] glib.locZ = move.vectorZ glib
execute as @e[tag=glib.new] at @s run function glib.location:add/accuracy/10-3

#__________________________________________________
# Detect block

execute at @e[tag=glib.new,limit=1,sort=nearest] if block ~ ~ ~ #glib.move:pass_through run tag @s remove glib.collisionFront