# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add 0 0
execute unless entity B5-0-0-0-1 run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"],CustomName:'[{"text":"BS ","color":"dark_gray"},{"text":"Marker","color":"aqua"}]'}

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]

scoreboard players set #view.as_aimed_entity.block_collision bs.data 1
scoreboard players set #view.as_aimed_entity.entity_collision bs.data 1
scoreboard players set #view.at_aimed_block.block_collision bs.data 1
scoreboard players set #view.at_aimed_block.entity_collision bs.data 0
scoreboard players set #view.at_aimed_entity.block_collision bs.data 1
scoreboard players set #view.at_aimed_entity.entity_collision bs.data 1
scoreboard players set #view.can_see_ata.block_collision bs.data 1
scoreboard players set #view.can_see_ata.entity_collision bs.data 0

execute unless data storage bs:in view.can_see_ata run data modify storage bs:in view.can_see_ata set value { \
  ignored_blocks: "#bs.view:can_see_through", \
}

execute unless data storage bs:in view.in_view_ata run data modify storage bs:in view.in_view_ata set value { \
  angle: 120.0, \
}
