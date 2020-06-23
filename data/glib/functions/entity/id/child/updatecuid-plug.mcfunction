scoreboard players remove @e[tag=HasToMove] glib.id 1

tag @e[scores={glib.id=1},tag=glib.id.chain.update] add glib.id.chain.correct
execute as @e[tag=glib.id.chain.correct] run tag @e remove HasToMove

execute as @e[tag=HasToMove,limit=1] run function glib:entity/id/child/updatecuid-plug
