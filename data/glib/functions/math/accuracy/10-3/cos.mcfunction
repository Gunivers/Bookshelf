#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: glib:math/accuracy/10-3/cos
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:

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

# Retranscription of Var3 on interval [0;9000[

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 /= 10 Constant
scoreboard players operation @s[scores={Var1=90000..179999}] Var3 *= Neg Constant
scoreboard players operation @s[scores={Var1=90000..179999}] Var3 += 18000 Constant
scoreboard players operation @s[scores={Var1=180000..269999}] Var3 -= 18000 Constant
scoreboard players operation @s[scores={Var1=270000..}] Var3 *= Neg Constant
scoreboard players operation @s[scores={Var1=270000..}] Var3 += 36000 Constant

# Calcul Cos

scoreboard players operation @s Res = @s Var3
scoreboard players operation @s Res *= @s Res
scoreboard players operation @s Res *= 4 Constant
scoreboard players operation @s Res *= Neg Constant
scoreboard players operation @s Res += 324000000 Constant
scoreboard players operation @s Var2 = @s Var3
scoreboard players operation @s Var2 *= @s Var2
scoreboard players operation @s Var2 += 324000000 Constant
scoreboard players operation @s Var2 /= 1000 Constant
scoreboard players operation @s Res /= @s Var2

scoreboard players operation @s[scores={Var1=90000..269999}] Res *= Neg Constant
