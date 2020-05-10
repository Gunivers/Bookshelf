#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/sin
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note: The input is the angle in degrees. The result is scaled by 1000

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Convert to angle [-90;90]

# tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X = ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]
scoreboard players operation @s Var1 += 90 Constant
scoreboard players operation @s[scores={Var1=..-1}] Var1 *= Neg Constant
scoreboard players operation @s[scores={Var1=360..}] Var1 %= 180 Constant
scoreboard players operation @s Var1 -= 90 Constant
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"text":"X % 180 = ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]

# Retranscription of Var1 on interval [0;180[

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s[scores={Var1=..-1}] Var3 *= Neg Constant

# Calcul Sin

scoreboard players operation @s Res = @s Var3
scoreboard players operation @s Res *= Neg Constant
scoreboard players operation @s Res += 180 Constant
scoreboard players operation @s Res *= @s Var3
scoreboard players operation @s Res *= 4 Constant
scoreboard players operation @s Res *= 1000 Constant

scoreboard players operation @s Var2 = @s Var3
scoreboard players operation @s Var2 *= Neg Constant
scoreboard players operation @s Var2 += 180 Constant
scoreboard players operation @s Var2 *= @s Var3
scoreboard players operation @s Var2 *= Neg Constant
scoreboard players operation @s Var2 += 40500 Constant
scoreboard players operation @s Res /= @s Var2

scoreboard players operation @s[scores={Var1=..-1}] Res *= Neg Constant
