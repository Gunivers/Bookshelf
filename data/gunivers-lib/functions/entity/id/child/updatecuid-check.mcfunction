# NAME: Update Chain Unique Identifier - Check
# PATH: gunivers-lib:entity/id/child/updatecuid-check

# CHILD OF:
# - gunivers-lib:entity/id/updatecuid

# CODE:
#The entities with the same score as the CUID vitual player have now 0
scoreboard players operation @e[tag=UpdateCUID] Id -= CUID Data

#Catches one entity with the searched Id
tag @e remove CorrectCUID
tag @e[scores={Id=0},limit=1,tag=UpdateCUID] add CorrectCUID

#Marks all the entities with more than the wanted score
tag @e remove HasToMove
tag @e[tag=UpdateCUID,scores={Id=1..}] add HasToMove

#Lower the score of the entities who have more than the wanted score if there is no entity with that score
execute as @e[tag=CorrectCUID] run tag @e remove HasToMove
execute as @e[tag=HasToMove,limit=1] run function gunivers-lib:entity/id/child/updatecuid-plug

#Unstack the group of entities who have the searched score (if exists)
execute as @e[scores={Id=0},tag=UpdateCUID] run tag @s[tag=!CorrectCUID] add StackedCUID
execute as @e[tag=StackedCUID] run function gunivers-lib:entity/id/child/updatecuid-unstack

#Detects if there are entities with more than the wanted score
tag @e remove AnotherLoop
tag @e[scores={Id=1..}] add AnotherLoop

scoreboard players operation @e[tag=UpdateCUID] Id += CUID Data

#Executes the system another time if there are entities with more than the wanted score
scoreboard players add CUID Data 1
execute as @e[tag=AnotherLoop,limit=1] run function gunivers-lib:entity/id/child/updatecuid-check
