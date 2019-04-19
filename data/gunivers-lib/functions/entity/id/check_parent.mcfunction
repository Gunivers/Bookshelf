# NAME: Check Parent ID
# PATH: gunivers-lib:entity/id/check_parent

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# INPUT:
# - TargetId (score)

# OUTPUT:
# - IdMatch (tag)
# - IdUpper (tag)
# - IdLower (tag)

# INIT
scoreboard objectives add ParentId dummy
scoreboard objectives add TargetId dummy

# CODE:
#____________________________________________________________________________________________________

tag @e remove ParentIdMatch
tag @e remove ParentIdUpper
tag @e remove ParentIdLower
tag @e remove ParentIdChecker
scoreboard players operation @e ParentId -= @s TargetId
tag @e[scores={ParentId=0}] add ParentIdMatch
tag @e[scores={ParentId=..-1}] add ParentIdUpper
tag @e[scores={ParentId=-1..}] add ParentIdLower
tag @s add ParentIdChecker
scoreboard players operation @e ParentId += @s TargetId

#tellraw @a ["",{"text":"[DEBUG] ","color":"green"},{"text":"ID: ","color":"none"},{"score":{"name":"@s","objective":"ParentId"},"color":"none"},{"text":" TargetId: ","color":"none"},{"score":{"name":"@s","objective":"TargetId"},"color":"none"}]
#tellraw @a ["",{"text":"[DEBUG] ","color":"red"},{"text":"Match: "},{"selector":"@e[tag=ParentIdMatch]"}]
#tellraw @a ["",{"text":"[DEBUG] ","color":"green"},{"text":"Upper: "},{"selector":"@e[tag=ParentIdUpper]"}]
#tellraw @a ["",{"text":"[DEBUG] ","color":"green"},{"text":"Lower: "},{"selector":"@e[tag=ParentIdLower]"}]
#tellraw @a ["",{"text":"[DEBUG] ","color":"green"},{"text":"Checker: "},{"selector":"@e[tag=ParentIdChecker]"}]
