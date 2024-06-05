# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add -30000000 1600
execute unless entity B5-0-0-0-2 run summon minecraft:text_display -30000000 0 1600 {UUID:[I;181,0,0,2],Tags:["bs.entity","bs.persistent"],view_range:0f}

scoreboard objectives add bs.const dummy [{"text":"BS ","color":"dark_gray"},{"text":"Constants","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]

scoreboard players set 3 bs.const 3

data modify storage bs:const dump set value { \
  key: "#3CE9F2", \
  type: "#FB7F4A", \
  string: "#6ED856", \
  number: "#FFAA32", \
  bracket_1: "#0099FF", \
  bracket_2: "#FFD700", \
  bracket_3: "#FF60FC", \
}
