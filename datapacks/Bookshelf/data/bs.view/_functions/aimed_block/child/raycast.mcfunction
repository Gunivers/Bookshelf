tp @s ^ ^ ^0.1
scoreboard players remove @s bs.in.0 1

### DEBUG
execute at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a[tag=bs.debug.view.aimed_block]
### END DEBUG

execute at @s if block ~ ~ ~ #bs.view:aimed_block_ignore if entity @s[scores={bs.in.0=1..}] run function bs.view:aimed_block/child/raycast