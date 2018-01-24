# TITLE: Tan
# PATH: Gunivers-Lib:Math/Tan

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Temporary (Import file)
# - Gunivers-Lib:Utils/Import/Math (Import file) 
# - Gunivers-Lib:Utils/Import/Constant(Import file)

# INPUT:
# - Tmp1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Tmp1 must be in interval [0;360]

# CODE

function Gunivers-Lib:Math/Cos

scoreboard players operation @s Tmp4 = @s Res

function Gunivers-Lib:Math/Sin

scoreboard players operation @s Res *= 1000 Constant
scoreboard players operation @s Res /= @s Tmp4

