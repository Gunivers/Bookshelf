#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.orientation:normalize
# Documentation: https://bs-core.readthedocs.io//entity#orientation
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.ori.v dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Orientation V","color":"aqua"}]
scoreboard objectives add bs.ori.h dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Orientation H","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.ori.v %= 180 bs.const
scoreboard players operation @s bs.ori.h %= 360 bs.const

scoreboard players add @s[scores={bs.ori.v=..-1}] bs.ori.v 180
scoreboard players add @s[scores={bs.ori.h=..-1}] bs.ori.h 360
