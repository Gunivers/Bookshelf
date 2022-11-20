#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.id:Getcuid
# Documentation: https://bs-core.readthedocs.io//entity#id
# Parallelizable: true
# Note: Gives a unique identifier to the source entity.
# - To reset CUID, set the entity score "CUID" at 0 and make it execute this function.

#__________________________________________________
# PARAMETERS

# Output: @s bs.id (score): Chain Unique ID

#__________________________________________________
# INIT

scoreboard objectives add bs.id dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"ID","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players add @s bs.id 0

execute if entity @s[scores={bs.id=0}] run scoreboard players add id.chain bs.data 1
execute if entity @s[scores={bs.id=0}] run scoreboard players operation @s bs.id = id.chain bs.data

tag @s add bs.id.set
tag @s remove bs.id.type.suid
tag @s add bs.id.type.cuid
