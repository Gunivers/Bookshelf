#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.14
# Last check:

# Original path: glib:entity/location/get_temperature_at_player
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Note: Allow to get the temperature at the altitude of the player.
#		The format of the result is :
#		temperature = biome_temperature * 10^8 - altitude_factor
#		altitude_factor = 0 if(Y - 62 < 0) else (Y - 62) * 166667
# 	Based on the wiki values.

#__________________________________________________
# PARAMETERS

# Output: Temperature (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute as @s run function glib:entity/location/get_biome_temperature
execute as @s run function glib:entity/location/get
scoreboard players set @s glib.var 0
execute if score @s LocY matches 63.. run scoreboard players operation @s glib.var = @s LocY
execute if score @s LocY matches 63.. run scoreboard players operation @s glib.var -= 62 glib.const
execute if score @s LocY matches 63.. run scoreboard players operation @s glib.var *= 166667 glib.const
execute if score @s LocY matches 63.. run scoreboard players operation @s Temperature -= @s glib.var
