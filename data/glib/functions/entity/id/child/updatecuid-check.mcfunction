scoreboard players operation @e[tag=glib.id.chain.update] glib.id -= id.chain glib.data

#Catches one entity with the searched glib.id
tag @e remove glib.id.chain.correct
tag @e[scores={glib.id=0},limit=1,tag=glib.id.chain.update] add glib.id.chain.correct

#Marks all the entities with more than the wanted score
tag @e remove HasToMove
tag @e[tag=glib.id.chain.update,scores={glib.id=1..}] add HasToMove

#Lower the score of the entities who have more than the wanted score if there is no entity with that score
execute as @e[tag=glib.id.chain.correct] run tag @e remove HasToMove
execute as @e[tag=HasToMove,limit=1] run function glib:entity/id/child/updatecuid-plug

#Unstack the group of entities who have the searched score (if exists)
execute as @e[scores={glib.id=0},tag=glib.id.chain.update] run tag @s[tag=!glib.id.chain.correct] add StackedCUID
execute as @e[tag=StackedCUID] run function glib:entity/id/child/updatecuid-unstack

#Detects if there are entities with more than the wanted score
tag @e remove AnotherLoop
tag @e[scores={glib.id=1..}] add AnotherLoop

scoreboard players operation @e[tag=glib.id.chain.update] glib.id += id.chain glib.data

#Executes the system another time if there are entities with more than the wanted score
scoreboard players add id.chain glib.data 1
execute as @e[tag=AnotherLoop,limit=1] run function glib:entity/id/child/updatecuid-check
