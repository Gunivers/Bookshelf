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


# All
tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Debug"},"hoverEvent":{"action":"show_text","value":"Exit Debugs"}},{"text":"   ","color":"gold"},{"text":"Debugs","underlined":true,"color":"gold"},{"text":"\n "}]

# DEBUG STICK
tellraw @s[tag=Glib_Debug_Stick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]\n","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Debug_Stick"},"hoverEvent":{"action":"show_text","value":"Disable debug tool"}}]
tellraw @s[tag=!Glib_Debug_Stick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]\n","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Debug_Stick"},"hoverEvent":{"action":"show_text","value":"Enable debug tool"}}]
clear @s[tag=!Glib_Debug_Stick] debug_stick

# Target Entity Manager
tellraw @s[tag=Debug_Entity_Management] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_Management"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}},{"text":" Target Entity Managerz","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_Management"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}}]
tellraw @s[tag=!Debug_Entity_Management] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Entity_Management"},"hoverEvent":{"action":"show_text","value":"Add this debug"}},{"text":" Target Entity Manager","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Entity_Management"},"hoverEvent":{"action":"show_text","value":"Add this debug"}}]


# Move Forward
tellraw @s[tag=Debug_Move_Forward] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Move_Forward"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}},{"text":" Move Forward","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Move_Forward"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}}]
tellraw @s[tag=!Debug_Move_Forward] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Move_Forward"},"hoverEvent":{"action":"show_text","value":"Add this debug"}},{"text":" Move Forward","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Move_Forward"},"hoverEvent":{"action":"show_text","value":"Add this debug"}}]


tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]