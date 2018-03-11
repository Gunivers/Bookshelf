# NAME: GetOriYFromVec1
 
# AUTHOR: KubbyDev 
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - VectorY (score dummy) 
# - Tmp2 (score dummy)  
# - Theta (score dummy) 
 
# INPUT: 
# - VectorY (score dummy)
 
# OUTPUT: 
# - Theta (score dummy) 
 
# NOTE:  
# - This function returns acos(x) in degrees, but x must be in interval [-1000;1000] instead of [-1;1]
 
# CONFIGURATION: <none> 
 
# CODE: 

execute @e[tag=GetOriYFromVec] ~ ~ ~ scoreboard players operation @s Tmp2 = @s VectorY
scoreboard players operation @e[tag=GetOriYFromVec,score_Tmp2=-1] Tmp2 *= -1 Constant

scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=0,score_Tmp2=86] Theta 90
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=87,score_Tmp2=257] Theta 80
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=258,score_Tmp2=420] Theta 70
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=421,score_Tmp2=570] Theta 60
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=571,score_Tmp2=703] Theta 50
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=704,score_Tmp2=815] Theta 40
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=816,score_Tmp2=902] Theta 30
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=903,score_Tmp2=961] Theta 20
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=962,score_Tmp2=991] Theta 10
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=992,score_Tmp2=1000] Theta 0


scoreboard players set @e[tag=GetOriYFromVec,score_VectorY=-1] Tmp2 180
execute @e[tag=GetOriYFromVec,score_VectorY=-1] ~ ~ ~ scoreboard players operation @s Tmp2 -= @s Theta
execute @e[tag=GetOriYFromVec,score_VectorY=-1] ~ ~ ~ scoreboard players operation @s Theta = @s Tmp2


