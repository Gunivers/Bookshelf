# NAME: Divide
# PATH: Gunivers-Lib:Utils/Math/Divide

# AUTHOR: theogiraudet/Oromis

# VERSION: 1.0
# MINECRAFT: 1.12.1

# REQUIEREMENTS:
# - Tmp (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy)
# - Gunivers-Lib:Import/Math (MCfunction)

# INPUT:
# - Tmp (score dummy)
# - Tmp2 (score dummy)

# OUTPUT:
# - Res (score dummy)

# NOTE: 
# Allows to retrieve the value rounded to the integer near of a normal division.
# - Tmp is the divisor
# - Tmp2 is the dividend

# CONFIGURATION: <none>

# CODE:

scoreboard players operation @s Tmp3 = @s Tmp
scoreboard players operation @s Tmp3 %= @s Tmp2
scoreboard players tag @s[score_Tmp3_min=0,score_Tmp3=0] add CantApply

scoreboard players operation @s[tag=!CantApply] Tmp3 = @s[tag=!CantApply] Tmp
scoreboard players operation @s[tag=!CantApply] Tmp3 %= 10 Constant

scoreboard players operation @s Res = @s Tmp
scoreboard players operation @s[tag=!CantApply] Res /= @s[tag=!CantApply] Tmp2
scoreboard players add @s[tag=!CantApply,score_Tmp3_min=5] Res 1 

scoreboard players operation @s[tag=CantApply] Res /= @s[tag=CantApply] Tmp2

scoreboard players tag @s[tag=CantApply] remove CantApply

