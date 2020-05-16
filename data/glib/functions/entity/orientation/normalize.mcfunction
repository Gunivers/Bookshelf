#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/orientation/normalize
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#orientation
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add OriV dummy
scoreboard objectives add OriH dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s OriV %= 180 Constant
scoreboard players operation @s OriH %= 360 Constant

scoreboard players add @s[scores={OriV=..-1}] OriV 180
scoreboard players add @s[scores={OriH=..-1}] OriH 360
