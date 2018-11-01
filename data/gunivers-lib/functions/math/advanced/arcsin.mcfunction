# NAME: Arcsin
# PATH: gunivers-lib:math/advanced/arcsin
 
# AUTHOR: KubbyDev 
 
# VERSION: 1.1
# MINECRAFT: 1.13.X 
 
# REQUIEREMENTS: 
# - Var2 (score dummy)
# - Math (Import)
# - Arccos (MCfunction)
 
# INPUT: 
# - Var2 (score dummy)  /!\ The input is not the same as the other functions (for technical reasons) /!\
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - This function returns asin(tmp2) in degrees (multiplied by 1000 for more acuracy), tmp2 must be in interval [-1000;1000] instead of [-1;1]
# - The maximum error of this function is 0.051 degrees
 
# CONFIGURATION: <none> 

# CODE: 

function gunivers-lib:math/advanced/arccos

scoreboard players operation @s Res *= -1 Constant
scoreboard players add @s Res 90000
