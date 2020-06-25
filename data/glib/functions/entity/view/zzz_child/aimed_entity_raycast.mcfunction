tp @s ^ ^ ^0.1
scoreboard players remove @s glib.var0 1
execute at @s if entity @s[scores={glib.var0=1..}] unless entity @e[distance=..0.1,tag=!NewRayCastEntity,tag=!Executor] run function glib:entity/view/zzz_child/aimed_entity_raycast
