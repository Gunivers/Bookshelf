#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:divide
# Documentation: https://bs-core.readthedocs.io//math
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

scoreboard players operation @s bs.var2 = @s bs.var0
scoreboard players operation @s bs.var2 %= @s bs.var1
tag @s[scores={bs.var2=0}] add CantApply

scoreboard players operation @s[tag=!CantApply] bs.var2 = @s bs.var0
scoreboard players operation @s[tag=!CantApply] bs.var2 *= 10 bs.const
scoreboard players operation @s[tag=!CantApply] bs.var2 /= @s bs.var1
scoreboard players operation @s[tag=!CantApply] bs.var2 %= 10 bs.const

scoreboard players operation @s bs.res0 = @s bs.var0
scoreboard players operation @s bs.res0 /= @s bs.var1
scoreboard players add @s[scores={bs.var2=5..},tag=!CantApply] bs.res0 1
scoreboard players remove @s[scores={bs.var2=..-5},tag=!CantApply] bs.res0 1

tag @s remove CantApply
