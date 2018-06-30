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


# doWeatherCycle
execute store result score Glib_Init_Rules_WeatherCycle Data run gamerule doWeatherCycle
execute if score Glib_Init_Rules_WeatherCycle Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Weather Cycle: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle false"},"hoverEvent":{"action":"show_text","value":"Disable Weather Cycle"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle false"},"hoverEvent":{"action":"show_text","value":"Disable Weather Cycle"}}]
execute if score Glib_Init_Rules_WeatherCycle Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Weather Cycle: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle true"},"hoverEvent":{"action":"show_text","value":"Enable Weather Cycle"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doWeatherCycle true"},"hoverEvent":{"action":"show_text","value":"Enable Weather Cycle"}}]

# keepInventory
execute store result score Glib_Init_Rules_KeepInventory Data run gamerule keepInventory
execute if score Glib_Init_Rules_KeepInventory Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Keep Inventory: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule keepInventory false"},"hoverEvent":{"action":"show_text","value":"Disable Keep Inventory"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule keepInventory false"},"hoverEvent":{"action":"show_text","value":"Disable Keep Inventory"}}]
execute if score Glib_Init_Rules_KeepInventory Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Keep Inventory: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule keepInventory true"},"hoverEvent":{"action":"show_text","value":"Enable Keep Inventory"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule keepInventory true"},"hoverEvent":{"action":"show_text","value":"Enable Keep Inventory"}}]

# logAdminCommands
execute store result score Glib_Init_Rules_Logs Data run gamerule logAdminCommands
execute if score Glib_Init_Rules_Logs Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Log Admin Commands: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands false"},"hoverEvent":{"action":"show_text","value":"Disable Log Admin Commands"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands false"},"hoverEvent":{"action":"show_text","value":"Disable Log Admin Commands"}}]
execute if score Glib_Init_Rules_Logs Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Log Admin Commands: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands true"},"hoverEvent":{"action":"show_text","value":"Enable Log Admin Commands"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands true"},"hoverEvent":{"action":"show_text","value":"Enable Log Admin Commands"}}]

# maxCommandChainLength
execute store result score Glib_Init_Rules_MaxCommandChain Data run gamerule maxCommandChainLength
tellraw @s ["",{"text":"      - Max Command Chain Length: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule maxCommandChainLength "},"hoverEvent":{"action":"show_text","value":"Modify Max Command Chain Length (Default: 65536)"}},{"score":{"name":"Glib_Init_Rules_MaxCommandChain","objective":"Data"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/gamerule maxCommandChainLength "},"hoverEvent":{"action":"show_text","value":"Modify Max Command Chain Length (Default: 65536)"}}]

# maxEntityCramming
execute store result score Glib_Init_Rules_MaxEntityCramming Data run gamerule maxEntityCramming
tellraw @s ["",{"text":"      - Max Entity Cramming: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule maxEntityCramming "},"hoverEvent":{"action":"show_text","value":"Modify Max Entity Cramming (Default: 24)"}},{"score":{"name":"Glib_Init_Rules_MaxEntityCramming","objective":"Data"},"color":"blue","clickEvent":{"action":"suggest_command","value":"/gamerule maxEntityCramming "},"hoverEvent":{"action":"show_text","value":"Modify Max Entity Cramming (Default: 24)"}}]


# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Rules_Page_3"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"3/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add Glib_Init_Rules_Page_4"},"hoverEvent":{"action":"show_text","value":"Next page"}}]