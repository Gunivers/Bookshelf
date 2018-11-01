# NAME: Arccos
# PATH: gunivers-lib:math/advanced/arccos
 
# AUTHOR: KubbyDev 
 
# VERSION: 1.1
# MINECRAFT: 1.13.X
 
# REQUIEREMENTS: 
# - Vars (Module)
# - Math (Module) 
 
# INPUT: 
# - Var2 (score dummy)  /!\ The input is not the same as the other functions (for technical reasons) /!\
 
# OUTPUT: 
# - Res (score dummy) 
 
# NOTE:  
# - This function returns acos(x) in degrees scaled by 1000, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - The maximum error of this function is 0.051 degrees

# CODE: 

scoreboard players operation @s Var3 = @s Var2
scoreboard players operation @s Var8 = @s Var2
scoreboard players operation @s[scores={Var3=..-1}] Var3 *= -1 Constant

scoreboard players operation @s Var6 = @s Var3
scoreboard players operation @s Var6 *= @s Var3
scoreboard players operation @s Var6 *= @s Var3
scoreboard players operation @s Var6 /= 1000 Constant
scoreboard players operation @s Var6 *= 19 Constant
scoreboard players operation @s Var6 *= -1 Constant
scoreboard players operation @s Var6 /= 1000 Constant

scoreboard players operation @s Var4 = @s Var3
scoreboard players operation @s Var4 *= @s Var3
scoreboard players operation @s Var4 *= 74 Constant
scoreboard players operation @s Var4 /= 1000 Constant
scoreboard players operation @s Var6 += @s Var4

scoreboard players operation @s Var4 = @s Var3
scoreboard players operation @s Var4 *= 212 Constant
scoreboard players operation @s Var6 -= @s Var4

scoreboard players add @s Var6 1570729
scoreboard players operation @s Var6 /= 100 Constant

scoreboard players operation @s Var1 = @s Var3
scoreboard players operation @s Var1 *= -1 Constant
scoreboard players operation @s Var1 *= 100000 Constant
scoreboard players add @s Var1 100000000

function gunivers-lib:math/sqrt

scoreboard players operation @s Res *= @s Var6

scoreboard players operation @s Var2 = @s Var8
execute if entity @s[scores={Var2=..-1}] run function gunivers-lib:math/advanced/arccos-child

scoreboard players operation @s Res /= 100000 Constant
scoreboard players operation @s Res *= 18000 Constant
scoreboard players operation @s Res /= Pi2 Constant
scoreboard players add @s Res 8



