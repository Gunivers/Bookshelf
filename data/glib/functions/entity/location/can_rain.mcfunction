#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.14
# Last check:

# Original path: glib:entity/location/can_snow
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Note: Allow to know if can rain at the position of the player. Return 1 if possible, else 0.

#__________________________________________________
# PARAMETERS

# Output: Glib_CanRain (tag)

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute as @s run function glib:entity/location/get_biome_temperature
execute if score @s Temperature matches 15000000..95000000 run tag @s add Glib_CanRain
execute if score @s Temperature matches 100000000.. run tag @s remove Glib_CanRain
execute if score @s Temperature matches 14000000.. run tag @s remove Glib_CanRain
