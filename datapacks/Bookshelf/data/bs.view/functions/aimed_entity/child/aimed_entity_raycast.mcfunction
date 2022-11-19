tp @s ^ ^ ^0.1
scoreboard players remove @s bs.var0 1
execute at @s if entity @s[scores={bs.var0=1..}] unless entity @e[distance=..0.1,tag=!NewRayCastEntity,tag=!Executor] run function glib_child:default/view/aimed_entity_raycast
