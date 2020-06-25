tp @s ^ ^ ^0.1
scoreboard players remove @s glib.var 1
execute at @s if block ~ ~ ~ #glib:global/air if entity @s[scores={glib.var=1..}] run function glib:entity/view/child/aimed_block_raycast
