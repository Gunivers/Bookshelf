#__________________________________________________
# INFO     Copyright © 2023 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: entity/id/getsuid
# Documentation: https://bs-core.readthedocs.io//entity#id
# Parallelizable: true
# Note: Gives a unique identifier to the source entity
# - To reset SUID, set the entity score "SUID" at 0 and make it execute this function.

#__________________________________________________
# PARAMETERS

# Output: SUID (score): Simple Unique ID

#__________________________________________________
# INIT

scoreboard objectives add bs.id dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"ID","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players add @s bs.id 0

execute if entity @s[scores={bs.id=0}] run scoreboard players add ID.SIMPLE bs.data 1
execute if entity @s[scores={bs.id=0}] run scoreboard players operation @s bs.id = ID.SIMPLE bs.data

tag @s add bs.id.set
tag @s remove bs.id.type.cuid
tag @s add bs.id.type.suid
