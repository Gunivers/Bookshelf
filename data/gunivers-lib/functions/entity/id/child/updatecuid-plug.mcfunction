# NAME: Update Chain Unique Identifier - Plug
# PATH: gunivers-lib:entity/id/child/updatecuid-plug

# CHILD OF:
# - gunivers-lib:entity/id/child/updatecuid-check

# CODE:
scoreboard players remove @e[tag=HasToMove] Id 1

tag @e[scores={Id=1},tag=UpdateCUID] add CorrectCUID
execute as @e[tag=CorrectCUID] run tag @e remove HasToMove

execute as @e[tag=HasToMove,limit=1] run function gunivers-lib:entity/id/child/updatecuid-plug
