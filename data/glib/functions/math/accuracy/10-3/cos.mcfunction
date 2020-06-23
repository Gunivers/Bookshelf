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

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Retranscription of glib.var3 on interval [0;9000[

scoreboard players operation @s glib.var3 = @s glib.var
scoreboard players operation @s glib.var3 /= 10 glib.const
scoreboard players operation @s[scores={glib.var=90000..179999}] glib.var3 *= Neg glib.const
scoreboard players operation @s[scores={glib.var=90000..179999}] glib.var3 += 18000 glib.const
scoreboard players operation @s[scores={glib.var=180000..269999}] glib.var3 -= 18000 glib.const
scoreboard players operation @s[scores={glib.var=270000..}] glib.var3 *= Neg glib.const
scoreboard players operation @s[scores={glib.var=270000..}] glib.var3 += 36000 glib.const

# Calcul Cos

scoreboard players operation @s glib.res = @s glib.var3
scoreboard players operation @s glib.res *= @s glib.res
scoreboard players operation @s glib.res *= 4 glib.const
scoreboard players operation @s glib.res *= Neg glib.const
scoreboard players operation @s glib.res += 324000000 glib.const
scoreboard players operation @s glib.var2 = @s glib.var3
scoreboard players operation @s glib.var2 *= @s glib.var2
scoreboard players operation @s glib.var2 += 324000000 glib.const
scoreboard players operation @s glib.var2 /= 1000 glib.const
scoreboard players operation @s glib.res /= @s glib.var2

scoreboard players operation @s[scores={glib.var=90000..269999}] glib.res *= Neg glib.const
