#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/arctan
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:
# - This function returns atan(x) in degrees, x must be in interval [-1000;1000] instead of [-1;1] (scaled by 1000)
# - Rounds the result to the nearest integer

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Res1 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var5 dummy
scoreboard objectives add Res1 dummy

# CODE:

scoreboard players set @s Var5 1
scoreboard players set @s[scores={Var1=..-1}] Var5 -1

scoreboard players operation @s Var1 *= @s Var5

function glib:math/child/arctan-child

scoreboard players operation @s Res1 *= @s Var5
