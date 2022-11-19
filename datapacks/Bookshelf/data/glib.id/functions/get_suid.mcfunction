#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: entity/id/getsuid
# Documentation: https://glib-core.readthedocs.io//entity#id
# Parallelizable: true
# Note: Gives a unique identifier to the source entity
# - To reset SUID, set the entity score "SUID" at 0 and make it execute this function.

#__________________________________________________
# PARAMETERS

# Output: SUID (score): Simple Unique ID

#__________________________________________________
# INIT

scoreboard objectives add bs.id dummy [{"text":"GLib ","color":"gold"},{"text":"ID","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players add @s bs.id 0

execute if entity @s[scores={bs.id=0}] run scoreboard players add id.simple bs.data 1
execute if entity @s[scores={bs.id=0}] run scoreboard players operation @s bs.id = id.simple bs.data

tag @s add bs.id.set
tag @s remove bs.id.type.cuid
tag @s add bs.id.type.suid
