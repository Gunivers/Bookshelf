#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.14
# Last check:

# Original path: glib:biome/can_snow
# Parallelizable: true
# Note: Allow to know if can snow at the position of the player. Return 1 if possible, else 0.

#__________________________________________________
# PARAMETERS

# Input: @s glib.temperature (score)
# Output: glib.canSnow (tag)

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute as @s run function glib:biome/get_biome_temperature
execute if score @s glib.temperature matches 15000000..95000000 run tag @s remove glib.canSnow
execute if score @s glib.temperature matches 100000000.. run tag @s remove glib.canSnow
execute if score @s glib.temperature matches ..14000000 run tag @s add glib.canSnow
