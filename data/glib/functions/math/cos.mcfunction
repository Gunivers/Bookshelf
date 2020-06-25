#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/cos
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note: The input is the angle in degrees. The result is scaled by 1000

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.res0 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Convert to angle [0;360]
# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"INPUT: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}}]

scoreboard players operation @s[scores={glib.var0=..-1}] glib.var0 *= Neg glib.const
scoreboard players operation @s[scores={glib.var0=360..}] glib.var0 %= 360 glib.const

# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"MODULO: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}}]

# Retranscription of glib.var0 on interval [0;90[

scoreboard players operation @s glib.var2 = @s glib.var0
scoreboard players operation @s[scores={glib.var0=90..179}] glib.var2 *= Neg glib.const
scoreboard players operation @s[scores={glib.var0=90..179}] glib.var2 += 180 glib.const
scoreboard players operation @s[scores={glib.var0=180..269}] glib.var2 -= 180 glib.const
scoreboard players operation @s[scores={glib.var0=270..}] glib.var2 *= Neg glib.const
scoreboard players operation @s[scores={glib.var0=270..}] glib.var2 += 360 glib.const


# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"0-90: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}}]

# Calcul Cos

scoreboard players operation @s glib.res0 = @s glib.var2
scoreboard players operation @s glib.res0 *= @s glib.res0
scoreboard players operation @s glib.res0 *= 4 glib.const
scoreboard players operation @s glib.res0 *= Neg glib.const
scoreboard players operation @s glib.res0 += 32400 glib.const
scoreboard players operation @s glib.res0 *= 1000 glib.const
scoreboard players operation @s glib.var1 = @s glib.var2
scoreboard players operation @s glib.var1 *= @s glib.var1
scoreboard players operation @s glib.var1 += 32400 glib.const
scoreboard players operation @s glib.res0 /= @s glib.var1

scoreboard players operation @s[scores={glib.var0=90..269}] glib.res0 *= Neg glib.const

# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"Result: ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
