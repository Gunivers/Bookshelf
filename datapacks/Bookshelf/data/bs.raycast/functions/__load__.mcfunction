# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add 0 0
execute unless entity B5-0-0-0-1 run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"]}

scoreboard objectives add bs.in dummy [{"text":"BS ","color":"dark_gray"},{"text":"Input","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

execute store result score #result bs.data run worldborder get
execute if score #result bs.data matches 2147484.. run worldborder set 2147483 0

scoreboard players set -1000 bs.const -1000
scoreboard players set 2 bs.const 2
scoreboard players set 500 bs.const 500
scoreboard players set 1000 bs.const 1000

execute unless data storage bs:in raycast run data modify storage bs:in raycast set value { \
  max_distance: 16.0, \
  block_collision: true, \
  entity_collision: false, \
  ignored_blocks: "#bs.hitbox:intangible", \
  solid_entities: "bs.raycast.is_solid", \
}
