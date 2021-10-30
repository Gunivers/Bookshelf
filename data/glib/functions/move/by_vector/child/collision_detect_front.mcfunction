#__________________________________________________
# Clear

tag @s add glib.collisionFront

#__________________________________________________
# Create new tmp entity

function gutils:default_entity

#__________________________________________________
# Calcul next position

scoreboard players operation @e[tag=glib.new] glib.locX = move.vectorX glib
scoreboard players operation @e[tag=glib.new] glib.locY = move.vectorY glib
scoreboard players operation @e[tag=glib.new] glib.locZ = move.vectorZ glib
execute as @e[tag=glib.new] at @s run function glib:location/add/accuracy/10-3

#__________________________________________________
# Detect block

execute at @e[type=area_effect_cloud,tag=glib.new,limit=1,sort=nearest] if block ~ ~ ~ #glib:move/by_vector/ignore_hitbox run tag @s remove glib.collisionFront

# Start Debug
execute if entity @a[tag=glib.debug.move.by_vector] at @a[tag=debug] at @e[tag=glib.new,distance=..30] run summon falling_block ~-0.01 ~-0.51 ~-0.46 {BlockState:{Name:"oak_button"},NoGravity:1,Time:50,Tags:["glib","glib.debug"]}
execute if entity @a[tag=glib.debug.move.by_vector] at @a[tag=debug] at @e[tag=glib.new,distance=..30,tag=glib.collisionFront] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"coal_block"},NoGravity:1,Time:50,Tags:["glib","glib.debug"]}
# End Debug
