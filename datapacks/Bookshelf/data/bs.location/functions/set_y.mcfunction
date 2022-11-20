#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:set_y
# Documentation: https://bs-core.readthedocs.io//Functions#Location
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.locY dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Location Y","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if entity @s[type=minecraft:player] run function bs.location:set_y/child/player
execute if entity @s[type=!minecraft:player] store result entity @s Pos[1] double 1 run scoreboard players add @s bs.locY 0
