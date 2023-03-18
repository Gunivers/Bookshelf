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

scoreboard players operation @s bs.in.2 = @s bs.in.0
scoreboard players operation @s bs.in.2 %= @s bs.in.1
tag @s[scores={bs.in.2=0}] add CantApply

scoreboard players operation @s[tag=!CantApply] bs.in.2 = @s bs.in.0
scoreboard players operation @s[tag=!CantApply] bs.in.2 *= 10 bs.const
scoreboard players operation @s[tag=!CantApply] bs.in.2 /= @s bs.in.1
scoreboard players operation @s[tag=!CantApply] bs.in.2 %= 10 bs.const

scoreboard players operation @s bs.out.0 = @s bs.in.0
scoreboard players operation @s bs.out.0 /= @s bs.in.1
scoreboard players add @s[scores={bs.in.2=5..},tag=!CantApply] bs.out.0 1
scoreboard players remove @s[scores={bs.in.2=..-5},tag=!CantApply] bs.out.0 1

tag @s remove CantApply
