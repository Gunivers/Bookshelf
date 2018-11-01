# NAME: Pow
# PATH: gunivers-lib:math/pow
 
# AUTHOR: Theogiraudet/Oromis
# CONTRIBUTORS: 
# - KubbyDev
 
# VERSION: 1.1
# MINECRAFT: 1.13.X
 
# REQUIREMENTS: 
# - Vars (Module)
# - Math (Module) 
 
# INPUT: 
# - Var1 (score dummy)  The number
# - Var2 (score dummy)  The exponent
 
# OUTPUT: 
# - Res (score dummy) 

# CODE: 

scoreboard players operation @s Res = @s Var1
scoreboard players operation @s Var3 = @s Var2

execute if entity @s[scores={Var3=2..}] run function gunivers-lib:math/child/pow-loop
