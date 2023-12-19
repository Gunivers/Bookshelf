# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add 0 0
execute unless entity B5-0-0-0-1 run summon minecraft:marker 0.0 0.0 0.0 {UUID:[I;181,0,0,1],Tags:["bs.entity","bs.persistent"],CustomName:'[{"text":"BS ","color":"dark_gray"},{"text":"Marker","color":"aqua"}]'}

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]
scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]

scoreboard objectives add bs.vel.x dummy [{"text":"BS ","color":"dark_gray"},{"text":"Velocity X","color":"aqua"}]
scoreboard objectives add bs.vel.y dummy [{"text":"BS ","color":"dark_gray"},{"text":"Velocity Y","color":"aqua"}]
scoreboard objectives add bs.vel.z dummy [{"text":"BS ","color":"dark_gray"},{"text":"Velocity Z","color":"aqua"}]

execute unless data storage bs:in move run data modify storage bs:in move set value { \
  ignored_blocks: "#bs.hitbox:intangible", \
  ignored_entities: "#bs.hitbox:intangible", \
  on_collision: "bs.move:collision/resolution/slide", \
}
