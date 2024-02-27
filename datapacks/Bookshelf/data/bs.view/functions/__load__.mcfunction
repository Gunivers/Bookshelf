# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add -30000000 1600
execute unless entity B5-0-0-0-1 run summon minecraft:marker -30000000 0 1600 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"],CustomName:'[{"text":"BS ","color":"dark_gray"},{"text":"Marker","color":"aqua"}]'}
execute unless entity B5-0-0-0-4 run summon minecraft:snowball -30000000 0 1600 {UUID:[I;181,0,0,4],Tags:["bs.entity","bs.persistent"],CustomName:'[{"text":"BS ","color":"dark_gray"},{"text":"Entity Pointer","color":"aqua"}]',NoGravity:1b,Invulnerable:1b}

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]

execute unless data storage bs:in view.can_see_ata run data modify storage bs:in view.can_see_ata set value { \
  ignored_blocks: "#bs.view:can_see_through", \
}

execute unless data storage bs:in view.in_view_ata run data modify storage bs:in view.in_view_ata set value { \
  angle: 120.0, \
}
