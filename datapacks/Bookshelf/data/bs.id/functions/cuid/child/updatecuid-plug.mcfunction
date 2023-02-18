scoreboard players remove @e[tag=bs.id.chain.hasToMove] bs.id 1

tag @e[scores={bs.id=1},tag=bs.id.chain.update] add bs.id.chain.correct
execute as @e[tag=bs.id.chain.correct] run tag @e remove bs.id.chain.hasToMove

execute as @e[tag=bs.id.chain.hasToMove,limit=1] run function bs.id:cuid/child/updatecuid-plug
