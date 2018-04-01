# NAME: Set Orientation By Vector
# PATH: gunivers-lib:entity/orientation/setbyvector

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# NOTE:

# CODE:

summon armor_stand ~ ~ ~ {Tags:["GLib-SetObV"],NoGravity:1,Invisible:0}
scoreboard players operation @e[type=armor_stand,tag=GLib-SetObV] VectorX = @s VectorX
scoreboard players operation @e[type=armor_stand,tag=GLib-SetObV] VectorY = @s VectorY
scoreboard players operation @e[type=armor_stand,tag=GLib-SetObV] VectorZ = @s VectorZ

execute as @e[type=armor_stand,tag=GLib-SetObV] run function gunivers-lib:entity/location/simplemove

tp @s ~ ~ ~ facing entity @e[tag=GLib-SetObV,limit=1]

kill @e[tag=GLib-SetObV]