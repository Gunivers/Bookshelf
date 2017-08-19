# TITLE: Calcul Cosinus
# PATH: Gunivers-Lib:Utils/Math/Cos

# AUTHOR: Leirof

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIEREMENT:
# - Gunivers-Lib:Import/Constant (MCfunction)
# - Gunivers-Lib:Import/Vectors (MCfunction)
# - Gunivers-Lib:Import/Orientation (MCfunction)
# - Tmp (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy)

# INPUT:
# - VectorX (score dummy)
# - VectorZ (score dummy)

# OUTPUT:
# - Phi (score dummy)
# - Theta (score dummy)

#Note: Tmp must be multiplied by 10^3 to keep decimal numbers

# CODE:
scoreboard players operation @s Res = @s VectorX
scoreboard players operation @s Res *= 1000 Constant
scoreboard players operation @s Res /= @s VectorX

scoreboard players operation @s Tmp3 = @s Res
scoreboard players operation @s Tmp3 *= @s Tmp3
scoreboard players operation @s Tmp3 /= 1000 Constant
scoreboard players operation @s Tmp3 *= 28125 Constant
scoreboard players add @s Tmp3 1
scoreboard players operation @s Res /= @s Tmp
