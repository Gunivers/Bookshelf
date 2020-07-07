#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.14
# Last check:

# Original path: glib:biome/can_snow
# Parallelizable: true
# Note: Allow to know if can rain at the position of the player. Return 1 if possible, else 0.

#__________________________________________________
# PARAMETERS

# Input: @s glib.temperature (score)
# Output: @s glib.canRain (tag)

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if score @s glib.temperature matches 15000000..95000000 run tag @s add glib.canRain
execute if score @s glib.temperature matches 100000000.. run tag @s remove glib.canRain
execute if score @s glib.temperature matches 14000000.. run tag @s remove glib.canRain
