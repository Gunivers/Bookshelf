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

scoreboard players set @e[type=armor_stand,tag=TestImport] TargetID 0
scoreboard players set @e[type=armor_stand,tag=TestImport] UID 0
scoreboard players tag @e[type=armor_stand,tag=ImportDone,score_UID_min=0,score_TargetID_min=0] add ID
scoreboard players tag @e[type=armor_stand,tag=ImportToDo] add ID
execute @e[type=armor_stand,tag=ImportDone] ~ ~ ~ execute @s[tag=ID] ~ ~ ~ scoreboard players tag @e[type=armor_stand,tag=ImportToDo] remove ID

