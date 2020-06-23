#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: glib:math/accuracy/10-3/sin
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

# Retranscription of glib.var3 on interval [0;18000[

# tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"X = ","color":"red"},{"score":{"name":"@s","objective":"glib.var"}}]

scoreboard players operation @s glib.var3 = @s glib.var
scoreboard players operation @s glib.var3 /= 10 glib.const
scoreboard players operation @s[scores={glib.var3=18000}] glib.var3 -= 18000 glib.const

# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"X % 180 = ","color":"red"},{"score":{"name":"@s","objective":"glib.var3"}}]

# Calcul Sin

scoreboard players operation @s glib.res = @s glib.var3
scoreboard players operation @s glib.res *= Neg glib.const
scoreboard players operation @s glib.res += 18000 glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}}]
scoreboard players operation @s glib.res *= @s glib.var3
scoreboard players operation @s glib.res *= 4 glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}}]

scoreboard players operation @s glib.var2 = @s glib.var3
scoreboard players operation @s glib.var2 *= Neg glib.const
scoreboard players operation @s glib.var2 += 18000 glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}}]
scoreboard players operation @s glib.var2 *= @s glib.var3
scoreboard players operation @s glib.var2 *= Neg glib.const
scoreboard players operation @s glib.var2 += 405000000 glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}}]
scoreboard players operation @s glib.var2 /= 1000 glib.const
scoreboard players operation @s glib.res /= @s glib.var2
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}}]

scoreboard players operation @s[scores={glib.var=180000}] glib.res *= Neg glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"Sin(X) = ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
