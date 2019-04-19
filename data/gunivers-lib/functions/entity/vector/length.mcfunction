# NAME: Get Length
# PATH: gunivers-lib:entity/vectors/getlength

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

function gunivers-lib:entity/vectors/getlengthsquared

scoreboard players operation @s Var1 = @s Res

function gunivers-lib:math/sqrt

