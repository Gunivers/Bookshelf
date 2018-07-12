# NAME: Get Next Pow 2
# PATH: gunivers-lib:math/get_pow2

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Vars
# - Math

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Res (score dummy)

# NOTE:

# CONFIGURATION:

# CODE:
scoreboard players operation @s Res *= 2 Constant
execute if score @s Res < @s Var1 run function gunivers-lib:math/child/get_pow2_loop
