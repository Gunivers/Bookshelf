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

scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Tmp1 0
scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Tmp2 0
scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Tmp3 0
scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Tmp4 0
scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Tmp5 0
scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Tmp6 0
scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Tmp7 0
scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Tmp8 0
scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Tmp9 0
scoreboard players tag @e[type=area_effect_cloud,tag=ImportDone,score_Tmp1_min=0,score_Tmp2_min=0,score_Tmp3_min=0,score_Tmp4_min=0,score_Tmp5_min=0,score_Tmp6_min=0,score_Tmp7_min=0,score_Tmp8_min=0,score_Tmp9_min=0] add Temporary
scoreboard players tag @e[type=area_effect_cloud,tag=ImportToDo] add Temporary
execute @e[type=area_effect_cloud,tag=ImportDone] ~ ~ ~ execute @s[tag=Temporary] ~ ~ ~ scoreboard players tag @e[type=area_effect_cloud,tag=ImportToDo] remove Temporary

