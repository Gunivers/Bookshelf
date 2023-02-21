#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.location:get
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.loc.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location X","color":"aqua"}]
scoreboard objectives add bs.loc.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Y","color":"aqua"}]
scoreboard objectives add bs.loc.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Z","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function bs.core:default_entity

execute store result score @s bs.loc.x run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[0] 1
execute store result score @s bs.loc.y run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[1] 1
execute store result score @s bs.loc.z run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[2] 1

execute as @e[tag=bs.new] run function bs.health:safe_kill
