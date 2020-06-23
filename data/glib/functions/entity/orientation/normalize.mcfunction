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

scoreboard objectives add glib.ori.v dummy
scoreboard objectives add glib.ori.h dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.ori.v %= 180 glib.const
scoreboard players operation @s glib.ori.h %= 360 glib.const

scoreboard players add @s[scores={glib.ori.v=..-1}] glib.ori.v 180
scoreboard players add @s[scores={glib.ori.h=..-1}] glib.ori.h 360
