tp @s ^ ^ ^0.1
scoreboard players remove @s glib.var0 1
execute at @s if block ~ ~ ~ #glib_child:global/air if entity @s[scores={glib.var0=1..}] run function glib:entity/view/aimed_block_raycast
