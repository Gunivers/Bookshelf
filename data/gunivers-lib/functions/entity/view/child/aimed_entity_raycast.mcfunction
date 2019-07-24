# NAME: Aimed entity
# PATH: gunivers-lib:entity/view/child/aimed_entity_raycast

# CHILD OF: gunivers-lib:entity/view/aimed_entity

# CODE:
tp @s ^ ^ ^0.1
scoreboard players remove @s Var1 1
execute at @s if entity @s[scores={Var1=1..}] unless entity @e[distance=..0.1,tag=!NewRayCastEntity,tag=!Executor] run function gunivers-lib:entity/view/child/aimed_entity_raycast