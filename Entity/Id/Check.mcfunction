# NAME: Check ID
# PATH: Gunivers-Lib: Entity/Id/Check

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - ID (score dummy)
# - TargetID (score dummy)

# INPUT:
# - TargetID

# OUTPUT:
# - IdMatch (tag)
# - IdUpper (tag)
# - IdLower (tag)

# CODE:
scoreboard players tag @e remove IdMatch
scoreboard players tag @e remove IdUpper
scoreboard players tag @e remove IdLower
scoreboard players tag @e remove IdChecker
scoreboard players operation @e ID -= @s TargetID
scoreboard players tag @e[score_ID_min=0,score_ID=0] add IdMatch
scoreboard players tag @e[score_ID_min=1] add IdUpper
scoreboard players tag @e[score_ID=-1] add IdLower
scoreboard players tag @s add IdChecker
scoreboard players operation @e ID += @s TargetID

#execute @e[score_ID_min=1] ~ ~ ~ tellraw @a ["",{"text":"[DEBUG] ","color":"green"},{"text":"ID: ","color":"none"},{"score":{"name":"@s","objective":"ID"},"color":"none"},{"text":" TargetID: ","color":"none"},{"score":{"name":"@s","objective":"TargetID"},"color":"none"}]