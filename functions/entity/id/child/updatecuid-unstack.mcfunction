# NAME: Update Chain Unique Identifier - Unstack
# PATH: gunivers-lib:entity/id/child/updatecuid-unstack

# CHILD OF:
# - gunivers-lib:entity/id/child/updatecuid-check

# CODE:
tag @s remove StackedCUID
execute as @e[tag=UpdateCUID,scores={Id=0..}] run scoreboard players add @s[tag=!CorrectCUID] Id 1
