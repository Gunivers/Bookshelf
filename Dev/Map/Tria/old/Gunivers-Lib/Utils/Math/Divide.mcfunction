# NAME: Divide 
# PATH: Gunivers-Lib:Utils/Math/Divide 
 
# AUTHOR: theogiraudet/Oromis 
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp (score dummy) 
# - Tmp2 (score dummy) 
# - Tmp3 (score dummy) 
# - Res (score dummy) 
# - Gunivers-Lib:Import/Constant (MCfunction)
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

execute @e[tag=Divide] ~ ~ ~ scoreboard players operation @s Tmp3 = @s Tmp 
execute @e[tag=Divide] ~ ~ ~ scoreboard players operation @s Tmp3 %= @s Tmp2 
scoreboard players tag @e[tag=Divide,score_Tmp3_min=0,score_Tmp3=0] add CantApply 
 
execute @e[tag=Divide] ~ ~ ~ scoreboard players operation @s[tag=!CantApply] Tmp3 = @s Tmp 
execute @e[tag=Divide] ~ ~ ~ scoreboard players operation @s[tag=!CantApply] Tmp3 *= 10 Constant
execute @e[tag=Divide] ~ ~ ~ scoreboard players operation @s[tag=!CantApply] Tmp3 /= @s Tmp2
execute @e[tag=Divide] ~ ~ ~ scoreboard players operation @s[tag=!CantApply] Tmp3 %= 10 Constant 
 
execute @e[tag=Divide] ~ ~ ~ scoreboard players operation @s Res = @s Tmp 
execute @e[tag=Divide] ~ ~ ~ scoreboard players operation @s Res /= @s Tmp2 
execute @e[tag=Divide] ~ ~ ~ scoreboard players add @s[tag=!CantApply,score_Tmp3_min=5] Res 1
execute @e[tag=Divide] ~ ~ ~ scoreboard players remove @s[tag=!CantApply,score_Tmp3=-5] Res 1
 
scoreboard players tag @e[tag=Divide] remove CantApply 
scoreboard players tag @e[tag=Divide] remove Divide 

