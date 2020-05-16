#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: entity/id/getsuid
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#id
# Note: Gives a unique identifier to the source entity
# - To reset SUID, set the entity score "SUID" at 0 and make it execute this function.

#__________________________________________________
# PARAMETERS

# Output: SUID (score): Simple Unique ID

#__________________________________________________
# INIT

scoreboard objectives add Data dummy
scoreboard objectives add Id dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players add @s Id 0

execute if entity @s[scores={Id=0}] run scoreboard players add SUID Data 1
execute if entity @s[scores={Id=0}] run scoreboard players operation @s Id = SUID Data
