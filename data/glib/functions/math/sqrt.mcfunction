#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/sqrt
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

scoreboard players set @s[scores={glib.var=..1}] glib.var2 1
execute if entity @s[scores={glib.var=2..}] run function glib:math/get_next_pow2
scoreboard players operation @s glib.var2 = @s glib.res

scoreboard players set @s glib.res 1
scoreboard players operation @s glib.var3 = @s glib.res
scoreboard players operation @s glib.var3 *= @s glib.res

execute if entity @s[scores={glib.var2=2..}] unless score @s glib.var3 = @s glib.var run function glib:math/child/sqrt_loop

scoreboard players operation @s glib.var3 = @s glib.res
scoreboard players operation @s glib.var3 *= @s glib.res

execute if score @s glib.var3 > @s glib.var run scoreboard players remove glib.res 1
