# NAME: Menu G-Lib
# PATH: gunivers-lib:menu

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
tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Menu_Debug"},"hoverEvent":{"action":"show_text","value":"Exit Debugs"}},{"text":"   ","color":"gold"},{"text":"Debugs","underlined":true,"color":"gold"},{"text":"\n "}]



# DEBUG RECORD



tellraw @s[tag=Glib_Debug_Stick,tag=Glib_Debug_Disp_Tick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Debug_Stick"},"hoverEvent":{"action":"show_text","value":"Disable debug tool"}},{"text":"   ","color":"gray"},{"text":"[Display ticks]\n","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Debug_Disp_Tick"},"hoverEvent":{"action":"show_text","value":"Hide ticks"}}]
tellraw @s[tag=Glib_Debug_Stick,tag=!Glib_Debug_Disp_Tick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Debug_Stick"},"hoverEvent":{"action":"show_text","value":"Disable debug tool"}},{"text":"   ","color":"gray"},{"text":"[Display ticks]\n","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Debug_Disp_Tick"},"hoverEvent":{"action":"show_text","value":"Display ticks"}}]

tellraw @s[tag=!Glib_Debug_Stick] ["",{"text":"      ","color":"gray"},{"text":"[DEBUG TOOL]\n","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Debug_Stick"},"hoverEvent":{"action":"show_text","value":"Enable debug tool"}}]
clear @s[tag=!Glib_Debug_Stick] debug_stick

# Collection
tellraw @s[tag=!Debug_C] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Debug_C"},"hoverEvent":{"action":"show_text","value":"Show section"}},{"text":" Collection","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_C"},"hoverEvent":{"action":"show_text","value":"Show section"}}]
tellraw @s[tag=Debug_C] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_C"},"hoverEvent":{"action":"show_text","value":"Hide section"}},{"text":" Collection","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_C"},"hoverEvent":{"action":"show_text","value":"Hide section"}}]
tellraw @s[tag=Debug_C] ["",{"text":"         There is no debug here for now :/","color":"gray"}]

# Entity
tellraw @s[tag=!Debug_E] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Debug_E"},"hoverEvent":{"action":"show_text","value":"Show section"}},{"text":" Entity","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_E"},"hoverEvent":{"action":"show_text","value":"Show entity modules"}}]
tellraw @s[tag=Debug_E] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_E"},"hoverEvent":{"action":"show_text","value":"Hide section"}},{"text":" Entity","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_E"},"hoverEvent":{"action":"show_text","value":"Hide entity modules"}}]
execute if entity @s[tag=Debug_E] run function gunivers-lib:utils/menu/debug/entity/_main_

# Math
tellraw @s[tag=!Debug_Math] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Math"},"hoverEvent":{"action":"show_text","value":"Show section"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Math"},"hoverEvent":{"action":"show_text","value":"Show math functions"}}]
tellraw @s[tag=Debug_Math] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Math"},"hoverEvent":{"action":"show_text","value":"Hide section"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Math"},"hoverEvent":{"action":"show_text","value":"Hide math functions"}}]
tellraw @s[tag=Debug_Math] ["",{"text":"         There is no debug here for now :/","color":"gray"}]

# Object
tellraw @s[tag=!Debug_O] ["",{"text":"      ","color":"gray"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Debug_O"},"hoverEvent":{"action":"show_text","value":"Show section"}},{"text":" Object","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_O"},"hoverEvent":{"action":"show_text","value":"Show object modules"}}]
tellraw @s[tag=Debug_O] ["",{"text":"      ","color":"gray"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_O"},"hoverEvent":{"action":"show_text","value":"Hide section"}},{"text":" Object","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_O"},"hoverEvent":{"action":"show_text","value":"Hide object modules"}}]
tellraw @s[tag=Debug_O] ["",{"text":"         There is no debug here for now :/","color":"gray"}]

tellraw @s ["",{"text":"      ","color":"gray"}]