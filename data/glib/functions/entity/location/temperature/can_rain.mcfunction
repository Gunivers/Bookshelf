# NAME: Can Rain
# PATH: glib:entity/location/temperature/cain_rain

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.13

# OUTPUT:
# - Var1

# NOTE: Allow to know if can rain at the position of the player. Return 1 if possible, else 0.

# CODE:
execute as @s run function glib:entity/location/temperature/get_biome_temperature
execute if score @s Temperature matches 15000000..95000000 run tag @s add Glib_Can_Rain
execute if score @s Temperature matches 100000000.. run tag @s remove Glib_Can_Rain
execute if score @s Temperature matches 14000000.. run tag @s remove Glib_Can_Rain