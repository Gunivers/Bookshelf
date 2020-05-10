# NAME: Get Distance
# PATH: glib:entity/location/get_distance_as_to_at

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# OUTPUT:
# - Res (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# INIT

# CODE:
#____________________________________________________________________________________________________

function glib:entity/location/accuracy/10-3/get_distance_squared_as_to_at

scoreboard players operation @s Var1 = @s Res

function glib:math/sqrt
