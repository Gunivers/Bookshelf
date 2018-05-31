# NAME: Check ID
# PATH: gunivers-lib:entity/id/check

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Id (score dummy)
# - TargetId (score dummy)

# INPUT:
# - TargetId

# OUTPUT:
# - IdMatch (tag)
# - IdUpper (tag)
# - IdLower (tag)

# CODE:
tag @e remove ParentIdMatch
tag @e remove ParentIdUpper
tag @e remove ParentIdLower
tag @e remove ParentIdChecker
scoreboard players operation @e Id -= @s TargetId
tag @e[scores={ParentId=0}] add ParentIdMatch
tag @e[scores={ParentId=..-1}] add ParentIdUpper
tag @e[scores={ParentId=-1..}] add ParentIdLower
tag @s add ParentIdChecker
scoreboard players operation @e ParentId += @s ParentTargetId

#execute @e[score_ID_min=1] ~ ~ ~ tellraw @a ["",{"text":"[DEBUG] ","color":"green"},{"text":"ID: ","color":"none"},{"score":{"name":"@s","objective":"ParentId"},"color":"none"},{"text":" TargetID: ","color":"none"},{"score":{"name":"@s","objective":"TargetID"},"color":"none"}]
