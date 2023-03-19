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

scoreboard players operation #math.divide.rest bs.data = @s bs.in.0
scoreboard players operation #math.divide.rest bs.data %= @s bs.in.1
execute if score #math.divide.rest bs.data matches 0 run tag @s add bs.math.divide.CantApply

execute if entity @s[tag=!bs.math.divide.CantApply] run scoreboard players operation #math.divide.rest bs.data = @s bs.in.0
execute if entity @s[tag=!bs.math.divide.CantApply] run scoreboard players operation #math.divide.rest bs.data *= 10 bs.const
execute if entity @s[tag=!bs.math.divide.CantApply] run scoreboard players operation #math.divide.rest bs.data /= @s bs.in.1
execute if entity @s[tag=!bs.math.divide.CantApply] run scoreboard players operation #math.divide.rest bs.data %= 10 bs.const

scoreboard players operation @s bs.out.0 = @s bs.in.0
scoreboard players operation @s bs.out.0 /= @s bs.in.1
execute if score #math.divide.rest bs.data matches 5.. run scoreboard players add @s[tag=!bs.math.divide.CantApply] bs.out.0 1
execute if score #math.divide.rest bs.data matches ..-5 run scoreboard players remove @s[tag=!bs.math.divide.CantApply] bs.out.0 1

tag @s remove bs.math.divide.CantApply
