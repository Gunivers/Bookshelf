# NAME: GetThetaByVector
# PATH: Gunivers-Lib:Entity/Orientation/Advanced/GetPhiByVector
 
# AUTHOR: KubbyDev
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp2 (score dummy)
# - Res (score dummy) 
# - Arccos (MCfunction)
# - Theta (score dummy)
# - VectorY (score dummy) 

# INPUT: 
# - VectorY (score dummy) 
 
# OUTPUT: 
# - Theta (score dummy) 
 
# NOTE:  
# - The given vector lenght must be at least nearly equal to 1000 or the result will be imprecise !
# - You can normalize the vector (set its lenght to 1000) by using EntityAccurate/Vectors/Normalize

# CONFIGURATION: <none> 
 
# CODE: 

scoreboard players operation @s Tmp2 = @s VectorY
function Gunivers-Lib:Math/Advanced/Arccos
scoreboard players operation @s Theta = @s Res









