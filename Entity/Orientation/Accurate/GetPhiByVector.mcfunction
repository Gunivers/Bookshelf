# NAME: GetPhiByVector
# PATH: Gunivers-Lib:Entity/Orientation/Accurate/GetPhiByVector
 
# AUTHOR: KubbyDev
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp1 (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy) 
# - Res (score dummy) 
# - Constant (Import)
# - Phi (score dummy)
# - VectorX (score dummy) 
# - VectorZ (score dummy)

# INPUT: 
# - VectorX (score dummy) 
# - VectorZ (score dummy) 
 
# OUTPUT: 
# - Phi (score dummy) 
 
# NOTE:  
# - The given vector lenght must be in interval [100;1000] or the result will be imprecise !

# CONFIGURATION: <none> 
 
# CODE: 

#Initialisation
scoreboard players operation @s Tmp2 = @s VectorX
scoreboard players operation @s Tmp3 = @s VectorZ
scoreboard players set @s[score_Tmp2_min=0,score_Tmp2=0] Tmp2 1
scoreboard players set @s[score_Tmp3_min=0,score_Tmp3=0] Tmp3 1

scoreboard players tag @s[score_Tmp2=-1,score_Tmp3=-1] add 2ndQuarter
scoreboard players tag @s[score_Tmp2_min=1,score_Tmp3=-1] add 3rdQuarter
scoreboard players tag @s[score_Tmp2_min=1,score_Tmp3_min=1] add 4thQuarter

scoreboard players operation @s[score_Tmp2=-1] Tmp2 *= -1 Constant
scoreboard players operation @s[score_Tmp3=-1] Tmp3 *= -1 Constant

#Divides the smallest value by the biggest one (and set Tmp4 to -1 if the values were inverted to follow this rule)
scoreboard players set @s Tmp4 1
scoreboard players operation @s Tmp2 -= @s Tmp3
scoreboard players set @s[score_Tmp2_min=1] Tmp4 -1
scoreboard players operation @s Tmp2 += @s Tmp3
scoreboard players operation @s[score_Tmp4=-1] Tmp1 = @s Tmp3
scoreboard players operation @s[score_Tmp4_min=1] Tmp1 = @s Tmp2
scoreboard players operation @s Tmp1 *= 1000 Constant
scoreboard players operation @s[score_Tmp4=-1] Tmp1 /= @s Tmp2
scoreboard players operation @s[score_Tmp4_min=1] Tmp1 /= @s Tmp3

#Calculation of arctan(z/x)
function Gunivers-Lib:Math/Arctan

#Adjustments of the angle
scoreboard players operation @s[tag=2ndQuarter] Tmp4 *= -1 Constant
scoreboard players operation @s[tag=4thQuarter] Tmp4 *= -1 Constant

scoreboard players operation @s[score_Tmp4=-1] Res *= -1 Constant
scoreboard players operation @s[score_Tmp4=-1] Res += 90000 Constant

scoreboard players operation @s Phi = @s Res

scoreboard players operation @s[tag=2ndQuarter] Phi += 90000 Constant
scoreboard players operation @s[tag=3rdQuarter] Phi += 180000 Constant
scoreboard players operation @s[tag=4thQuarter] Phi += 270000 Constant

scoreboard players tag @s remove 2ndQuarter
scoreboard players tag @s remove 3rdQuarter
scoreboard players tag @s remove 4thQuarter










