#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: bs.math:trig/sin/accuracy/10-3
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

# Retranscription of bs.var2 on interval [0;18000[

# tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"X = ","color":"red"},{"score":{"name":"@s","objective":"bs.var0"}}]

scoreboard players operation @s bs.var2 = @s bs.var0
scoreboard players operation @s bs.var2 /= 10 bs.const
scoreboard players operation @s[scores={bs.var2=18000}] bs.var2 -= 18000 bs.const

# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"X % 180 = ","color":"red"},{"score":{"name":"@s","objective":"bs.var2"}}]

# Calcul Sin

scoreboard players operation @s bs.res0 = @s bs.var2
scoreboard players operation @s bs.res0 *= Neg bs.const
scoreboard players operation @s bs.res0 += 18000 bs.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"bs.var1"}}]
scoreboard players operation @s bs.res0 *= @s bs.var2
scoreboard players operation @s bs.res0 *= 4 bs.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"bs.var1"}}]

scoreboard players operation @s bs.var1 = @s bs.var2
scoreboard players operation @s bs.var1 *= Neg bs.const
scoreboard players operation @s bs.var1 += 18000 bs.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"bs.var1"}}]
scoreboard players operation @s bs.var1 *= @s bs.var2
scoreboard players operation @s bs.var1 *= Neg bs.const
scoreboard players operation @s bs.var1 += 405000000 bs.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"bs.var1"}}]
scoreboard players operation @s bs.var1 /= 1000 bs.const
scoreboard players operation @s bs.res0 /= @s bs.var1
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"bs.var1"}}]

scoreboard players operation @s[scores={bs.var0=180000}] bs.res0 *= Neg bs.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"Sin(X) = ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
