# NAME: Factorial
# PATH: Gunivers-Lib:Math/Factorial
 
# AUTHOR: KubbyDev 
 
# VERSION: 0.1 
# MINECRAFT: 1.12.1 
 
# REQUIREMENTS: 
# - Gunivers-Lib:Utils/Import/Temporary (Import file)
# - Gunivers-Lib:Utils/Import/Math (Import file) 
 
# INPUT: 
# - Tmp1 (score dummy)
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - Factorial of 5 ( 5! ) = 5 x 4 x 3 x 2
# - Warning, this function doesn't work if Tmp1 > 12 (Because the result is greater than 2^31, the limit value of the scoreboards)
 
# CONFIGURATION: <none> 
 
# CODE: 
#____________________________________________________________________________________________________

scoreboard players operation @s Tmp2 = @s Tmp1
scoreboard players set @s Res 1
function Gunivers-Lib:Math/Child/Factorial-Loop