# NAME: Check ID
# PATH: gunivers-lib:entity/id/check

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
scoreboard objectives add Id dummy
scoreboard objectives add TargetId dummy

# CODE:
#____________________________________________________________________________________________________

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

