tp @s ^ ^ ^0.1
scoreboard players remove @s bs.in.0 1
execute at @s if block ~ ~ ~ #bs.global:air if entity @s[scores={bs.in.0=1..}] run function bs.view:aimed_block_raycast
