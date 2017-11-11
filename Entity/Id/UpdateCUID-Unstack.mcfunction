# NAME: Update Chain Unique Identifier - Unstack
# PATH: Entity/Id/UpdateCUID-Unstack

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# CHILD OF:
# - Entity/Id/UpdateCUID-Check

# INPUT:
# - 

# OUTPUT:
# - ID

# NOTE:
# - 

# CODE:

scoreboard players tag @s remove StackedCUID
execute @e[tag=UpdateCUID,score_ID_min=0] ~ ~ ~ scoreboard players add @s[tag=!CorrectCUID] ID 1
