scoreboard players remove @e[tag=glib.id.chain.hasToMove] glib.id 1

tag @e[scores={glib.id=1},tag=glib.id.chain.update] add glib.id.chain.correct
execute as @e[tag=glib.id.chain.correct] run tag @e remove glib.id.chain.hasToMove

execute as @e[tag=glib.id.chain.hasToMove,limit=1] run function glib_child:default/id/updatecuid-plug
