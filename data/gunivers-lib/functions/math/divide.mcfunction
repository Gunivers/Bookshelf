# NAME: Divide 
# PATH: gunivers-lib:math/divide 
 
# AUTHOR: theogiraudet/Oromis 
 
# VERSION: 1.0
# MINECRAFT: 1.13.X 
 
# REQUIREMENTS: 
# - Vars (Module)
# - Math (Module) 
# - Constants (Module)
 
# INPUT: 
# - Var1 (score dummy) 
# - Var2 (score dummy) 
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# Allows to retrieve the value rounded to the integer near of a normal division. 
# - Var1 is the divisor 
# - Var2 is the dividend 
 
# CONFIGURATION: <none> 
 
# CODE: 
 
scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 %= @s Var2
tag @s[scores={Var3=0}] add CantApply
 
scoreboard players operation @s[tag=!CantApply] Var3 = @s Var1
scoreboard players operation @s[tag=!CantApply] Var3 *= 10 Constant
scoreboard players operation @s[tag=!CantApply] Var3 /= @s Var2
scoreboard players operation @s[tag=!CantApply] Var3 %= 10 Constant
 
scoreboard players operation @s Res = @s Var1
scoreboard players operation @s Res /= @s Var2
scoreboard players add @s[scores={Var3=5..},tag=!CantApply] Res 1
scoreboard players remove @s[scores={Var3=..-5},tag=!CantApply] Res 1
 
tag @s remove CantApply
