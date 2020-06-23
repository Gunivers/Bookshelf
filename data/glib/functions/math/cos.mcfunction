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

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Convert to angle [0;360]
# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"INPUT: ","color":"red"},{"score":{"name":"@s","objective":"glib.var"}}]

scoreboard players operation @s[scores={glib.var=..-1}] glib.var *= Neg glib.const
scoreboard players operation @s[scores={glib.var=360..}] glib.var %= 360 glib.const

# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"MODULO: ","color":"red"},{"score":{"name":"@s","objective":"glib.var"}}]

# Retranscription of glib.var on interval [0;90[

scoreboard players operation @s glib.var3 = @s glib.var
scoreboard players operation @s[scores={glib.var=90..179}] glib.var3 *= Neg glib.const
scoreboard players operation @s[scores={glib.var=90..179}] glib.var3 += 180 glib.const
scoreboard players operation @s[scores={glib.var=180..269}] glib.var3 -= 180 glib.const
scoreboard players operation @s[scores={glib.var=270..}] glib.var3 *= Neg glib.const
scoreboard players operation @s[scores={glib.var=270..}] glib.var3 += 360 glib.const


# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"0-90: ","color":"red"},{"score":{"name":"@s","objective":"glib.var"}}]

# Calcul Cos

scoreboard players operation @s glib.res = @s glib.var3
scoreboard players operation @s glib.res *= @s glib.res
scoreboard players operation @s glib.res *= 4 glib.const
scoreboard players operation @s glib.res *= Neg glib.const
scoreboard players operation @s glib.res += 32400 glib.const
scoreboard players operation @s glib.res *= 1000 glib.const
scoreboard players operation @s glib.var2 = @s glib.var3
scoreboard players operation @s glib.var2 *= @s glib.var2
scoreboard players operation @s glib.var2 += 32400 glib.const
scoreboard players operation @s glib.res /= @s glib.var2

scoreboard players operation @s[scores={glib.var=90..269}] glib.res *= Neg glib.const

# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"Result: ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
