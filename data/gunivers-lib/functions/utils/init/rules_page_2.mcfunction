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


# Fire Tick
execute store result score Glib_Init_Rules_FireTick Data run gamerule doFireTick
execute if score Glib_Init_Rules_FireTick Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Fire Tick: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doFireTick false"},"hoverEvent":{"action":"show_text","value":"Disable Fire Tick"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doFireTick false"},"hoverEvent":{"action":"show_text","value":"Disable Fire Tick"}}]
execute if score Glib_Init_Rules_FireTick Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Fire Tick: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doFireTick true"},"hoverEvent":{"action":"show_text","value":"Enable Fire Tick"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doFireTick true"},"hoverEvent":{"action":"show_text","value":"Enable Fire Tick"}}]

# Keep Inventory
execute store result score Glib_Init_Rules_KeepInventory Data run gamerule keepInventory
execute if score Glib_Init_Rules_KeepInventory Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Keep Inventory: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule keepInventory false"},"hoverEvent":{"action":"show_text","value":"Disable Keep Inventory"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule keepInventory false"},"hoverEvent":{"action":"show_text","value":"Disable Keep Inventory"}}]
execute if score Glib_Init_Rules_KeepInventory Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Keep Inventory: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule keepInventory true"},"hoverEvent":{"action":"show_text","value":"Enable Keep Inventory"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule keepInventory true"},"hoverEvent":{"action":"show_text","value":"Enable Keep Inventory"}}]

# Limited Crafting 
execute store result score Glib_Init_Rules_LimitedCrafting Data run gamerule doLimitedCrafting 
execute if score Glib_Init_Rules_LimitedCrafting Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Limited Crafting: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting false"},"hoverEvent":{"action":"show_text","value":"Disable Limited Crafting"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting false"},"hoverEvent":{"action":"show_text","value":"Disable Limited Crafting"}}]
execute if score Glib_Init_Rules_LimitedCrafting Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Limited Crafting: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting true"},"hoverEvent":{"action":"show_text","value":"Enable Limited Crafting"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting true"},"hoverEvent":{"action":"show_text","value":"Enable Limited Crafting"}}]

# Log Admin Commands
execute store result score Glib_Init_Rules_Logs Data run gamerule logAdminCommands
execute if score Glib_Init_Rules_Logs Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Log Admin Commands: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands false"},"hoverEvent":{"action":"show_text","value":"Disable Log Admin Commands"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands false"},"hoverEvent":{"action":"show_text","value":"Disable Log Admin Commands"}}]
execute if score Glib_Init_Rules_Logs Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Log Admin Commands: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands true"},"hoverEvent":{"action":"show_text","value":"Enable Log Admin Commands"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands true"},"hoverEvent":{"action":"show_text","value":"Enable Log Admin Commands"}}]

# NaturalRegeneration
execute store result score Glib_Init_Rules_RaturalRegen Data run gamerule naturalRegeneration
execute if score Glib_Init_Rules_RaturalRegen Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Natural Regeneration: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule naturalRegeneration false"},"hoverEvent":{"action":"show_text","value":"Disable Natural Regeneration"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule naturalRegeneration false"},"hoverEvent":{"action":"show_text","value":"Disable Natural Regeneration"}}]
execute if score Glib_Init_Rules_RaturalRegen Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Natural Regeneration: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule naturalRegeneration true"},"hoverEvent":{"action":"show_text","value":"Enable Natural Regeneration"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule naturalRegeneration true"},"hoverEvent":{"action":"show_text","value":"Enable Natural Regeneration"}}]



# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Rules_Page_2"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"2/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add Glib_Init_Rules_Page_3"},"hoverEvent":{"action":"show_text","value":"Next page"}}]