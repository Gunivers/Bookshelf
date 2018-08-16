# NAME: Biome Temperature
# PATH: gunivers-lib:entity/location/temperature/get_biome_temperature

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Biome (score dummy)
# - gunivers-Lib:utils/import/var
# - gunivers-Lib:utils/import/location
# - Temperature(score dummy)

# OUTPUT:
# - Temperature(score dummy)

# NOTE: Allow to get the temperature at the altitude of the player.
#		The format of the result is :
#		temperature = biome_temperature * 10^8 - altitude_factor
#		altitude_factor = 0 if(Y - 62 < 0) else (Y - 62) * 166667
# 		Based on the wiki values.

# CODE:

execute as @s run function gunivers-lib:entity/location/Var1/get_biome_temperature
scoreboard players operation @s Temperature = @s Var1
execute as @s run function gunivers-lib:entity/location/get
scoreboard players set @s Var1 0
execute if score @s LocY matches 63.. run scoreboard operation @s Var1 = @s LocY
execute if score @s LocY matches 63.. run scoreboard operation @s Var1 -= 62 Constant
execute if score @s LocY matches 63.. run scoreboard operation @s Var1 *= 166667 Constant
execute if score @s LocY matches 63.. run scoreboard operation @s Temperature -= @s Var1