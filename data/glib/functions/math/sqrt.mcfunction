#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/sqrt
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

scoreboard players set @s[scores={glib.var0=..1}] glib.var1 1
execute if entity @s[scores={glib.var0=2..}] run function glib:math/get_next_pow2
scoreboard players operation @s glib.var1 = @s glib.res0

scoreboard players set @s glib.res0 1
scoreboard players operation @s glib.var2 = @s glib.res0
scoreboard players operation @s glib.var2 *= @s glib.res0

execute if entity @s[scores={glib.var1=2..}] unless score @s glib.var2 = @s glib.var0 run function glib:math/child/sqrt_loop

scoreboard players operation @s glib.var2 = @s glib.res0
scoreboard players operation @s glib.var2 *= @s glib.res0

execute if score @s glib.var2 > @s glib.var0 run scoreboard players remove glib.res0 1
