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

# Convert to angle [-90;90]

# tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X = ","color":"red"},{"score":{"name":"@s","objective":"glib.var"}}]
scoreboard players operation @s glib.var += 90 glib.const
scoreboard players operation @s[scores={glib.var=..-1}] glib.var *= Neg glib.const
scoreboard players operation @s[scores={glib.var=360..}] glib.var %= 180 glib.const
scoreboard players operation @s glib.var -= 90 glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"text":"X % 180 = ","color":"red"},{"score":{"name":"@s","objective":"glib.var3"}}]

# Retranscription of glib.var on interval [0;180[

scoreboard players operation @s glib.var3 = @s glib.var
scoreboard players operation @s[scores={glib.var=..-1}] glib.var3 *= Neg glib.const

# Calcul Sin

scoreboard players operation @s glib.res = @s glib.var3
scoreboard players operation @s glib.res *= Neg glib.const
scoreboard players operation @s glib.res += 180 glib.const
scoreboard players operation @s glib.res *= @s glib.var3
scoreboard players operation @s glib.res *= 4 glib.const
scoreboard players operation @s glib.res *= 1000 glib.const

scoreboard players operation @s glib.var2 = @s glib.var3
scoreboard players operation @s glib.var2 *= Neg glib.const
scoreboard players operation @s glib.var2 += 180 glib.const
scoreboard players operation @s glib.var2 *= @s glib.var3
scoreboard players operation @s glib.var2 *= Neg glib.const
scoreboard players operation @s glib.var2 += 40500 glib.const
scoreboard players operation @s glib.res /= @s glib.var2

scoreboard players operation @s[scores={glib.var=..-1}] glib.res *= Neg glib.const
