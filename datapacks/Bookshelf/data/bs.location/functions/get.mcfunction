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

scoreboard objectives add bs.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location X","color":"dark_gray"}]
scoreboard objectives add bs.locY dummy [{"text":"GLib ","color":"gold"},{"text":"Location Y","color":"dark_gray"}]
scoreboard objectives add bs.locZ dummy [{"text":"GLib ","color":"gold"},{"text":"Location Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function bs.core:default_entity

execute store result score @s bs.locX run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[0] 1
execute store result score @s bs.locY run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[1] 1
execute store result score @s bs.locZ run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[2] 1

execute as @e[tag=bs.new] run function bs.health:safe_kill
