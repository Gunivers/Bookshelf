# NAME: Pow
# PATH: Gunivers-Lib:Math/Pow
 
# AUTHOR: Theogiraudet/Oromis
# CONTRIBUTORS: 
# - KubbyDev
 
# VERSION: 1.0
# MINECRAFT: 1.12.2
 
# REQUIEREMENTS: 
# - Tmp1 (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy)
# - Res (score dummy)
 
# INPUT: 
# - Tmp1 (score dummy)  The number
# - Tmp2 (score dummy)  The exponent
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
 
# CONFIGURATION: <none> 

# CODE: 

scoreboard players operation @s Res = @s Tmp1
scoreboard players operation @s Tmp3 = @s Tmp2

function Gunivers-Lib:Math/Pow-Loop if @s[score_Tmp3_min=2]