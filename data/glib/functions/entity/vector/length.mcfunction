# NAME: Get Length
# PATH: glib:entity/vectors/getlength

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# OUTPUT:
# - Res (score dummy)

# NOTE:

# CODE:
#____________________________________________________________________________________________________

function glib:entity/vector/length_squared

scoreboard players operation @s Var1 = @s Res

function glib:math/sqrt

