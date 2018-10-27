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



# DEBUG RECORD
tellraw @s[tag=Glib_Debug_Stick,tag=Glib_Debug_Disp_Tick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Debug_Stick"},"hoverEvent":{"action":"show_text","value":"Disable debug tool"}},{"text":"   ","color":"gray"},{"text":"[Display ticks]\n","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Debug_Disp_Tick"},"hoverEvent":{"action":"show_text","value":"Hide ticks"}}]
tellraw @s[tag=Glib_Debug_Stick,tag=!Glib_Debug_Disp_Tick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Debug_Stick"},"hoverEvent":{"action":"show_text","value":"Disable debug tool"}},{"text":"   ","color":"gray"},{"text":"[Display ticks]\n","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Debug_Disp_Tick"},"hoverEvent":{"action":"show_text","value":"Display ticks"}}]

tellraw @s[tag=!Glib_Debug_Stick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]\n","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Debug_Stick"},"hoverEvent":{"action":"show_text","value":"Enable debug tool"}}]
clear @s[tag=!Glib_Debug_Stick] debug_stick
# Entity
tellraw @s[tag=!Debug_E] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Debug_E"},"hoverEvent":{"action":"show_text","value":"Show entity modules"}},{"text":" Entity","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_E"},"hoverEvent":{"action":"show_text","value":"Show entity modules"}}]
tellraw @s[tag=Debug_E] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_E"},"hoverEvent":{"action":"show_text","value":"Hide entity modules"}},{"text":" Entity","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_E"},"hoverEvent":{"action":"show_text","value":"Hide entity modules"}}]
execute if entity @s[tag=Debug_E] run function gunivers-lib:utils/debug/entity/_main_

# Object
tellraw @s[tag=!Debug_O] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Debug_O"},"hoverEvent":{"action":"show_text","value":"Show object modules"}},{"text":" Object","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_O"},"hoverEvent":{"action":"show_text","value":"Show object modules"}}]
tellraw @s[tag=Debug_O] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_O"},"hoverEvent":{"action":"show_text","value":"Hide object modules"}},{"text":" Object","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_O"},"hoverEvent":{"action":"show_text","value":"Hide object modules"}}]

# Math
tellraw @s[tag=!Debug_Math] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Math"},"hoverEvent":{"action":"show_text","value":"Show math gunctions"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Math"},"hoverEvent":{"action":"show_text","value":"Show math functions"}}]
tellraw @s[tag=Debug_Math] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Math"},"hoverEvent":{"action":"show_text","value":"Hide math functions"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Math"},"hoverEvent":{"action":"show_text","value":"Hide math functions"}}]

# Management
tellraw @s[tag=!Debug_M] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Debug_M"},"hoverEvent":{"action":"show_text","value":"Show managemer modules"}},{"text":" Manager","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_M"},"hoverEvent":{"action":"show_text","value":"Show manager modules"}}]
tellraw @s[tag=Debug_M] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_M"},"hoverEvent":{"action":"show_text","value":"Hide manager modules"}},{"text":" Manager","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_M"},"hoverEvent":{"action":"show_text","value":"Hide manager modules"}}]

tellraw @s ["",{"text":"      ","color":"gray"}]