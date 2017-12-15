# TITLE: Tan
# PATH: Gunivers-Lib:Math/Tan

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# Requirement:
# - Tmp1 (dummy)
# - Tmp2 (dummy)
# - Tmp3 (dummy)
# - Tmp4 (dummy)
# - Res (dummy)
# - Constant (dummy)
# - Math/Sin (MCfunction)
# - Math/Cos (MCfunction)

# INPUT:
# - Tmp1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Tmp1 must be in interval [0;360]

# CONFIGURATION:

# CODE

function Gunivers-Lib:Math/Cos

scoreboard players operation @s Tmp4 = @s Res

function Gunivers-Lib:Math/Sin

scoreboard players operation @s Res *= 1000 Constant
scoreboard players operation @s Res /= @s Tmp4

