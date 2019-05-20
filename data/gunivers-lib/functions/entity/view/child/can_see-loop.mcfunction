# NAME: Can See
# PATH: gunivers-lib:entity/view/child/can_see-loop

#CHILD OF: gunivers-lib:entity/view/can_see

# CODE:
tp @s ^ ^ ^0.2
scoreboard players remove @s Var1 1
particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @s unless block ~ ~ ~ #no_collision run say 1
execute at @s if block ~ ~ ~ #no_collision run say 1
execute at @s if block ~ ~ ~ #no_collision run function gunivers-lib:entity/view/child/can_see-loop