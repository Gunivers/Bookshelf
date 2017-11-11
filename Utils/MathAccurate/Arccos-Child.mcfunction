# NAME: Arccos Child
# PATH: Gunivers-Lib:Utils/MathAccurate/Arccos-Child
 
# AUTHOR: KubbyDev 
 
# VERSION: 1.0
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp4 (score dummy)
 
# INPUT: 
# -
 
# OUTPUT: 
# - 
 
# NOTE:  
# -
 
# CONFIGURATION: <none> 
 
# CODE: 

scoreboard players operation @s Tmp4 = @s Res
scoreboard players operation @s Tmp4 *= 2 Constant
scoreboard players operation @s Res -= @s Tmp4
scoreboard players add @s Res 314080000
