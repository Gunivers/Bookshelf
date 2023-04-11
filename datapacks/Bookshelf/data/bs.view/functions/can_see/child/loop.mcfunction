tp @s ^ ^ ^0.1
scoreboard players remove @s bs.in.0 1

### DEBUG
execute at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a[tag=bs.debug.view.can_see_ata]
### END DEBUG

execute at @s if block ~ ~ ~ #bs.view:can_see_through unless entity @e[tag=bs.view.CanSee.Target,distance=..0.1] run function bs.view:can_see/child/loop
