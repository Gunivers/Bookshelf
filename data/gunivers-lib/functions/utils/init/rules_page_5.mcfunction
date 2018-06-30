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


# mobGriefing
execute store result score Glib_Init_Rules_MobGriefing Data run gamerule mobGriefing
execute if score Glib_Init_Rules_MobGriefing Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Griefing: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Griefing"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Griefing"}}]
execute if score Glib_Init_Rules_MobGriefing Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Griefing: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Griefing"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Griefing"}}]

# spawnRadius
execute store result score Glib_Init_Rules_SpawnRadius Data run gamerule spawnRadius
tellraw @s ["",{"text":"      - Spawn Radius: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule spawnRadius "},"hoverEvent":{"action":"show_text","value":"Modify Spawn Radius (Default: 10)"}},{"score":{"name":"Glib_Init_Rules_SpawnRadius","objective":"Data"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/gamerule spawnRadius "},"hoverEvent":{"action":"show_text","value":"Modify Spawn Radius (Default: 10)"}}]

# spectatorsGenerateChunks
execute store result score Glib_Init_Rules_SpecGenChunk Data run gamerule spectatorsGenerateChunks
execute if score Glib_Init_Rules_SpecGenChunk Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Spectators Generate Chunks: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks false"},"hoverEvent":{"action":"show_text","value":"Prevent Spectators to Generate Chunks"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks false"},"hoverEvent":{"action":"show_text","value":"Prevent Spectators to Generate Chunks"}}]
execute if score Glib_Init_Rules_SpecGenChunk Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Spectators Generate Chunks: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks true"},"hoverEvent":{"action":"show_text","value":"Allow Spectators to Generate Chunks"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule spectatorsGenerateChunks true"},"hoverEvent":{"action":"show_text","value":"Allow Spectators to Generate Chunks"}}]


tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]

# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Rules_Page_5"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"5/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gray"}]