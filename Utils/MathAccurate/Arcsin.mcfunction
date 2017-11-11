# NAME: Arcsin
# PATH: Gunivers-Lib:Utils/MathAccurate/Arcsin
 
# AUTHOR: KubbyDev 
 
# VERSION: 1.0
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp2 (score dummy)
# - Math (Import)
# - Arccos (MCfunction)
 
# INPUT: 
# - Tmp2 (score dummy)  /!\ The input is not the same as the other functions (for technical reasons) /!\
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - This function returns asin(Tmp2) in degrees (multiplied by 1000 for more acuracy), Tmp2 must be in interval [-1000;1000] instead of [-1;1]
# - The maximum error of this function is 0.051 degrees
 
# CONFIGURATION: <none> 

# CODE: 

function Gunivers-Lib:Utils/MathAccurate/Arccos

scoreboard players operation @s Res *= -1 Constant
scoreboard players add @s Res 90000
