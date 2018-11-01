# NAME: Arccos Child
# PATH: gunivers-lib:math/advanced/arccos-child
 
# AUTHOR: KubbyDev 
 
# VERSION: 1.1
# MINECRAFT: 1.13.X
 
# REQUIEREMENTS: 
# - Var4 (score dummy)
 
# INPUT: 
# -
 
# OUTPUT: 
# - 
 
# NOTE:  
# -
 
# CONFIGURATION: <none> 
 
# CODE: 

scoreboard players operation @s Var4 = @s Res
scoreboard players operation @s Var4 *= 2 Constant
scoreboard players operation @s Res -= @s Var4
scoreboard players add @s Res 314080000
