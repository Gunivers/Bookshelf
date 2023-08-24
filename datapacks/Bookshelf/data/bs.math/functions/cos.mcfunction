#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:cos
# Documentation: https://bs-core.readthedocs.io//math
# Parallelizable: true
# Note: The input is the angle in degrees. The result is scaled by 1000

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE


# Convert to angle [0;360]
# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"INPUT: ","color":"red"},{"score":{"name":"@s","objective":"bs.in.0"}}]

scoreboard players operation VAR0 bs = @s bs.in.0
scoreboard players operation VAR0 bs %= 360 bs.const

# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"MODULO: ","color":"red"},{"score":{"name":"@s","objective":"bs.in.0"}}]

# Retranscription of bs.in.0 on interval [0;90[

scoreboard players operation VAR2 bs = VAR0 bs
execute if score VAR0 bs matches 90..179 run scoreboard players operation VAR2 bs *= -1 bs.const
execute if score VAR0 bs matches 90..179 run scoreboard players operation VAR2 bs += 180 bs.const
execute if score VAR0 bs matches 180..269 run scoreboard players operation VAR2 bs -= 180 bs.const
execute if score VAR0 bs matches 270.. run scoreboard players operation VAR2 bs *= -1 bs.const
execute if score VAR0 bs matches 270.. run scoreboard players operation VAR2 bs += 360 bs.const


# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"0-90: ","color":"red"},{"score":{"name":"@s","objective":"bs.in.0"}}]

# Calcul Cos

scoreboard players operation @s bs.out.0 = VAR2 bs
scoreboard players operation @s bs.out.0 *= @s bs.out.0
scoreboard players operation @s bs.out.0 *= 4 bs.const
scoreboard players operation @s bs.out.0 *= -1 bs.const
scoreboard players operation @s bs.out.0 += 32400 bs.const
scoreboard players operation @s bs.out.0 *= 1000 bs.const
scoreboard players operation VAR1 bs = VAR2 bs
scoreboard players operation VAR1 bs *= VAR1 bs
scoreboard players operation VAR1 bs += 32400 bs.const
scoreboard players operation @s bs.out.0 /= VAR1 bs

execute if score VAR0 bs matches 90..269 run scoreboard players operation @s bs.out.0 *= -1 bs.const

# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"Result: ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
