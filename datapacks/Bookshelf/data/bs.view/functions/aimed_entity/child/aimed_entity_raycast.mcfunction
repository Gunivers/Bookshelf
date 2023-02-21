tp @s ^ ^ ^0.1
scoreboard players remove @s bs.in.0 1
execute at @s if entity @s[scores={bs.in.0=1..}] unless entity @e[distance=..0.1,tag=!NewRayCastEntity,tag=!Executor] run function bs_child:default/view/aimed_entity_raycast
