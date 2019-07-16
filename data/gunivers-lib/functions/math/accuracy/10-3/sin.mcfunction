# TITLE: Accurate Sin
# PATH: Gunivers-Lib:Math/accuracy/10-3/Sin

# AUTHOR: KubbyDev
# CONTRIBUTORS:
# - LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13+

# INPUT:
# - Var1 (score dummy)

# OUTPUT:
# - Res (score dummy)

#Note:
# - Var1 must be in interval [0;360000]

# CONFIGURATION:

# CODE

# Retranscription of Var3 on interval [0;18000[

# tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"X = ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 /= 10 Constant
scoreboard players operation @s[scores={Var3=18000}] Var3 -= 18000 Constant

# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"X % 180 = ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]

# Calcul Sin

scoreboard players operation @s Res = @s Var3
scoreboard players operation @s Res *= Neg Constant
scoreboard players operation @s Res += 18000 Constant
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"Var2"}}]
scoreboard players operation @s Res *= @s Var3
scoreboard players operation @s Res *= 4 Constant
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"Var2"}}]

scoreboard players operation @s Var2 = @s Var3
scoreboard players operation @s Var2 *= Neg Constant
scoreboard players operation @s Var2 += 18000 Constant
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"Var2"}}]
scoreboard players operation @s Var2 *= @s Var3
scoreboard players operation @s Var2 *= Neg Constant
scoreboard players operation @s Var2 += 405000000 Constant
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"Var2"}}]
scoreboard players operation @s Var2 /= 1000 Constant
scoreboard players operation @s Res /= @s Var2
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"Var2"}}]

scoreboard players operation @s[scores={Var1=180000}] Res *= Neg Constant
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"Sin(X) = ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]