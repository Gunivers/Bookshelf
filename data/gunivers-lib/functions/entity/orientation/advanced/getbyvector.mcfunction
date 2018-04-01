# NAME: Get Orientation By Vector Advanced
# PATH: gunivers-lib:entity/orientation/advanced/getbyvector

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

# OUTPUT:
# - Phi (score dummy)
# - Theta (score dummy)

# NOTE:

# CODE:

summon armor_stand ~ ~ ~ {Tags:["GLib-GetObV"]}

scoreboard players operation @e[tag=GLib-GetObV] VectorX = @s VectorX
scoreboard players operation @e[tag=GLib-GetObV] VectorY = @s VectorY
scoreboard players operation @e[tag=GLib-GetObV] VectorZ = @s VectorZ

execute as @e[type=armor_stand,tag=GLib-GetObV] run function gunivers-lib:entity/orientation/setbyvector
execute as @e[type=armor_stand,tag=GLib-GetObV] run function gunivers-lib:entity/orientation/advanced/get

scoreboard players operation @s Phi = @e[tag=GLib-GetObV] Phi
scoreboard players operation @s Theta = @e[tag=GLib-GetObV] Theta

kill @e[tag=GLib-GetObV]