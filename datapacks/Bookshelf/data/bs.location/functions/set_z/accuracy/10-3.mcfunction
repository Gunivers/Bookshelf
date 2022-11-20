#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.location:set_z/accuracy/10-3
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.locZ dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Z","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e[tag=bs.setLocation] remove bs.setLocation
tag @s add bs.setLocation

# Player
execute if entity @s[type=minecraft:player] run function bs.core:default_entity
execute if entity @s[type=minecraft:player] as @e[tag=bs.new,limit=1] run function bs.location:set_z/accuracy/10-3/player

# Non-player
execute if entity @s[type=!minecraft:player] store result entity @s Pos[2] double 0.001 run scoreboard players add @s bs.locZ 0

tag @s remove bs.setLocation
