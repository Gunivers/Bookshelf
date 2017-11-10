# NAME: Arccos
# PATH: Gunivers-Lib:Utils/MathAccurate/Arccos
 
# AUTHOR: KubbyDev 
 
# VERSION: 1.0
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp1 (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy)
# - Tmp4 (score dummy)
# - Tmp6 (score dummy)
# - Tmp7 (score dummy)
# - Tmp8 (score dummy)
# - Math (Import)
# - Arccos-Child (MCfunction)
# - Sqrt (MCfunction)
 
# INPUT: 
# - Tmp2 (score dummy)  /!\ The input is not the same as the other functions (for technical reasons) /!\
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - This function returns acos(Tmp2) in degrees (multiplied by 1000 for more acuracy), Tmp2 must be in interval [-1000;1000] instead of [-1;1]
# - The maximum error of this function is 0.051 degrees
 
# CONFIGURATION: <none> 

# CODE: 

scoreboard players operation @s Tmp3 = @s Tmp2
scoreboard players operation @s Tmp8 = @s Tmp2
scoreboard players operation @s[score_Tmp3=-1] Tmp3 *= -1 Constant

scoreboard players operation @s Tmp6 = @s Tmp3
scoreboard players operation @s Tmp6 *= @s Tmp3
scoreboard players operation @s Tmp6 *= @s Tmp3
scoreboard players operation @s Tmp6 /= 1000 Constant
scoreboard players operation @s Tmp6 *= 19 Constant
scoreboard players operation @s Tmp6 *= -1 Constant
scoreboard players operation @s Tmp6 /= 1000 Constant

scoreboard players operation @s Tmp4 = @s Tmp3
scoreboard players operation @s Tmp4 *= @s Tmp3
scoreboard players operation @s Tmp4 *= 74 Constant
scoreboard players operation @s Tmp4 /= 1000 Constant
scoreboard players operation @s Tmp6 += @s Tmp4

scoreboard players operation @s Tmp4 = @s Tmp3
scoreboard players operation @s Tmp4 *= 212 Constant
scoreboard players operation @s Tmp6 -= @s Tmp4

scoreboard players add @s Tmp6 1570729
scoreboard players operation @s Tmp6 /= 100 Constant

scoreboard players operation @s Tmp1 = @s Tmp3
scoreboard players operation @s Tmp1 *= -1 Constant
scoreboard players operation @s Tmp1 *= 100000 Constant
scoreboard players add @s Tmp1 100000000

function Gunivers-Lib:Utils/Math/sqrt

scoreboard players operation @s Res *= @s Tmp6

scoreboard players operation @s Tmp2 = @s Tmp8
execute @s[score_Tmp2=-1] ~ ~ ~ function Gunivers-Lib:Utils/MathAccurate/Arccos-Child

scoreboard players operation @s Res /= 100000 Constant
scoreboard players operation @s Res *= 18000 Constant
scoreboard players operation @s Res /= Pi2 Constant
scoreboard players add @s Res 8



