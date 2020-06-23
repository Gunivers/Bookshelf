#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/id/Getcuid
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#id
# Note: Gives a unique identifier to the source entity.
# - To reset CUID, set the entity score "CUID" at 0 and make it execute this function.

#__________________________________________________
# PARAMETERS

# Output: CUID (score): Chain Unique ID

#__________________________________________________
# INIT

scoreboard objectives add glib.id dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players add @s glib.id 0

execute if entity @s[scores={glib.id=0}] run scoreboard players add id.chain glib.data 0
execute if entity @s[scores={glib.id=0}] run scoreboard players operation @s glib.id = id.chain glib.data
execute if entity @s[scores={glib.id=0}] run scoreboard players add id.chain glib.data 1
