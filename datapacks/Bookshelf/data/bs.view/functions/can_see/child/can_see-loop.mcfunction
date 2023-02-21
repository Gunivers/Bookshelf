tp @s ^ ^ ^0.5
scoreboard players remove @s bs.in.0 1
particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @s if block ~ ~ ~ #bs.system:move/by_vector/ignore_hitbox run function bs.view:can_see-loop
