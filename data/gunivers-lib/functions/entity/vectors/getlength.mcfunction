# NAME: Get Length
# PATH: gunivers-lib:entity/vectors/getlength

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - gunivers-lib:utils/import/var
# - gunivers-lib:utils/import/vectors
# - gunivers-lib:entity/vectors/getlength
# - gunivers-lib:math/sqrt

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# OUTPUT:
# - Res (score dummy)

# NOTE:

# CODE:

function gunivers-lib:entity/vectors/getlengthsquared

scoreboard players operation @s Var1 = @s Res

function gunivers-lib:math/sqrt

