# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add 0 0
execute unless entity B5-0-0-0-1 run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"],CustomName:'[{"text":"BS ","color":"dark_gray"},{"text":"Marker","color":"aqua"}]'}

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard players set -1000 bs.const -1000
scoreboard players set -20 bs.const -20
scoreboard players set -1 bs.const -1
scoreboard players set 2 bs.const 2
scoreboard players set 11 bs.const 11
scoreboard players set 15 bs.const 15
scoreboard players set 255 bs.const 255
scoreboard players set 500 bs.const 500
scoreboard players set 1000 bs.const 1000
scoreboard players set 65536 bs.const 65536
scoreboard players set 3129871 bs.const 3129871
scoreboard players set 16777216 bs.const 16777216
scoreboard players set 42317861 bs.const 42317861
scoreboard players set 116129781 bs.const 116129781
scoreboard players set 268435456 bs.const 268435456

data modify storage bs:data view.in_view_ata.ranges set value []
data modify storage bs:data view.raycast.offsets set value []

execute unless data storage bs:in view.can_see_ata run data modify storage bs:in view.can_see_ata set value { \
  run: "say I can see there!", \
}

execute unless data storage bs:in view.in_view_ata run data modify storage bs:in view.in_view_ata set value { \
  run: "say I've got you in my sights!", \
  angle: 120.0, \
}

execute unless data storage bs:in view.looking_at run data modify storage bs:in view.looking_at set value { \
  run: "effect give @s glowing 1 0 true", \
}

execute unless data storage bs:in view.raycast run data modify storage bs:in view.raycast set value { \
  run: "execute positioned ^ ^ ^-.05 run particle minecraft:small_flame ~ ~ ~ 0 0 0 0 1 force", \
  max_distance: 16.0, \
  ignored_blocks: "#bs.view:air", \
  ignored_entities: "#bs.view:intangible", \
  target_entities: true, \
}
