# NAME: Update Chain Unique Identifier - Check
# PATH: Entity/Id/Child/UpdateCUID-Check

# CHILD OF:
# - Entity/Id/UpdateCUID

# CODE:
#The entities with the same score as the CUID vitual player have now 0
scoreboard players operation @e[tag=UpdateCUID] ID -= CUID ID

#Catches one entity with the searched ID
scoreboard players tag @e remove CorrectCUID
scoreboard players tag @e[score_ID_min=0,score_ID=0,c=1,tag=UpdateCUID] add CorrectCUID

#Marks all the entities with more than the wanted score
scoreboard players tag @e remove HasToMove
scoreboard players tag @e[tag=UpdateCUID,score_ID_min=1] add HasToMove

#Lower the score of the entities who have more than the wanted score if there is no entity with that score
execute @e[tag=CorrectCUID] ~ ~ ~ scoreboard players tag @e remove HasToMove
execute @e[tag=HasToMove,c=1] ~ ~ ~ function Gunivers-Lib:Entity/Id/Child/UpdateCUID-Plug

#Unstack the group of entities who have the searched score (if exists)
execute @e[score_ID_min=0,score_ID=0,tag=UpdateCUID] ~ ~ ~ scoreboard players tag @s[tag=!CorrectCUID] add StackedCUID
execute @e[tag=StackedCUID] ~ ~ ~ function Gunivers-Lib:Entity/Id/Child/UpdateCUID-Unstack

#Detects if there are entities with more than the wanted score
scoreboard players tag @e remove AnotherLoop
scoreboard players tag @e[score_ID_min=1] add AnotherLoop

scoreboard players operation @e[tag=UpdateCUID] ID += CUID ID

#Executes the system another time if there are entities with more than the wanted score
scoreboard players add CUID ID 1
execute @e[tag=AnotherLoop,c=1] ~ ~ ~ function Gunivers-Lib:Entity/Id/Child/UpdateCUID-Check
