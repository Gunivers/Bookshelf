#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib.orientation:normalize
# Documentation: https://glib-core.readthedocs.io//entity#orientation
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.ori.v dummy [{"text":"GLib ","color":"gold"},{"text":"Orientation V","color":"dark_gray"}]
scoreboard objectives add glib.ori.h dummy [{"text":"GLib ","color":"gold"},{"text":"Orientation H","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.ori.v %= 180 glib.const
scoreboard players operation @s glib.ori.h %= 360 glib.const

scoreboard players add @s[scores={glib.ori.v=..-1}] glib.ori.v 180
scoreboard players add @s[scores={glib.ori.h=..-1}] glib.ori.h 360
