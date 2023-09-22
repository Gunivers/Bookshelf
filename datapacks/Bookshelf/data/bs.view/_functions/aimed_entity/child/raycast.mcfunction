tp @s ^ ^ ^0.1
scoreboard players remove @s bs.in.0 1

### DEBUG
execute at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a[tag=bs.debug.view.aimed_entity]
### END DEBUG

execute at @s positioned ~ ~-0.5 ~ if entity @s[scores={bs.in.0=1..}] unless entity @e[distance=..1,tag=!bs.new,tag=!bs.view.Source] at @s run function bs.view:aimed_entity/child/raycast
