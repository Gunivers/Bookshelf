#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: glib:entity/id/check_parent
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#id
# Note:

#__________________________________________________
# PARAMETERS

# Output: ParentIdMatch (tag): On every entities that have the same ParentId as @s TargetId
# Output: ParentIdUpper (tag): On every entities that have an ParentId socre upper than @s TargetId
# Output: ParentIdUpper (tag): On every entities that have an ParentId socre lower than @s TargetId
# Output: ParentIdChecker (tag): On @s

#__________________________________________________
# INIT

scoreboard objectives add ParentId dummy
scoreboard objectives add TargetId dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e remove ParentIdMatch
tag @e remove ParentIdUpper
tag @e remove ParentIdLower
tag @e remove ParentIdChecker
scoreboard players operation @e ParentId -= @s TargetId
tag @e[scores={ParentId=0}] add ParentIdMatch
tag @e[scores={ParentId=..-1}] add ParentIdLower
tag @e[scores={ParentId=-1..}] add ParentIdUpper
tag @s add ParentIdChecker
scoreboard players operation @e ParentId += @s TargetId

#tellraw @a ["",{"text":"[DEBUG] ","color":"green"},{"text":"ID: ","color":"none"},{"score":{"name":"@s","objective":"ParentId"},"color":"none"},{"text":" TargetId: ","color":"none"},{"score":{"name":"@s","objective":"TargetId"},"color":"none"}]
#tellraw @a ["",{"text":"[DEBUG] ","color":"red"},{"text":"Match: "},{"selector":"@e[tag=ParentIdMatch]"}]
#tellraw @a ["",{"text":"[DEBUG] ","color":"green"},{"text":"Upper: "},{"selector":"@e[tag=ParentIdUpper]"}]
#tellraw @a ["",{"text":"[DEBUG] ","color":"green"},{"text":"Lower: "},{"selector":"@e[tag=ParentIdLower]"}]
#tellraw @a ["",{"text":"[DEBUG] ","color":"green"},{"text":"Checker: "},{"selector":"@e[tag=ParentIdChecker]"}]
