# NAME: GetOriYFromVec
# PATH: Gunivers-Lib:Entity/Calcul/GetOriYFromVec
 
# AUTHOR: KubbyDev
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp (score dummy) 
# - Tmp2 (score dummy) 
# - VectorY (score dummy) 
# - Res (score dummy) 
# - Theta(score dummy) 
# - Gunivers-Lib:Utils/Math/Arccos (function)
 
# INPUT: 
# - VectorY (score dummy) 
 
# OUTPUT: 
# - Theta (score dummy) 
 
# NOTE:  

# CONFIGURATION: <none> 
 
# CODE: 

scoreboard players operation @s Tmp = @s VectorY
function Gunivers-Lib:Utils/Math/Arccos
scoreboard players operation @s Theta = @s Res