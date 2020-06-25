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
execute if entity @s[tag=!Glib_Menu_Imports,tag=!Glib_Creator_system.,tag=!Glib_Menu.Informations] run tellraw @s ["",{"text":" \n \n \n \n \n \n \n \n \n ","color":"gray"}]

tellraw @s ["",{"text":"\n"},{"text":"x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu_Exit"},"hoverEvent":{"action":"show_text","value":"Exit menu"}},{"text":"   ","color":"gold"},{"text":"G U N I V E R S - L I B","underlined":true,"color":"gold"},{"text":"\n "}]

tellraw @s [{"text":"   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Creator"},"hoverEvent":{"action":"show_text","value":"Creator tools"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Creator"},"hoverEvent":{"action":"show_text","value":"Creator tools"}},{"text":"Creator","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Creator"},"hoverEvent":{"action":"show_text","value":"Creator tools"}}]
tellraw @s [{"text":"\n   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Rules"},"hoverEvent":{"action":"show_text","value":"Manage map settings"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Rules"},"hoverEvent":{"action":"show_text","value":"Manage map settings"}},{"text":"Game Rules","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Rules"},"hoverEvent":{"action":"show_text","value":"Manage map settings"}}]
tellraw @s [{"text":"\n   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Debug"},"hoverEvent":{"action":"show_text","value":"Enable/Disable debugs"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Debug"},"hoverEvent":{"action":"show_text","value":"Enable/Disable debugs"}},{"text":"Debugs","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Debug"},"hoverEvent":{"action":"show_text","value":"Enable/Disable debugs"}}]
tellraw @s [{"text":"\n   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}},{"text":"Informations","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu.Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}}]


function glib_core:menu/creator/place_system/remove
execute as @s[tag=Glib_Menu.Debug] at @s run function glib_core:menu/debug/main
execute as @s[tag=Glib_Menu.Creator] at @s run function glib_core:menu/creator/main
execute as @s[tag=Glib_Menu.Rules] at @s run function glib_core:menu/gamerule/rules
execute as @s[tag=Glib_Menu.Informations] at @s run function glib_core:menu/informations

tellraw @s[tag=Glib_Menu_Exit] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"     Thanks for using Gunivers-Lib !\n\n\n     Good luck for your project !","color":"gold"},{"text":"\n\n\n____________________","color":"black"}]
tag @s[tag=Glib_Menu_Exit] remove Glib_Menu
tag @s[tag=Glib_Menu_Exit] remove Glib_Menu_Exit
