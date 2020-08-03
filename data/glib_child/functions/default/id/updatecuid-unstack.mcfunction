tag @s remove glib.id.chain.stacked
execute as @e[tag=glib.id.chain.update,scores={glib.id=0..}] run scoreboard players add @s[tag=!glib.id.chain.correct] glib.id 1
