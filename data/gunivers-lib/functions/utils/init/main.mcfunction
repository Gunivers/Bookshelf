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
execute if entity @s[tag=!Glib_Init_Imports,tag=!Glib_Init_Examples,tag=!Glib_Init_Informations] run tellraw @s ["",{"text":" \n \n \n \n \n \n \n \n \n ","color":"gray"}]

tellraw @s ["",{"text":"\n"},{"text":"x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Exit"},"hoverEvent":{"action":"show_text","value":"Exit menu"}},{"text":"   ","color":"gold"},{"text":"G U N I V E R S - L I B","underlined":true,"color":"gold"},{"text":"\n "}]

tellraw @s ["",{"text":"   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Modules"},"hoverEvent":{"action":"show_text","value":"Import or remove modules"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Modules"},"hoverEvent":{"action":"show_text","value":"Import or remove modules"}},{"text":"Modules","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Modules"},"hoverEvent":{"action":"show_text","value":"Import or remove modules"}}]
tellraw @s [{"text":"   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Examples"},"hoverEvent":{"action":"show_text","value":"View examples systems"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Examples"},"hoverEvent":{"action":"show_text","value":"View examples systems"}},{"text":"Examples","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Examples"},"hoverEvent":{"action":"show_text","value":"View examples systems"}}]
tellraw @s [{"text":"   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Rules"},"hoverEvent":{"action":"show_text","value":"Manage map settings"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Rules"},"hoverEvent":{"action":"show_text","value":"Manage map settings"}},{"text":"Game Rules","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Rules"},"hoverEvent":{"action":"show_text","value":"Manage map settings"}}]
tellraw @s [{"text":"   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Edit"},"hoverEvent":{"action":"show_text","value":"Edit Map"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Edit"},"hoverEvent":{"action":"show_text","value":"Edit Map"}},{"text":"Map Editor","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Edit"},"hoverEvent":{"action":"show_text","value":"Edit Map"}}]
tellraw @s [{"text":"   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}},{"text":"Informations","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}}]

tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]


execute as @s[tag=Glib_Init_Modules] at @s run function gunivers-lib:utils/init/modules
execute as @s[tag=Glib_Init_Examples] at @s run function gunivers-lib:utils/init/examples
execute as @s[tag=Glib_Init_Edit] at @s run function gunivers-lib:utils/init/editor
execute as @s[tag=Glib_Init_Rules] at @s run function gunivers-lib:utils/init/rules
execute as @s[tag=Glib_Init_Informations] at @s run function gunivers-lib:utils/init/informations

tellraw @s[tag=Glib_Init_Exit] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"     Thanks to use Gunivers-Lib !\n\n\n     Good luck for your project !","color":"gold"},{"text":"\n\n\n____________________","color":"black"}]
tag @s[tag=Glib_Init_Exit] remove Glib_Init_Menu
tag @s[tag=Glib_Init_Exit] remove Glib_Init_Exit