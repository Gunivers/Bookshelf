tag @s remove bs.id.chain.stacked
execute as @e[tag=bs.id.chain.update,scores={bs.id=0..}] run scoreboard players add @s[tag=!bs.id.chain.correct] bs.id 1
