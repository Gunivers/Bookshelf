# NAME: Arctan
# PATH: Gunivers-Lib:Math/Arctan
 
# AUTHOR: KubbyDev 
 
# VERSION: 1.0
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp1 (score dummy) 
# - Tmp2 (score dummy)  
# - Tmp3 (score dummy)  
# - Res (score dummy) 
# - Constant (Import)

# INPUT: 
# - Tmp1 (score dummy)
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - This function returns atan(Tmp1) in degrees (multiplied by 1000 for more acuracy), Tmp1 must be in interval [0;1000] instead of [0;1]
# - The maximum error of this function is 0.068 degrees
 
# CONFIGURATION: <none> 
 
# CODE: 

#Nominateur
scoreboard players operation @s Tmp3 = @s Tmp1
scoreboard players operation @s Tmp3 *= @s Tmp1

scoreboard players operation @s Tmp2 = @s Tmp3

scoreboard players operation @s Tmp3 *= @s Tmp1
scoreboard players operation @s Tmp3 /= 1000 Constant

scoreboard players operation @s Tmp2 += @s Tmp3

scoreboard players operation @s Res = @s Tmp1
scoreboard players operation @s Res *= 640 Constant

scoreboard players operation @s Res += @s Tmp2
scoreboard players operation @s Res *= 785 Constant

#Dénominateur
scoreboard players operation @s Tmp2 = @s Tmp1
scoreboard players operation @s Tmp2 *= 640 Constant

scoreboard players operation @s Tmp3 = @s Tmp1
scoreboard players operation @s Tmp3 *= 1000 Constant

scoreboard players operation @s Tmp2 += @s Tmp3
scoreboard players add @s Tmp2 1000000

scoreboard players operation @s Tmp3 = @s Tmp1
scoreboard players operation @s Tmp3 *= @s Tmp1
scoreboard players operation @s Tmp3 *= 640 Constant
scoreboard players operation @s Tmp3 /= 1000 Constant

scoreboard players operation @s Tmp2 += @s Tmp3

scoreboard players operation @s Tmp3 = @s Tmp1
scoreboard players operation @s Tmp3 *= @s Tmp1

scoreboard players operation @s Tmp2 += @s Tmp3

scoreboard players operation @s Tmp3 *= @s Tmp1
scoreboard players operation @s Tmp3 /= 1000 Constant

scoreboard players operation @s Tmp2 += @s Tmp3

#Division
scoreboard players operation @s Res /= @s Tmp2
scoreboard players operation @s Res *= 2 Constant
scoreboard players add @s Res 1

scoreboard players operation @s Res *= 18000 Constant
scoreboard players operation @s Res /= Pi2 Constant




