#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/id/Getcuid
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#id
# Note: Gives a unique identifier to the source entity

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Data dummy
scoreboard objectives add Id dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players add @s Id 0

execute if entity @s[scores={Id=0}] run scoreboard players add CUID Data 0
execute if entity @s[scores={Id=0}] run scoreboard players operation @s Id = CUID Data
execute if entity @s[scores={Id=0}] run scoreboard players add CUID Data 1
