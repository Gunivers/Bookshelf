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
tag @e remove IdMatch
tag @e remove IdUpper
tag @e remove IdLower
tag @e remove IdChecker
scoreboard players operation @e Id -= @s TargetId
tag @e[scores={Id=0}] add IdMatch
tag @e[scores={Id=..-1}] add IdUpper
tag @e[scores={Id=-1..}] add IdLower
tag @s add IdChecker
scoreboard players operation @e Id += @s TargetId

#execute @e[score_ID_min=1] ~ ~ ~ tellraw @a ["",{"text":"[DEBUG] ","color":"green"},{"text":"ID: ","color":"none"},{"score":{"name":"@s","objective":"ID"},"color":"none"},{"text":" TargetID: ","color":"none"},{"score":{"name":"@s","objective":"TargetID"},"color":"none"}]
