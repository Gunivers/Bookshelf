#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/divide
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note: Allows to retrieve the value rounded to the integer near of a normal division.

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var2 = @s glib.var0
scoreboard players operation @s glib.var2 %= @s glib.var1
tag @s[scores={glib.var2=0}] add CantApply

scoreboard players operation @s[tag=!CantApply] glib.var2 = @s glib.var0
scoreboard players operation @s[tag=!CantApply] glib.var2 *= 10 glib.const
scoreboard players operation @s[tag=!CantApply] glib.var2 /= @s glib.var1
scoreboard players operation @s[tag=!CantApply] glib.var2 %= 10 glib.const

scoreboard players operation @s glib.res0 = @s glib.var0
scoreboard players operation @s glib.res0 /= @s glib.var1
scoreboard players add @s[scores={glib.var2=5..},tag=!CantApply] glib.res0 1
scoreboard players remove @s[scores={glib.var2=..-5},tag=!CantApply] glib.res0 1

tag @s remove CantApply
