# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add -30000000 1600
execute unless entity B5-0-0-0-2 run summon minecraft:text_display -30000000 0 1600 {UUID:[I;181,0,0,2],Tags:["bs.entity","bs.persistent"],view_range:0f}

scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]

data modify storage bs:const log.messages."bs.sidebar" set value { \
  debug: '{"nbt": "log.messages.bs.debug", "storage": "bs:const", "interpret": true}', \
  info: '{"nbt": "log.messages.bs.info", "storage": "bs:const", "interpret": true}', \
  warn: '{"nbt": "log.messages.bs.warn", "storage": "bs:const", "interpret": true}', \
  error: '{"nbt": "log.messages.bs.error", "storage": "bs:const", "interpret": true}' \
}
