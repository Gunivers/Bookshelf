# NAME: GetXOriFromVec
# PATH: Gunivers-Lib:Entity/Calcul/GetXOriFromVec
 
# AUTHOR: KubbyDev
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp (score dummy) 
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

scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Constant 0

execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += Neg Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += -1 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant *= -1 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 1 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 2 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 3 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 4 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 5 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 6 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 7 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 8 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 9 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 10 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 11 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 12 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 13 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 14 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 15 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 16 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 17 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 18 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 19 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 20 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 21 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 22 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 23 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 24 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 25 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 29 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 30 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 31 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 32 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 37 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 40 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 41 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 43 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 45 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 47 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 50 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 53 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 59 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 60 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 61 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 64 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 67 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 70 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 71 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 73 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 79 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 80 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 83 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 89 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 90 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 97 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 100 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 128 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 135 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 180 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 225 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 256 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 270 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 315 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 360 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 512 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 1000 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 1024 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 2048 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 4096 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 10000 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 28125 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 32400 Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 40500 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 100000 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += 1000000 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += Pi Constant 
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += Pi2 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += Pi3 Constant
execute @e[type=area_effect_cloud,tag=TestImport] ~ ~ ~ scoreboard players operation @s Constant += Pi6 Constant

scoreboard players set @e[type=area_effect_cloud,tag=TestImport] Res 0
scoreboard players tag @e[type=area_effect_cloud,tag=ImportDone,score_VectorX_min=0,score_Res_min=0,score_Constant_min=4317713] add Math
scoreboard players tag @e[type=area_effect_cloud,tag=ImportToDo] add Math
execute @e[type=area_effect_cloud,tag=ImportDone] ~ ~ ~ execute @s[tag=Math] ~ ~ ~ scoreboard players tag @e[type=area_effect_cloud,tag=ImportToDo] remove Math

