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
execute if entity @s[tag=!Glib_Init_Imports,tag=!Glib_Init_Exemples,tag=!Glib_Init_Informations] run tellraw @s ["",{"text":" \n \n \n \n \n \n \n \n ","color":"gray"}]

tellraw @s ["",{"text":"\n"},{"text":"x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Menu"},"hoverEvent":{"action":"show_text","value":"Exit menu"}},{"text":"   ","color":"gold"},{"text":"G U N I V E R S - L I B","underlined":true,"color":"gold"},{"text":"\n "}]

tellraw @s ["",{"text":"   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Imports"},"hoverEvent":{"action":"show_text","value":"Import or remove modules"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Imports"},"hoverEvent":{"action":"show_text","value":"Import or remove modules"}},{"text":"Imports","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Imports"},"hoverEvent":{"action":"show_text","value":"Import or remove modules"}},{"text":"\n\n   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Exemples"},"hoverEvent":{"action":"show_text","value":"View exemples systems"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Exemples"},"hoverEvent":{"action":"show_text","value":"View exemples systems"}},{"text":"Exemples","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Exemples"},"hoverEvent":{"action":"show_text","value":"View exemples systems"}},{"text":"\n\n   "},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}},{"text":"Informations","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Informations"},"hoverEvent":{"action":"show_text","value":"More informations about Gunivers-Lib and us"}},{"text":"\n "}]
tellraw @s ["",{"text":" ","color":"gray"}]

execute as @s[tag=Glib_Init_Imports] at @s run function gunivers-lib:utils/init/imports
execute as @s[tag=Glib_Init_Exemples] at @s run function gunivers-lib:utils/init/exemples
execute as @s[tag=Glib_Init_Informations] at @s run function gunivers-lib:utils/init/informations