scoreboard players operation @e[tag=bs.id.chain.update] bs.id -= id.chain bs.data

#Catches one entity with the searched bs.id
tag @e remove bs.id.chain.correct
tag @e[scores={bs.id=0},limit=1,tag=bs.id.chain.update] add bs.id.chain.correct

#Marks all the entities with more than the wanted score
tag @e remove bs.id.chain.hasToMove
tag @e[tag=bs.id.chain.update,scores={bs.id=1..}] add bs.id.chain.hasToMove

#Lower the score of the entities who have more than the wanted score if there is no entity with that score
execute as @e[tag=bs.id.chain.correct] run tag @e remove bs.id.chain.hasToMove
execute as @e[tag=bs.id.chain.hasToMove,limit=1] run function bs.id:cuid/child/updatecuid-plug

#Unstack the group of entities who have the searched score (if exists)
execute as @e[scores={bs.id=0},tag=bs.id.chain.update] run tag @s[tag=!bs.id.chain.correct] add bs.id.chain.stacked
execute as @e[tag=bs.id.chain.stacked] run function bs.id:cuid/child/updatecuid-unstack

#Detects if there are entities with more than the wanted score
tag @e remove bs.id.chain.anotherLoop
tag @e[scores={bs.id=1..}] add bs.id.chain.anotherLoop

scoreboard players operation @e[tag=bs.id.chain.update] bs.id += id.chain bs.data

#Executes the system another time if there are entities with more than the wanted score
scoreboard players add id.chain bs.data 1
execute as @e[tag=bs.id.chain.anotherLoop,limit=1] run function bs.id:cuid/child/updatecuid-check
