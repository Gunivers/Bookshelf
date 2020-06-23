#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/divide
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note: Allows to retrieve the value rounded to the integer near of a normal division.

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

scoreboard players operation @s glib.var3 = @s glib.var
scoreboard players operation @s glib.var3 %= @s glib.var2
tag @s[scores={glib.var3=0}] add CantApply

scoreboard players operation @s[tag=!CantApply] glib.var3 = @s glib.var
scoreboard players operation @s[tag=!CantApply] glib.var3 *= 10 glib.const
scoreboard players operation @s[tag=!CantApply] glib.var3 /= @s glib.var2
scoreboard players operation @s[tag=!CantApply] glib.var3 %= 10 glib.const

scoreboard players operation @s glib.res = @s glib.var
scoreboard players operation @s glib.res /= @s glib.var2
scoreboard players add @s[scores={glib.var3=5..},tag=!CantApply] glib.res 1
scoreboard players remove @s[scores={glib.var3=..-5},tag=!CantApply] glib.res 1

tag @s remove CantApply
