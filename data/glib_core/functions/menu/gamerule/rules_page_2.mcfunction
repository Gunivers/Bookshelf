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


# Fire Tick
execute store result score menu.rules.fireTick glib.data run gamerule doFireTick
execute if score menu.rules.fireTick glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Fire Tick: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doFireTick false"},"hoverEvent":{"action":"show_text","value":"Disable Fire Tick"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doFireTick false"},"hoverEvent":{"action":"show_text","value":"Disable Fire Tick"}}]
execute if score menu.rules.fireTick glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Fire Tick: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doFireTick true"},"hoverEvent":{"action":"show_text","value":"Enable Fire Tick"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doFireTick true"},"hoverEvent":{"action":"show_text","value":"Enable Fire Tick"}}]

# Keep Inventory
execute store result score menu.rules.keepInventory glib.data run gamerule keepInventory
execute if score menu.rules.keepInventory glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Keep Inventory: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule keepInventory false"},"hoverEvent":{"action":"show_text","value":"Disable Keep Inventory"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule keepInventory false"},"hoverEvent":{"action":"show_text","value":"Disable Keep Inventory"}}]
execute if score menu.rules.keepInventory glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Keep Inventory: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule keepInventory true"},"hoverEvent":{"action":"show_text","value":"Enable Keep Inventory"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule keepInventory true"},"hoverEvent":{"action":"show_text","value":"Enable Keep Inventory"}}]

# Limited Crafting
execute store result score menu.rules.limitedCrafting glib.data run gamerule doLimitedCrafting
execute if score menu.rules.limitedCrafting glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Limited Crafting: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting false"},"hoverEvent":{"action":"show_text","value":"Disable Limited Crafting"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting false"},"hoverEvent":{"action":"show_text","value":"Disable Limited Crafting"}}]
execute if score menu.rules.limitedCrafting glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Limited Crafting: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting true"},"hoverEvent":{"action":"show_text","value":"Enable Limited Crafting"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting true"},"hoverEvent":{"action":"show_text","value":"Enable Limited Crafting"}}]

# Log Admin Commands
execute store result score menu.rules.logs glib.data run gamerule logAdminCommands
execute if score menu.rules.logs glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Log Admin Commands: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands false"},"hoverEvent":{"action":"show_text","value":"Disable Log Admin Commands"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands false"},"hoverEvent":{"action":"show_text","value":"Disable Log Admin Commands"}}]
execute if score menu.rules.logs glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Log Admin Commands: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands true"},"hoverEvent":{"action":"show_text","value":"Enable Log Admin Commands"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule logAdminCommands true"},"hoverEvent":{"action":"show_text","value":"Enable Log Admin Commands"}}]

# NaturalRegeneration
execute store result score menu.rules.naturalRegen glib.data run gamerule naturalRegeneration
execute if score menu.rules.naturalRegen glib.data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Natural Regeneration: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule naturalRegeneration false"},"hoverEvent":{"action":"show_text","value":"Disable Natural Regeneration"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule naturalRegeneration false"},"hoverEvent":{"action":"show_text","value":"Disable Natural Regeneration"}}]
execute if score menu.rules.naturalRegen glib.data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Natural Regeneration: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule naturalRegeneration true"},"hoverEvent":{"action":"show_text","value":"Enable Natural Regeneration"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule naturalRegeneration true"},"hoverEvent":{"action":"show_text","value":"Enable Natural Regeneration"}}]



# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Menu.Rules.Page_2"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"2/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add Glib_Menu.Rules.Page_3"},"hoverEvent":{"action":"show_text","value":"Next page"}}]
