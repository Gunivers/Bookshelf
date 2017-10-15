# NAME: GetXOriFromVec
# PATH: Gunivers-Lib:Entity/Calcul/GetXOriFromVec
 
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

scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Phi 0
scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Theta 0
scoreboard players tag @e[type=area_effect_cloud,tag=ImportDone,score_Phi_min=0,score_Theta_min=0] add Orientation
scoreboard players tag @e[type=area_effect_cloud,tag=ImportToDo] add Orientation
execute @e[type=area_effect_cloud,tag=ImportDone] ~ ~ ~ execute @s[tag=Orientation] ~ ~ ~ scoreboard players tag @e[type=area_effect_cloud,tag=ImportToDo] remove Orientation  

