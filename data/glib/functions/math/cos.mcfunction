#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/cos
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note: The input is the angle in degrees. The result is scaled by 1000

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

# Convert to angle [0;360]
# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"INPUT: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]

scoreboard players operation @s[scores={Var1=..-1}] Var1 *= Neg Constant
scoreboard players operation @s[scores={Var1=360..}] Var1 %= 360 Constant

# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"MODULO: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]

# Retranscription of Var1 on interval [0;90[

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s[scores={Var1=90..179}] Var3 *= Neg Constant
scoreboard players operation @s[scores={Var1=90..179}] Var3 += 180 Constant
scoreboard players operation @s[scores={Var1=180..269}] Var3 -= 180 Constant
scoreboard players operation @s[scores={Var1=270..}] Var3 *= Neg Constant
scoreboard players operation @s[scores={Var1=270..}] Var3 += 360 Constant


# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"0-90: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]

# Calcul Cos

scoreboard players operation @s Res1 = @s Var3
scoreboard players operation @s Res1 *= @s Res1
scoreboard players operation @s Res1 *= 4 Constant
scoreboard players operation @s Res1 *= Neg Constant
scoreboard players operation @s Res1 += 32400 Constant
scoreboard players operation @s Res1 *= 1000 Constant
scoreboard players operation @s Var2 = @s Var3
scoreboard players operation @s Var2 *= @s Var2
scoreboard players operation @s Var2 += 32400 Constant
scoreboard players operation @s Res1 /= @s Var2

scoreboard players operation @s[scores={Var1=90..269}] Res1 *= Neg Constant

# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"Result: ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
