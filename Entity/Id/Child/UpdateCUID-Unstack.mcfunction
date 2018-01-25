# NAME: Update Chain Unique Identifier - Unstack
# PATH: Entity/Id/Child/UpdateCUID-Unstack

# CHILD OF:
# - Entity/Id/Child/UpdateCUID-Check

# CODE:
scoreboard players tag @s remove StackedCUID
execute @e[tag=UpdateCUID,score_ID_min=0] ~ ~ ~ scoreboard players add @s[tag=!CorrectCUID] ID 1
