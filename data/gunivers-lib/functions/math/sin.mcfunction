# TITLE: Sin
# PATH: Gunivers-Lib:Math/Sin

# AUTHOR: Leirof

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Temporary (Import file)
# - Gunivers-Lib:Utils/Import/Math (Import file) 
# - Gunivers-Lib:Utils/Import/Constant(Import file)

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Var1 must be in interval [0;360]

# CODE:

# Retranscription of Var1 on interval [0;180[

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s[scores={Var1=180..}] Var3 -= 180 Constant

# Calcul Sin

scoreboard players operation @s Res = @s Var3
scoreboard players operation @s Res *= Neg Constant
scoreboard players operation @s Res += 180 Constant
scoreboard players operation @s Res *= @s Var3
scoreboard players operation @s Res *= 4 Constant
scoreboard players operation @s Res *= 1000 Constant

scoreboard players operation @s Var2 = @s Var3
scoreboard players operation @s Var2 *= Neg Constant
scoreboard players operation @s Var2 += 180 Constant
scoreboard players operation @s Var2 *= @s Var3
scoreboard players operation @s Var2 *= Neg Constant
scoreboard players operation @s Var2 += 40500 Constant
scoreboard players operation @s Res /= @s Var2

scoreboard players operation @s[scores={Var1=180..}] Res *= Neg Constant
