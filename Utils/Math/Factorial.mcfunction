# NAME: Factorial
# PATH: Gunivers-Lib:Utils/Math/Factorial
 
# AUTHOR: KubbyDev 
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# - Tmp1 (score dummy) 
# - Tmp2 (score dummy)  
# - Res (score dummy) 
 
# INPUT: 
# - Tmp1 (score dummy)
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - Factorial of 5 ( 5! ) = 5 x 4 x 3 x 2
# - Warning, this function doesn't work if Tmp1 > 12 (Because the result is greater than 2^31, the limit value of the scoreboards)
 
# CONFIGURATION: <none> 
 
# CODE: 
scoreboard players operation @s Tmp2 = @s Tmp
scoreboard players set @s Res 1
function Gunivers-Lib:Utils/Math/Factorial-Loop