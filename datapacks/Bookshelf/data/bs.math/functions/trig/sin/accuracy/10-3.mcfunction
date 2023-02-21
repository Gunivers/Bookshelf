#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: bs.math:trig/sin/accuracy/10-3
# Documentation: https://bs-core.readthedocs.io//math
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

# Retranscription of bs.in.2 on interval [0;18000[

# tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"X = ","color":"red"},{"score":{"name":"@s","objective":"bs.in.0"}}]

scoreboard players operation @s bs.in.2 = @s bs.in.0
scoreboard players operation @s bs.in.2 /= 10 bs.const
scoreboard players operation @s[scores={bs.in.2=18000}] bs.in.2 -= 18000 bs.const

# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"X % 180 = ","color":"red"},{"score":{"name":"@s","objective":"bs.in.2"}}]

# Calcul Sin

scoreboard players operation @s bs.out.0 = @s bs.in.2
scoreboard players operation @s bs.out.0 *= Neg bs.const
scoreboard players operation @s bs.out.0 += 18000 bs.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"bs.in.1"}}]
scoreboard players operation @s bs.out.0 *= @s bs.in.2
scoreboard players operation @s bs.out.0 *= 4 bs.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"bs.in.1"}}]

scoreboard players operation @s bs.in.1 = @s bs.in.2
scoreboard players operation @s bs.in.1 *= Neg bs.const
scoreboard players operation @s bs.in.1 += 18000 bs.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"bs.in.1"}}]
scoreboard players operation @s bs.in.1 *= @s bs.in.2
scoreboard players operation @s bs.in.1 *= Neg bs.const
scoreboard players operation @s bs.in.1 += 405000000 bs.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"bs.in.1"}}]
scoreboard players operation @s bs.in.1 /= 1000 bs.const
scoreboard players operation @s bs.out.0 /= @s bs.in.1
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"WIP = ","color":"red"},{"score":{"name":"@s","objective":"bs.in.1"}}]

scoreboard players operation @s[scores={bs.in.0=180000}] bs.out.0 *= Neg bs.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"Sin(X) = ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
