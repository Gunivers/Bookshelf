# TITLE: Tan Accurate
# PATH: gunivers-lib:Math/advanced/tan

# AUTHOR: KubbyDev

# VERSION: 1.1
# MINECRAFT: 1.13.X

# Requirement:
# - Vars (Module)
# - Math (Module) 
# - Constants (Module)

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Var1 must be in interval [0;360 000]

# CONFIGURATION:

# CODE

function gunivers-lib:math/advanced/cos

scoreboard players operation @s Var4 = @s Res

function gunivers-lib:math/advanced/sin

scoreboard players operation @s Res *= 1000 Constant
scoreboard players operation @s Res /= @s Var4

