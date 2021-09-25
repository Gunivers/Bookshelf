#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: glib:math/trig/sin/accuracy/10-3
# Documentation: https://glib-core.readthedocs.io//math
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT






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
