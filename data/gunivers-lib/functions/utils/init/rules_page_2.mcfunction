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

# Limited Crafting 
execute store result score Glib_Init_Rules_LimitedCrafting Data run gamerule doLimitedCrafting 
execute if score Glib_Init_Rules_LimitedCrafting Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Limited Crafting: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting false"},"hoverEvent":{"action":"show_text","value":"Disable Limited Crafting"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting false"},"hoverEvent":{"action":"show_text","value":"Disable Limited Crafting"}}]
execute if score Glib_Init_Rules_LimitedCrafting Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Limited Crafting: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting true"},"hoverEvent":{"action":"show_text","value":"Enable Limited Crafting"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doLimitedCrafting true"},"hoverEvent":{"action":"show_text","value":"Enable Limited Crafting"}}]


# doMobLoot
execute store result score Glib_Init_Rules_MobLoot Data run gamerule doMobLoot
execute if score Glib_Init_Rules_MobLoot Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Loot: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Loot"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Loot"}}]
execute if score Glib_Init_Rules_MobLoot Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Loot: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Loot"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doMobLoot true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Loot"}}]

# doMobSpawning
execute store result score Glib_Init_Rules_MobSpawning Data run gamerule doMobSpawning
execute if score Glib_Init_Rules_MobSpawning Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Spawning: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Spawning"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning false"},"hoverEvent":{"action":"show_text","value":"Disable Mob Spawning"}}]
execute if score Glib_Init_Rules_MobSpawning Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Mob Spawning: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Spawning"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doMobSpawning true"},"hoverEvent":{"action":"show_text","value":"Enable Mob Spawning"}}]

# doTileDrops
execute store result score Glib_Init_Rules_TileDrops Data run gamerule doTileDrops
execute if score Glib_Init_Rules_TileDrops Data matches 1 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Tile Drops: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops false"},"hoverEvent":{"action":"show_text","value":"Disable Tile Drops"}},{"text":"✔","color":"green","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops false"},"hoverEvent":{"action":"show_text","value":"Disable Tile Drops"}}]
execute if score Glib_Init_Rules_TileDrops Data matches 0 run tellraw @s ["",{"text":"      ","color":"gray"},{"text":"- Tile Drops: ","color":"gray","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops true"},"hoverEvent":{"action":"show_text","value":"Enable Tile Drops"}},{"text":"x","color":"red","clickEvent":{"action":"run_command","value":"/gamerule doTileDrops true"},"hoverEvent":{"action":"show_text","value":"Enable Tile Drops"}}]



# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Rules_Page_2"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"2/5","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add Glib_Init_Rules_Page_3"},"hoverEvent":{"action":"show_text","value":"Next page"}}]