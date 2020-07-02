# Title
tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove glib.menu.Creator"},"hoverEvent":{"action":"show_text","value":"Exit crator tools"}},{"text":"   ","color":"gold"},{"text":"Creator Tools","underlined":true,"color":"gold"},{"text":"\n "}]

# Exampl systems
tellraw @s [{"text":"      >","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_system."},"hoverEvent":{"action":"show_text","value":"View examples systems"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_system."},"hoverEvent":{"action":"show_text","value":"View examples systems"}},{"text":"Example systems","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_system."},"hoverEvent":{"action":"show_text","value":"View examples systems"}}]

# Base platform
tellraw @s ["",{"text":"\n      > ","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_platform"},"hoverEvent":{"action":"show_text","value":"Set worldspawn on your position and create a platform to put all command-blocks."}},{"text":"Create base platform","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_platform"},"hoverEvent":{"action":"show_text","value":"Set worldspawn on your position and create a platform to put all command-blocks."}}]


# Cache
execute unless entity @e[tag=Glib_Cache_Source] run tellraw @s ["",{"text":"\n      > ","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_system.cache.place"},"hoverEvent":{"action":"show_text","value":"Define the position of cache allowing to store data in some object (Armor Stand, Sign, Command Block, Jukebox, Chest and Shulker Box). Mandatory for some systems."}},{"text":"Define cache position","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_system.cache.place"},"hoverEvent":{"action":"show_text","value":"Define the position of cache allowing to store data in some object (Armor Stand, Sign, Command Block, Jukebox, Chest and Shulker Box). Mandatory for some systems."}}]

execute if entity @e[tag=Glib_Cache_Source] run tellraw @s ["",{"text":"\n      > ","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_system.cache.remove"},"hoverEvent":{"action":"show_text","value":"Remove cache. Be carefull, removing cache can break systems"}},{"text":"Remove cache","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_system.cache.remove"},"hoverEvent":{"action":"show_text","value":"Remove cache. Be carefull, removing cache can break systems"}}]


# Generators
tellraw @s ["",{"text":"\n      > ","color":"red","clickEvent":{"action":"open_url","value":"http://minecraft.tools"},"hoverEvent":{"action":"show_text","value":"Go to minecraft.tools to see all generators (tellraw, signs, summon, banner and many other !)"}},{"text":"Generators","color":"gray","clickEvent":{"action":"open_url","value":"http://minecraft.tools"},"hoverEvent":{"action":"show_text","value":"Go to minecraft.tools to see all generators (tellraw, signs, summon, banner and many other !)"}}]


tellraw @s ["",{"text":"      ","color":"gray"}]


execute as @s[tag=Glib_Creator_system.] at @s run function glib_core:menu/creator/example_systems/main
execute as @s[tag=Glib_Creator_platform] at @s run function glib_core:menu/creator/base_platform/generate_base_confirm
execute as @s[tag=Glib_Creator_system.cache.place] at @s run function glib_core:menu/creator/define_cache/place
execute as @s[tag=Glib_Creator_system.cache.remove] at @s run function glib_core:menu/creator/define_cache/remove

#execute as @s[tag=Glib_Creator_system.cache] at @s run function glib:cache/generate_module_ghost
