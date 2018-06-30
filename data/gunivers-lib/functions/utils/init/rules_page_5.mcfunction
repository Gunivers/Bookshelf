# NAME: Init G-Lib
# PATH: gunivers-lib:init

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:

# INPUT:

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:


# Spectators Generate Chunks
execute store result score Glib_Init_Rules_SpecGenChunk Data run gamerule spectatorsGenerateChunks
execute if score Glib_Init_Rules_SpecGenChunk Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Spectators Generate Chunks: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks false"},"hoverEvent":{"action":"show_text","value":"Prevent Spectators to Generate Chunks"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks false"},"hoverEvent":{"action":"show_text","value":"Prevent Spectators to Generate Chunks"}}]
execute if score Glib_Init_Rules_SpecGenChunk Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Spectators Generate Chunks: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks true"},"hoverEvent":{"action":"show_text","value":"Allow Spectators to Generate Chunks"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks true"},"hoverEvent":{"action":"show_text","value":"Allow Spectators to Generate Chunks"}}]

# TileDrops
execute store result score Glib_Init_Rules_TileDrops Data run gamerule doTileDrops
execute if score Glib_Init_Rules_TileDrops Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Tile Drops: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops false"},"hoverEvent":{"action":"show_text","value":"Disable Tile Drops"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops false"},"hoverEvent":{"action":"show_text","value":"Disable Tile Drops"}}]
execute if score Glib_Init_Rules_TileDrops Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Tile Drops: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops true"},"hoverEvent":{"action":"show_text","value":"Enable Tile Drops"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops true"},"hoverEvent":{"action":"show_text","value":"Enable Tile Drops"}}]

# Weather Cycle
execute store result score Glib_Init_Rules_WeatherCycle Data run gamerule doWeatherCycle
execute if score Glib_Init_Rules_WeatherCycle Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Weather Cycle: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle false"},"hoverEvent":{"action":"show_text","value":"Disable Weather Cycle"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle false"},"hoverEvent":{"action":"show_text","value":"Disable Weather Cycle"}}]
execute if score Glib_Init_Rules_WeatherCycle Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Weather Cycle: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle true"},"hoverEvent":{"action":"show_text","value":"Enable Weather Cycle"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle true"},"hoverEvent":{"action":"show_text","value":"Enable Weather Cycle"}}]


# WorldBorder
execute store result score Glib_Init_Rules_WorldBorder Data run worldborder get
tellraw @s ["",{"text":"      - World Border: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/worldborder set "},"hoverEvent":{"action":"show_text","value":"Modify World Border (Default: 60000000)"}},{"score":{"name":"Glib_Init_Rules_WorldBorder","objective":"Data"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/worldborder set "},"hoverEvent":{"action":"show_text","value":"Modify World Border (Default: 60000000)"}}]

tellraw @s ["",{"text":" "}]

# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Rules_Page_5"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"5/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gray"}]