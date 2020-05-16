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

# Retranscription of Var3 on interval [0;9000[

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 /= 10 Constant
scoreboard players operation @s[scores={Var1=90000..179999}] Var3 *= Neg Constant
scoreboard players operation @s[scores={Var1=90000..179999}] Var3 += 18000 Constant
scoreboard players operation @s[scores={Var1=180000..269999}] Var3 -= 18000 Constant
scoreboard players operation @s[scores={Var1=270000..}] Var3 *= Neg Constant
scoreboard players operation @s[scores={Var1=270000..}] Var3 += 36000 Constant

# Calcul Cos

scoreboard players operation @s Res1 = @s Var3
scoreboard players operation @s Res1 *= @s Res1
scoreboard players operation @s Res1 *= 4 Constant
scoreboard players operation @s Res1 *= Neg Constant
scoreboard players operation @s Res1 += 324000000 Constant
scoreboard players operation @s Var2 = @s Var3
scoreboard players operation @s Var2 *= @s Var2
scoreboard players operation @s Var2 += 324000000 Constant
scoreboard players operation @s Var2 /= 1000 Constant
scoreboard players operation @s Res1 /= @s Var2

scoreboard players operation @s[scores={Var1=90000..269999}] Res1 *= Neg Constant
