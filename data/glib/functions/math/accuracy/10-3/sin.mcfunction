#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: glib:math/accuracy/10-3/sin
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note:

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

# Retranscription of glib.var2 on interval [0;18000[

# tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"X = ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}}]

scoreboard players operation @s glib.var2 = @s glib.var0
scoreboard players operation @s glib.var2 /= 10 glib.const
scoreboard players operation @s[scores={glib.var2=18000}] glib.var2 -= 18000 glib.const

# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"X % 180 = ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}}]

# Calcul Sin

scoreboard players operation @s glib.res0 = @s glib.var2
scoreboard players operation @s glib.res0 *= Neg glib.const
scoreboard players operation @s glib.res0 += 18000 glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"glib.var1"}}]
scoreboard players operation @s glib.res0 *= @s glib.var2
scoreboard players operation @s glib.res0 *= 4 glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"glib.var1"}}]

scoreboard players operation @s glib.var1 = @s glib.var2
scoreboard players operation @s glib.var1 *= Neg glib.const
scoreboard players operation @s glib.var1 += 18000 glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"glib.var1"}}]
scoreboard players operation @s glib.var1 *= @s glib.var2
scoreboard players operation @s glib.var1 *= Neg glib.const
scoreboard players operation @s glib.var1 += 405000000 glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"glib.var1"}}]
scoreboard players operation @s glib.var1 /= 1000 glib.const
scoreboard players operation @s glib.res0 /= @s glib.var1
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"glib.var1"}}]

scoreboard players operation @s[scores={glib.var0=180000}] glib.res0 *= Neg glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"Sin(X) = ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
