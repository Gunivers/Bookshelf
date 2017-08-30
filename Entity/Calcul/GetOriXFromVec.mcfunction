# NAME: GetXOriFromVec
# PATH: Gunivers-Lib:Entity/Calcul/GetXOriFromVec
 
# AUTHOR: KubbyDev
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp (score dummy) 
# - Tmp2 (score dummy) 
# - Tmp5 (score dummy)
# - Tmp3 (score dummy) 
# - Tmp4 (score dummy) 
# - Res (score dummy) 
# - Constants
# - Gunivers-Lib:Utils/Math/Divide
 
# INPUT: 
# - VectorX (score dummy) 
# - VectorZ (score dummy) 
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# The vector must be normalized (100 < vector length < 1000) 
# Thanks to this article for giving the formula used in this function:
# www.embedded.com/design/other/4216719/Performing-efficient-arctangent-approximation

# CONFIGURATION: <none> 
 
# CODE: 


#Constants
# scoreboard players set Pi3 Constant 314
# scoreboard players set 18 Constant 18
# scoreboard players set 180 Constant 180
# scoreboard players set 135 Constant 135
# scoreboard players set 270 Constant 270
# scoreboard players set Neg Constant -1
# scoreboard players set 10000 Constant 10000
# scoreboard players set 1000 Constant 1000
# scoreboard players set 10 Constant 10
# scoreboard players set 28125 Constant 28125
# scoreboard players set 90 Constant 90
# scoreboard players set 360 Constant 360


#Tmp is positive if the absolute value of VectorX is bigger than the absolute value of VectorZ
scoreboard players operation @s Tmp = @s VectorX
scoreboard players operation @s[score_Tmp=-1] Tmp *= Neg Constant
scoreboard players operation @s[score_VectorZ_min=1] Tmp -= @s VectorZ
scoreboard players operation @s[score_VectorZ=-1] Tmp += @s VectorZ

#Choice of the approximation to be used (Stored on Tmp5)
scoreboard players set @s[score_Tmp_min=0,score_VectorX_min=0] Tmp5 1
scoreboard players set @s[score_Tmp_min=0,score_VectorX=-1,score_VectorZ_min=0] Tmp5 2
scoreboard players set @s[score_Tmp_min=0,score_VectorX=-1,score_VectorZ=-1] Tmp5 3
scoreboard players set @s[score_Tmp=-1,score_VectorZ_min=0] Tmp5 4
scoreboard players set @s[score_Tmp=-1,score_VectorZ=-1] Tmp5 5

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
scoreboard players operation @s[score_Tmp5_min=1,score_Tmp5=2] Tmp = @s Tmp3
scoreboard players operation @s[score_Tmp5_min=3,score_Tmp5=5] Tmp = @s Tmp4
scoreboard players operation @s Tmp *= @s Tmp
scoreboard players operation @s Tmp *= 10 Constant
scoreboard players operation @s Tmp2 += @s Tmp
scoreboard players operation @s Tmp2 /= 10 Constant

#Calculation of the numerator (On Tmp)
scoreboard players operation @s Tmp = @s Tmp3
scoreboard players operation @s Tmp *= @s Tmp4
scoreboard players operation @s Tmp *= 1000 Constant

#Calculation of the angle (radians)
scoreboard players operation @s Tmp /= @s Tmp2

#Conversion in degrees (The result is on Res)
scoreboard players operation @s Tmp *= 18 Constant
scoreboard players operation @s Tmp2 = Pi3 Constant
function Gunivers-Lib:Utils/Math/Divide

#Adjustments
scoreboard players operation @s[score_Tmp3_min=3,score_Tmp3=5] Res *= Neg Constant
scoreboard players operation @s[score_Tmp3_min=1,score_Tmp3=1] Res += 270 Constant
scoreboard players operation @s[score_Tmp3_min=2,score_Tmp3=2] Res += 90 Constant
scoreboard players operation @s[score_Tmp3_min=3,score_Tmp3=3] Res += 135 Constant
scoreboard players operation @s[score_Tmp3_min=5,score_Tmp3=5] Res += 180 Constant
scoreboard players operation @s[score_Tmp3_min=4,score_Tmp3=4,score_VectorX_min=1] Res += 360 Constant






