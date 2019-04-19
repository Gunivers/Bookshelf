# NAME: Pow
# PATH: gunivers-lib:math/pow
 
# AUTHOR: Theogiraudet/Oromis
# CONTRIBUTORS: 
# - KubbyDev
 
# VERSION: 1.1
# MINECRAFT: 1.13.X

# INPUT: 
# - Var1 (score dummy)  The number
# - Var2 (score dummy)  The exponent

# OUTPUT: 
# - Res (score dummy) 

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Res dummy

# CODE: 

scoreboard players operation @s Res = @s Var1
scoreboard players operation @s Var3 = @s Var2

execute if entity @s[scores={Var3=0}] run scoreboard players set @s Res 1
execute if entity @s[scores={Var3=2..}] run function gunivers-lib:math/child/pow-loop
