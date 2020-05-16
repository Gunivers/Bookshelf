#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: glib:math/accuracy/10-3/sin
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Res1 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Retranscription of Var3 on interval [0;18000[

# tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"X = ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 /= 10 Constant
scoreboard players operation @s[scores={Var3=18000}] Var3 -= 18000 Constant

# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"X % 180 = ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]

# Calcul Sin

scoreboard players operation @s Res1 = @s Var3
scoreboard players operation @s Res1 *= Neg Constant
scoreboard players operation @s Res1 += 18000 Constant
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"Var2"}}]
scoreboard players operation @s Res1 *= @s Var3
scoreboard players operation @s Res1 *= 4 Constant
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
scoreboard players operation @s Res1 /= @s Var2
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"Var2"}}]

scoreboard players operation @s[scores={Var1=180000}] Res1 *= Neg Constant
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"Sin(X) = ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
