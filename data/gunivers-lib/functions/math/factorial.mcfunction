# NAME: Factorial
# PATH: gunivers-lib:math/factorial
 
# AUTHOR: KubbyDev 
 
# VERSION: 1.0
# MINECRAFT: 1.13.X 
 
# INPUT: 
# - Var1 (score dummy)
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - Factorial of 5 ( 5! ) = 5 x 4 x 3 x 2
# - Warning, this function doesn't work if tmp1 > 12 (because the result is greater than 2^31, the limit value of the scoreboards)
 
# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Res dummy

# CODE: 
scoreboard players operation @s Var2 = @s Var1
scoreboard players set @s Res 1
function gunivers-lib:math/child/factorial-loop
