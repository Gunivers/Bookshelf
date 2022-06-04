#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib.math:cos
# Documentation: https://glib-core.readthedocs.io//math
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
# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"INPUT: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}}]

scoreboard players operation VAR0 glib = @s glib.var0
execute if score VAR0 glib matches ..-1 run scoreboard players operation VAR0 glib *= Neg glib.const
execute if score VAR0 glib matches 360.. run scoreboard players operation VAR0 glib %= 360 glib.const

# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"MODULO: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}}]

# Retranscription of glib.var0 on interval [0;90[

scoreboard players operation VAR2 glib = VAR0 glib
execute if score VAR0 glib matches 90..179 run scoreboard players operation VAR2 glib *= Neg glib.const
execute if score VAR0 glib matches 90..179 run scoreboard players operation VAR2 glib += 180 glib.const
execute if score VAR0 glib matches 180..269 run scoreboard players operation VAR2 glib -= 180 glib.const
execute if score VAR0 glib matches 270.. run scoreboard players operation VAR2 glib *= Neg glib.const
execute if score VAR0 glib matches 270.. run scoreboard players operation VAR2 glib += 360 glib.const


# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"0-90: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}}]

# Calcul Cos

scoreboard players operation @s glib.res0 = VAR2 glib
scoreboard players operation @s glib.res0 *= @s glib.res0
scoreboard players operation @s glib.res0 *= 4 glib.const
scoreboard players operation @s glib.res0 *= Neg glib.const
scoreboard players operation @s glib.res0 += 32400 glib.const
scoreboard players operation @s glib.res0 *= 1000 glib.const
scoreboard players operation VAR1 glib = VAR2 glib
scoreboard players operation VAR1 glib *= VAR1 glib
scoreboard players operation VAR1 glib += 32400 glib.const
scoreboard players operation @s glib.res0 /= VAR1 glib

execute if score VAR0 glib matches 90..269 run scoreboard players operation @s glib.res0 *= Neg glib.const

# tellraw @a[tag=Debug] ["",{"text":"DEBUG -> ","color":"gray"},{"text":"Result: ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
