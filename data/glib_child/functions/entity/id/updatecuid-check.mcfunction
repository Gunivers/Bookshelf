scoreboard players operation @e[tag=glib.id.chain.update] glib.id -= id.chain glib.data

#Catches one entity with the searched glib.id
tag @e remove glib.id.chain.correct
tag @e[scores={glib.id=0},limit=1,tag=glib.id.chain.update] add glib.id.chain.correct

#Marks all the entities with more than the wanted score
tag @e remove glib.id.chain.hasToMove
tag @e[tag=glib.id.chain.update,scores={glib.id=1..}] add glib.id.chain.hasToMove

#Lower the score of the entities who have more than the wanted score if there is no entity with that score
execute as @e[tag=glib.id.chain.correct] run tag @e remove glib.id.chain.hasToMove
execute as @e[tag=glib.id.chain.hasToMove,limit=1] run function glib_child:entity/id/updatecuid-plug

#Unstack the group of entities who have the searched score (if exists)
execute as @e[scores={glib.id=0},tag=glib.id.chain.update] run tag @s[tag=!glib.id.chain.correct] add glib.id.chain.stacked
execute as @e[tag=glib.id.chain.stacked] run function glib_child:entity/id/updatecuid-unstack

#Detects if there are entities with more than the wanted score
tag @e remove glib.id.chain.anotherLoop
tag @e[scores={glib.id=1..}] add glib.id.chain.anotherLoop

scoreboard players operation @e[tag=glib.id.chain.update] glib.id += id.chain glib.data

#Executes the system another time if there are entities with more than the wanted score
scoreboard players add id.chain glib.data 1
execute as @e[tag=glib.id.chain.anotherLoop,limit=1] run function glib_child:entity/id/updatecuid-check
