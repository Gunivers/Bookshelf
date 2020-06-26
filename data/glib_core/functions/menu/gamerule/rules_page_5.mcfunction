# NAME: Menu G-Lib
# PATH: glib:menu

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
execute store result score menu.rules.specGenChunk glib.data run gamerule spectatorsGenerateChunks
execute if score menu.rules.specGenChunk glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Spectators Generate Chunks: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks false"},"hoverEvent":{"action":"show_text","value":"Prevent Spectators to Generate Chunks"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks false"},"hoverEvent":{"action":"show_text","value":"Prevent Spectators to Generate Chunks"}}]
execute if score menu.rules.specGenChunk glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Spectators Generate Chunks: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks true"},"hoverEvent":{"action":"show_text","value":"Allow Spectators to Generate Chunks"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks true"},"hoverEvent":{"action":"show_text","value":"Allow Spectators to Generate Chunks"}}]

# TileDrops
execute store result score menu.rules.tileDrops glib.data run gamerule doTileDrops
execute if score menu.rules.tileDrops glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Tile Drops: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops false"},"hoverEvent":{"action":"show_text","value":"Disable Tile Drops"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops false"},"hoverEvent":{"action":"show_text","value":"Disable Tile Drops"}}]
execute if score menu.rules.tileDrops glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Tile Drops: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops true"},"hoverEvent":{"action":"show_text","value":"Enable Tile Drops"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops true"},"hoverEvent":{"action":"show_text","value":"Enable Tile Drops"}}]

# Weather Cycle
execute store result score menu.rules.weatherCycle glib.data run gamerule doWeatherCycle
execute if score menu.rules.weatherCycle glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Weather Cycle: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle false"},"hoverEvent":{"action":"show_text","value":"Disable Weather Cycle"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle false"},"hoverEvent":{"action":"show_text","value":"Disable Weather Cycle"}}]
execute if score menu.rules.weatherCycle glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Weather Cycle: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle true"},"hoverEvent":{"action":"show_text","value":"Enable Weather Cycle"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle true"},"hoverEvent":{"action":"show_text","value":"Enable Weather Cycle"}}]


# WorldBorder
execute store result score menu.rules.worldBorder glib.data run worldborder get
tellraw @s ["",{"text":"      - World Border: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/worldborder set "},"hoverEvent":{"action":"show_text","value":"Modify World Border (Default: 60000000)"}},{"score":{"name":"menu.rules.worldBorder","objective":"glib.ata"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/worldborder set "},"hoverEvent":{"action":"show_text","value":"Modify World Border (Default: 60000000)"}}]

tellraw @s ["",{"text":" "}]

# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Menu.Rules.Page_5"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"5/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gray"}]
