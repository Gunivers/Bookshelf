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

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Res1 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 %= @s Var2
tag @s[scores={Var3=0}] add CantApply

scoreboard players operation @s[tag=!CantApply] Var3 = @s Var1
scoreboard players operation @s[tag=!CantApply] Var3 *= 10 Constant
scoreboard players operation @s[tag=!CantApply] Var3 /= @s Var2
scoreboard players operation @s[tag=!CantApply] Var3 %= 10 Constant

scoreboard players operation @s Res1 = @s Var1
scoreboard players operation @s Res1 /= @s Var2
scoreboard players add @s[scores={Var3=5..},tag=!CantApply] Res1 1
scoreboard players remove @s[scores={Var3=..-5},tag=!CantApply] Res1 1

tag @s remove CantApply
