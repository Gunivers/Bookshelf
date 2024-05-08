# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# CODE ------------------------------------------------------------------------

forceload add -30000000 1600
setblock -30000000 0 1605 minecraft:repeating_command_block[facing=up]{auto:1b,Command:"help me",TrackOutput:1}

scoreboard objectives add bs.in dummy [{"text":"BS ","color":"dark_gray"},{"text":"Input","color":"aqua"}]
scoreboard objectives add bs.data dummy [{"text":"BS ","color":"dark_gray"},{"text":"Data","color":"aqua"}]

execute unless score #log.gametime bs.data matches -2147483648..2147483647 store result score #log.gametime bs.data run time query gametime

data modify storage bs:const log.full_time set value '[{"nbt": "log.full_real_time", "storage": "bs:in"}, {"text": ":"}, {"nbt": "log.ticks", "storage": "bs:in"}]'

execute unless data storage bs:const log.messages[{default: true}] run data modify storage bs:const log.messages set value [ \
  { \
    default: true, \
    format: { \
      debug: '["", {"text": "[DEBUG] ", "color": "#CCCCCC", "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Timestamp: ", "color": "gold"}, {"nbt": "log.full_time", "storage": "bs:const", "interpret": true}, "\\n", {"text": "Function: ", "color": "gold"}, {"nbt": "log.path", "storage": "bs:in"}]}, "extra": [{"nbt": "log.tag", "storage": "bs:in", "color":"#6AA84F"}]}, {"text": " > ", "color": "gray"}, {"nbt": "log.message", "storage": "bs:in", "interpret": true}]', \
      info: '["", {"text": "[INFO] ", "color": "#39B54A", "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Timestamp: ", "color": "gold"}, {"nbt": "log.full_time", "storage": "bs:const", "interpret": true}, "\\n", {"text": "Function: ", "color": "gold"}, {"nbt": "log.path", "storage": "bs:in"}]}, "extra": [{"nbt": "log.tag", "storage": "bs:in", "color":"#6AA84F"}]}, {"text": " > ", "color": "gray"}, {"nbt": "log.message", "storage": "bs:in", "interpret": true}]', \
      warn: '["", {"text": "[WARN] ", "color": "#FFC706", "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Timestamp: ", "color": "gold"}, {"nbt": "log.full_time", "storage": "bs:const", "interpret": true}, "\\n", {"text": "Function: ", "color": "gold"}, {"nbt": "log.path", "storage": "bs:in"}]}, "extra": [{"nbt": "log.tag", "storage": "bs:in", "color":"#6AA84F"}]}, {"text": " > ", "color": "gray"}, {"nbt": "log.message", "storage": "bs:in", "interpret": true}]', \
      error: '["", {"text": "[ERROR] ", "color": "#DE382B", "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Timestamp: ", "color": "gold"}, {"nbt": "log.full_time", "storage": "bs:const", "interpret": true}, "\\n", {"text": "Function: ", "color": "gold"}, {"nbt": "log.path", "storage": "bs:in"}]}, "extra": [{"nbt": "log.tag", "storage": "bs:in", "color":"#6AA84F"}]}, {"text": " > ", "color": "gray"}, {"nbt": "log.message", "storage": "bs:in", "interpret": true}]', \
    } \
  } \
]


execute unless data storage bs:const log.messages[{namespaces: ["bs"]}].format run data modify storage bs:const log.messages[{namespaces: ["bs"]}].format set value { \
    debug: '["", {"text": "BS", "color": "aqua"}, {"text": " [DEBUG] ", "color": "#CCCCCC", "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Timestamp: ", "color": "gold"}, {"nbt": "log.full_time", "storage": "bs:const", "interpret": true}, "\\n", {"text": "Function: ", "color": "gold"}, {"nbt": "log.path", "storage": "bs:in"}]}, "extra": [{"nbt": "log.tag", "storage": "bs:in", "color":"dark_aqua"}]}, {"text": " > ", "color": "gray"}, {"nbt": "log.message", "storage": "bs:in", "interpret": true}]', \
    info: '["", {"text": "BS", "color": "aqua"}, {"text": " [INFO] ", "color": "#39B54A", "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Timestamp: ", "color": "gold"}, {"nbt": "log.full_time", "storage": "bs:const", "interpret": true}, "\\n", {"text": "Function: ", "color": "gold"}, {"nbt": "log.path", "storage": "bs:in"}]}, "extra": [{"nbt": "log.tag", "storage": "bs:in", "color":"dark_aqua"}]}, {"text": " > ", "color": "gray"}, {"nbt": "log.message", "storage": "bs:in", "interpret": true}]', \
    warn: '["", {"text": "BS", "color": "aqua"}, {"text": " [WARN] ", "color": "#FFC706", "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Timestamp: ", "color": "gold"}, {"nbt": "log.full_time", "storage": "bs:const", "interpret": true}, "\\n", {"text": "Function: ", "color": "gold"}, {"nbt": "log.path", "storage": "bs:in"}]}, "extra": [{"nbt": "log.tag", "storage": "bs:in", "color":"dark_aqua"}]}, {"text": " > ", "color": "gray"}, {"nbt": "log.message", "storage": "bs:in", "interpret": true}]', \
    error: '["", {"text": "BS", "color": "aqua"}, {"text": " [ERROR] ", "color": "#DE382B", "hoverEvent": {"action": "show_text", "contents": ["", {"text": "Timestamp: ", "color": "gold"}, {"nbt": "log.full_time", "storage": "bs:const", "interpret": true}, "\\n", {"text": "Function: ", "color": "gold"}, {"nbt": "log.path", "storage": "bs:in"}]}, "extra": [{"nbt": "log.tag", "storage": "bs:in", "color":"dark_aqua"}]}, {"text": " > ", "color": "gray"}, {"nbt": "log.message", "storage": "bs:in", "interpret": true}]', \
}
