# NAME: Divide 
# PATH: Gunivers-Lib:Math/Divide 
 
# AUTHOR: theogiraudet/Oromis 
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIREMENTS: 
# - Gunivers-Lib:Utils/Import/Temporary (Import file)
# - Gunivers-Lib:Utils/Import/Math (Import file) 
# - Gunivers-Lib:Utils/Import/Constant(Import file)
 
# INPUT: 
# - Tmp1 (score dummy) 
# - Tmp2 (score dummy) 
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# Allows to retrieve the value rounded to the integer near of a normal division. 
# - Tmp1 is the divisor 
# - Tmp2 is the dividend 
 
# CONFIGURATION: <none> 
 
# CODE: 
#____________________________________________________________________________________________________

 
scoreboard players operation @s Tmp3 = @s Tmp1 
scoreboard players operation @s Tmp3 %= @s Tmp2 
scoreboard players tag @s[score_Tmp3_min=0,score_Tmp3=0] add CantApply 
 
scoreboard players operation @s[tag=!CantApply] Tmp3 = @s Tmp1 
scoreboard players operation @s[tag=!CantApply] Tmp3 *= 10 Constant
scoreboard players operation @s[tag=!CantApply] Tmp3 /= @s Tmp2
scoreboard players operation @s[tag=!CantApply] Tmp3 %= 10 Constant 
 
scoreboard players operation @s Res = @s Tmp1 
scoreboard players operation @s Res /= @s Tmp2 
scoreboard players add @s[tag=!CantApply,score_Tmp3_min=5] Res 1
scoreboard players remove @s[tag=!CantApply,score_Tmp3=-5] Res 1
 
scoreboard players tag @s remove CantApply 