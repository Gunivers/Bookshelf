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

scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=0,score_Tmp2=43] Theta 90
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=44,score_Tmp2=129] Theta 85
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=130,score_Tmp2=215] Theta 80
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=216,score_Tmp2=299] Theta 75
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=300,score_Tmp2=381] Theta 70
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=382,score_Tmp2=460] Theta 65
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=461,score_Tmp2=536] Theta 60
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=537,score_Tmp2=607] Theta 55
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=608,score_Tmp2=674] Theta 50
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=675,score_Tmp2=736] Theta 45
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=737,score_Tmp2=792] Theta 40
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=793,score_Tmp2=842] Theta 35
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=843,score_Tmp2=885] Theta 30
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=886,score_Tmp2=922] Theta 25
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=923,score_Tmp2=952] Theta 20
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=953,score_Tmp2=974] Theta 15
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=975,score_Tmp2=990] Theta 10
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=991,score_Tmp2=997] Theta 5
scoreboard players set @e[tag=GetOriYFromVec,score_Tmp2_min=998,score_Tmp2=1000] Theta 0

scoreboard players set @e[tag=GetOriYFromVec,score_VectorY=-1] Tmp2 180
execute @e[tag=GetOriYFromVec,score_VectorY=-1] ~ ~ ~ scoreboard players operation @s Tmp2 -= @s Theta
execute @e[tag=GetOriYFromVec,score_VectorY=-1] ~ ~ ~ scoreboard players operation @s Theta = @s Tmp2


