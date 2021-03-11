#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/sin
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note: The input is the angle in degrees. The result is scaled by 1000

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation VAR0 glib = @s glib.var0

# Convert to angle [-90;90]

# tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X = ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}}]
scoreboard players operation VAR0 glib += 90 glib.const
execute if score VAR0 glib matches ..-1 run scoreboard players operation VAR0 glib *= Neg glib.const
execute if score VAR0 glib matches 360.. run scoreboard players operation VAR0 glib %= 180 glib.const
scoreboard players operation VAR0 glib -= 90 glib.const
# tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"text":"X % 180 = ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}}]

# Retranscription of glib.var0 on interval [0;180[

scoreboard players operation VAR2 glib = VAR0 glib
execute if score VAR0 glib matches ..-1 run scoreboard players operation VAR2 glib *= Neg glib.const

# Calcul Sin

scoreboard players operation @s glib.res0 = VAR2 glib
scoreboard players operation @s glib.res0 *= Neg glib.const
scoreboard players operation @s glib.res0 += 180 glib.const
scoreboard players operation @s glib.res0 *= VAR2 glib
scoreboard players operation @s glib.res0 *= 4 glib.const
scoreboard players operation @s glib.res0 *= 1000 glib.const

scoreboard players operation VAR1 glib = VAR2 glib
scoreboard players operation VAR1 glib *= Neg glib.const
scoreboard players operation VAR1 glib += 180 glib.const
scoreboard players operation VAR1 glib *= VAR2 glib
scoreboard players operation VAR1 glib *= Neg glib.const
scoreboard players operation VAR1 glib += 40500 glib.const
scoreboard players operation @s glib.res0 /= VAR1 glib

execute if score VAR0 glib matches ..-1 run scoreboard players operation @s glib.res0 *= Neg glib.const
