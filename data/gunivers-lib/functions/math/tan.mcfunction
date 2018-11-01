# TITLE: Tan
# PATH: gunivers-lib:math/tan

# AUTHOR: KubbyDev

# VERSION: 1.1
# MINECRAFT: 1.13.X

# REQUIREMENTS:
# - Vars (Module)
# - Math (Module) 
# - Constants (Module)

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Var1 must be in interval [0;360]
# - The result is rounded 10^-3

# CODE

function gunivers-lib:math/cos

scoreboard players operation @s Var4 = @s Res

function gunivers-lib:math/sin

scoreboard players operation @s Res *= 1000 Constant
scoreboard players operation @s Res /= @s Var4

