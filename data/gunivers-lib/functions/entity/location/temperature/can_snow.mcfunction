# NAME: Can Rain
# PATH: gunivers-lib:entity/location/temperature/cain_snow

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Biome (score dummy)
# - gunivers-Lib:utils/import/var
# - gunivers-Lib:utils/import/location
# - Temperature(score dummy)

# OUTPUT:
# - Var1

# NOTE: Allow to know if can snow at the position of the player. Return 1 if possible, else 0.

# CODE:
execute as @s run function gunivers-lib:entity/location/temperature/get_biome_temperature
execute if score @s Temperature matches 15000000..95000000 run scoreboard players set @s Var1 0
execute if score @s Temperature matches 100000000.. run scoreboard players set @s Var1 0
execute if score @s Temperature matches ..14000000 run scoreboard players set @s Var1 1