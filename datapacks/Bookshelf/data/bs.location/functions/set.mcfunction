#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:set
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

# Input: @s bs.locX (score)
# Input: @s bs.locY (score)
# Input: @s bs.locZ (score)

#__________________________________________________
# INIT

scoreboard objectives add bs.locX dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location X","color":"aqua"}]
scoreboard objectives add bs.locY dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Y","color":"aqua"}]
scoreboard objectives add bs.locZ dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Z","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if entity @s[type=minecraft:player] run function bs.location:set/child/player
execute if entity @s[type=!minecraft:player] store result entity @s Pos[0] double 1 run scoreboard players add @s bs.locX 0
execute if entity @s[type=!minecraft:player] store result entity @s Pos[1] double 1 run scoreboard players add @s bs.locY 0
execute if entity @s[type=!minecraft:player] store result entity @s Pos[2] double 1 run scoreboard players add @s bs.locZ 0
