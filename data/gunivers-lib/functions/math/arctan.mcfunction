# NAME: Arctan
# PATH: gunivers-lib:math/arctan
 
# AUTHOR: KubbyDev 
 
# VERSION: 1.0
# MINECRAFT: 1.13.X 

# INPUT: 
# - Var1 (score dummy) (scaled by 1000)
 
# OUTPUT: 
# - Res (score dummy)  (scaled by 1000)
 
# NOTE:  
# - This function returns atan(Var1) in degrees (scaled by 1000), Var1 must be in interval [-1000;1000] instead of [-1;1]
# - The maximum error of this function is 0.068 degrees

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var5 dummy
scoreboard objectives add Res dummy

# CODE: 

scoreboard players set @s Var5 1
scoreboard players set @s[scores={Var1=..-1}] Var5 -1

scoreboard players operation @s Var1 *= @s Var5

function gunivers-lib:math/child/arctan-child

scoreboard players operation @s Res *= @s Var5
