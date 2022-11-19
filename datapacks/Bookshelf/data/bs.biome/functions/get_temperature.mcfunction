#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.14
# Last check:

# Original path: glib.biome:get_temperature_at_player
# Parallelizable: true
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

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s glib.var0 0
function glib.biome:get_biome_temperature
execute if score @s glib.locY matches 63.. run scoreboard players operation @s glib.var0 = @s glib.locY
execute if score @s glib.locY matches 63.. run scoreboard players operation @s glib.var0 -= 62 glib.const
execute if score @s glib.locY matches 63.. run scoreboard players operation @s glib.var0 *= 166667 glib.const
execute if score @s glib.locY matches 63.. run scoreboard players operation @s glib.temperature -= @s glib.var0
