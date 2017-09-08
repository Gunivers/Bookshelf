# NAME: Factorial Loop
# PATH: Gunivers-Lib:Utils/Math/Factorial-Loop
 
# AUTHOR: KubbyDev 
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp (score dummy) 
# - Tmp2 (score dummy)  
# - Res (score dummy) 
 
# INPUT: 
# - Tmp (score dummy)
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - Factorial of 5 ( 5! ) = 5 x 4 x 3 x 2
# - Warning, this function doesn't work if Tmp > 12 (Because the result is greater than 2^31, the limit value of the scoreboards)

# CONFIGURATION: <none> 
 
# CODE: 
scoreboard players operation @s Res *= @s Tmp2
scoreboard players remove @s Tmp2 1
function Gunivers-Lib:Utils/Math/Factorial-Loop if @s[score_Tmp2_min=2]