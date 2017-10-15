# NAME: GetOriXFromVec
# PATH: Gunivers-Lib:Entity/Calcul/GetOriXFromVec
 
# AUTHOR: KubbyDev
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp1 (score dummy) 
# - Tmp2 (score dummy) 
# - Tmp3 (score dummy)
# - Tmp4 (score dummy) 
# - Tmp5 (score dummy)
# - VectorX (score dummy)
# - VectorZ (score dummy) 
# - Phi (score dummy) 
# - Gunivers-Lib:Import/Math (Import)
# - Gunivers-Lib:Utils/Math/Divide (Function)
 
# INPUT: 
# - VectorX (score dummy) 
# - VectorZ (score dummy) 
 
# OUTPUT: 
# - Phi (score dummy) 
 
# NOTE:  
# The vector must be normalized (100 < vector length < 1000) 
# Thanks to this article for giving the formula used in this function:
# www.embedded.com/design/other/4216719/Performing-efficient-arctangent-approximation

# CONFIGURATION: <none> 
 
# CODE: 

#Tmp1 is positive if the absolute value of VectorX is bigger than the absolute value of VectorZ
scoreboard players operation @s Tmp1 = @s VectorX
scoreboard players operation @s[score_Tmp1=-1] Tmp1 *= -1 Constant
scoreboard players operation @s[score_VectorZ_min=1] Tmp1 -= @s VectorZ
scoreboard players operation @s[score_VectorZ=-1] Tmp1 += @s VectorZ

#Choice of the approximation to be used (Stored on Tmp5)
scoreboard players set @s[score_Tmp1_min=0,score_VectorX_min=0] Tmp5 1
scoreboard players set @s[score_Tmp1_min=0,score_VectorX=-1,score_VectorZ_min=0] Tmp5 2
scoreboard players set @s[score_Tmp1_min=0,score_VectorX=-1,score_VectorZ=-1] Tmp5 3
scoreboard players set @s[score_Tmp1=-1,score_VectorZ_min=0] Tmp5 4
scoreboard players set @s[score_Tmp1=-1,score_VectorZ=-1] Tmp5 5

#Input vectors (X = Tmp3; Z = Tmp4)
scoreboard players operation @s Tmp3 = @s VectorX
scoreboard players operation @s Tmp4 = @s VectorZ
scoreboard players operation @s[score_Tmp5_min=3,score_Tmp5=3] Tmp3 -= @s VectorZ
scoreboard players operation @s[score_Tmp5_min=3,score_Tmp5=3] Tmp4 = @s VectorX
scoreboard players operation @s[score_Tmp5_min=3,score_Tmp5=3] Tmp4 += @s VectorZ

#Calculation of the denominator (On Tmp2)
scoreboard players operation @s[score_Tmp5_min=1,score_Tmp5=2] Tmp2 = @s Tmp4
scoreboard players operation @s[score_Tmp5_min=3,score_Tmp5=5] Tmp2 = @s Tmp3
scoreboard players operation @s Tmp2 *= 28125 Constant
scoreboard players operation @s Tmp2 /= 10000 Constant
scoreboard players operation @s[score_Tmp5_min=1,score_Tmp5=2] Tmp2 *= @s Tmp4
scoreboard players operation @s[score_Tmp5_min=3,score_Tmp5=5] Tmp2 *= @s Tmp3
scoreboard players operation @s[score_Tmp5_min=1,score_Tmp5=2] Tmp1 = @s Tmp3
scoreboard players operation @s[score_Tmp5_min=3,score_Tmp5=5] Tmp1 = @s Tmp4
scoreboard players operation @s Tmp1 *= @s Tmp
scoreboard players operation @s Tmp1 *= 10 Constant
scoreboard players operation @s Tmp2 += @s Tmp
scoreboard players operation @s Tmp2 /= 10 Constant

#Calculation of the numerator (On Tmp)
scoreboard players operation @s Tmp1 = @s Tmp3
scoreboard players operation @s Tmp1 *= @s Tmp4
scoreboard players operation @s Tmp1 *= 1000 Constant

#Calculation of the angle (radians)
scoreboard players operation @s Tmp1 /= @s Tmp2

#Conversion in degrees (The result is on Res)
scoreboard players operation @s Tmp1 *= 18 Constant
scoreboard players operation @s Tmp2 = Pi3 Constant
function Gunivers-Lib:Utils/Math/Divide

#Adjustments
scoreboard players operation @s[score_Tmp5_min=3,score_Tmp5=5] Res *= -1 Constant
scoreboard players operation @s[score_Tmp5_min=1,score_Tmp5=1] Res += 270 Constant
scoreboard players operation @s[score_Tmp5_min=2,score_Tmp5=2] Res += 90 Constant
scoreboard players operation @s[score_Tmp5_min=3,score_Tmp5=3] Res += 135 Constant
scoreboard players operation @s[score_Tmp5_min=5,score_Tmp5=5] Res += 180 Constant
scoreboard players operation @s[score_Tmp5_min=4,score_Tmp5=4,score_VectorX_min=1] Res += 360 Constant

scoreboard players operation @s Phi = @s Res




