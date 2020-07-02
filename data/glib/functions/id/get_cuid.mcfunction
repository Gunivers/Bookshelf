#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:id/Getcuid
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#id
# Parallelizable: true
# Note: Gives a unique identifier to the source entity.
# - To reset CUID, set the entity score "CUID" at 0 and make it execute this function.

#__________________________________________________
# PARAMETERS

# Output: @s glib.id (score): Chain Unique ID

#__________________________________________________
# INIT

scoreboard objectives add glib.id dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players add @s glib.id 0

execute if entity @s[scores={glib.id=0}] run scoreboard players add id.chain glib.data 1
execute if entity @s[scores={glib.id=0}] run scoreboard players operation @s glib.id = id.chain glib.data

tag @s add glib.id.set
tag @s remove glib.id.type.suid
tag @s add glib.id.type.cuid
