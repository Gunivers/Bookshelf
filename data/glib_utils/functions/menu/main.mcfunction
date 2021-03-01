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
execute if entity @s[tag=!glib.menu_Imports,tag=!Glib_Creator_system.,tag=!glib.menu.Informations] run tellraw @s ["",{"text":" \n \n \n \n \n \n \n \n \n ","color":"gray"}]

tellraw @s ["",{"text":"\n"},{"text":"x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu_Exit"},"hoverEvent":{"action":"show_text","value":"Exit menu"}},{"text":"   ","color":"gold"},{"text":"G U N I V E R S - L I B","underlined":true,"color":"gold"},{"text":"\n "}]

tellraw @s [{"text":"   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.Creator"},"hoverEvent":{"action":"show_text","value":"Creator tools"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.Creator"},"hoverEvent":{"action":"show_text","value":"Creator tools"}},{"text":"Creator","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.Creator"},"hoverEvent":{"action":"show_text","value":"Creator tools"}}]
tellraw @s [{"text":"\n   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.Rules"},"hoverEvent":{"action":"show_text","value":"Manage map settings"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.Rules"},"hoverEvent":{"action":"show_text","value":"Manage map settings"}},{"text":"Game Rules","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.Rules"},"hoverEvent":{"action":"show_text","value":"Manage map settings"}}]
tellraw @s [{"text":"\n   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}},{"text":"Informations","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add glib.menu.Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}}]

tellraw @s[tag=glib.debug.stick,tag=glib.debug.global.display_tick] ["",{"text":"\n   ","color":"gray"},{"text":"[Debug tool]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.stick"},"hoverEvent":{"action":"show_text","value":"Disable debug tool"}},{"text":"   ","color":"gray"},{"text":"[Display ticks]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.global.display_tick"},"hoverEvent":{"action":"show_text","value":"Hide ticks"}}]
tellraw @s[tag=glib.debug.stick,tag=!glib.debug.global.display_tick] ["",{"text":"\n   ","color":"gray"},{"text":"[Debug tool]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.stick"},"hoverEvent":{"action":"show_text","value":"Disable debug tool"}},{"text":"   ","color":"gray"},{"text":"[Display ticks]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.global.display_tick"},"hoverEvent":{"action":"show_text","value":"Display ticks"}}]

tellraw @s[tag=!glib.debug.stick] ["",{"text":"\n   ","color":"gray"},{"text":"[Debug tool]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add glib.debug.stick"},"hoverEvent":{"action":"show_text","value":"Enable debug tool"}}]
clear @s[tag=!glib.debug.stick] debug_stick


function glib_utils:menu/creator/place_system/remove
execute as @s[tag=glib.menu.Debug] at @s run function glib_utils:menu/debug/main
execute as @s[tag=glib.menu.Creator] at @s run function glib_utils:menu/creator/main
execute as @s[tag=glib.menu.Rules] at @s run function glib_utils:menu/gamerule/rules
execute as @s[tag=glib.menu.Informations] at @s run function glib_utils:menu/informations

tellraw @s[tag=glib.menu_Exit] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"     Thanks for using Gunivers-Lib !\n\n\n     Good luck for your project !","color":"gold"},{"text":"\n\n\n____________________","color":"black"}]
tag @s[tag=glib.menu_Exit] remove glib.menu
tag @s[tag=glib.menu_Exit] remove glib.menu_Exit
