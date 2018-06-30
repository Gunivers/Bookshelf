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


# Max Command Chain Length
execute store result score Glib_Init_Rules_MaxCommandChain Data run gamerule maxCommandChainLength
tellraw @s ["",{"text":"      - Max Command Chain Length: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule maxCommandChainLength "},"hoverEvent":{"action":"show_text","value":"Modify Max Command Chain Length (Default: 65536)"}},{"score":{"name":"Glib_Init_Rules_MaxCommandChain","objective":"Data"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/gamerule maxCommandChainLength "},"hoverEvent":{"action":"show_text","value":"Modify Max Command Chain Length (Default: 65536)"}}]

# Max Entity Cramming
execute store result score Glib_Init_Rules_MaxEntityCramming Data run gamerule maxEntityCramming
tellraw @s ["",{"text":"      - Max Entity Cramming: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule maxEntityCramming "},"hoverEvent":{"action":"show_text","value":"Modify Max Entity Cramming (Default: 24)"}},{"score":{"name":"Glib_Init_Rules_MaxEntityCramming","objective":"Data"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/gamerule maxEntityCramming "},"hoverEvent":{"action":"show_text","value":"Modify Max Entity Cramming (Default: 24)"}}]

# MobGriefing
execute store result score Glib_Init_Rules_MobGriefing Data run gamerule mobGriefing
execute if score Glib_Init_Rules_MobGriefing Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Griefing: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Griefing"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Griefing"}}]
execute if score Glib_Init_Rules_MobGriefing Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Griefing: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Griefing"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule mobGriefing true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Griefing"}}]

# MobLoot
execute store result score Glib_Init_Rules_MobLoot Data run gamerule doMobLoot
execute if score Glib_Init_Rules_MobLoot Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Loot: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Loot"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Loot"}}]
execute if score Glib_Init_Rules_MobLoot Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Loot: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Loot"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Loot"}}]

# MobSpawning
execute store result score Glib_Init_Rules_MobSpawning Data run gamerule doMobSpawning
execute if score Glib_Init_Rules_MobSpawning Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Spawning: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Spawning"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Spawning"}}]
execute if score Glib_Init_Rules_MobSpawning Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Spawning: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Spawning"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Spawning"}}]



# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Rules_Page_3"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"3/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add Glib_Init_Rules_Page_4"},"hoverEvent":{"action":"show_text","value":"Next page"}}]