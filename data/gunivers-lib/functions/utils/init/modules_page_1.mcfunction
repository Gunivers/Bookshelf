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
tellraw @s ["",{"text":"      "},{"text":"[Import All]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/all"},"hoverEvent":{"action":"show_text","value":"Import all modules"}},{"text":"   "},{"text":"[Remove All]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/all"},"hoverEvent":{"action":"show_text","value":"Remove all modules"}}]

# Test Data
tellraw @s[tag=Glib_Init_Data_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/data"},"hoverEvent":{"action":"show_text","value":"Remove data"}},{"text":" Data","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/data"},"hoverEvent":{"action":"show_text","value":"Remove data"}},{"text":"  [?]","color":"blue","hoverEvent":{"action":"show_text","value":"Data is the default storage objective. The lib can automatically enable this module to work properly (example: the gamerule manager use this objective to check the state of each gamerules)."}}]
tellraw @s[tag=!Glib_Init_Data_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/data"},"hoverEvent":{"action":"show_text","value":"Import data"}},{"text":" Data","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/data"},"hoverEvent":{"action":"show_text","value":"Import data"}},{"text":"  [?]","color":"blue","hoverEvent":{"action":"show_text","value":"Data is the default storage objective. The lib can automatically enable this module to work properly (example: the gamerule manager use this objective to check the state of each gamerules)."}}]


# Test Vars
tellraw @s[tag=Glib_Init_Vars_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vars"},"hoverEvent":{"action":"show_text","value":"Remove vars"}},{"text":" Vars","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vars"},"hoverEvent":{"action":"show_text","value":"Remove vars"}},{"text":"  [?]","color":"blue","hoverEvent":{"action":"show_text","value":"Vars is used several systems. It allow to create variables wich can be used as parameters."}}]
tellraw @s[tag=!Glib_Init_Vars_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vars"},"hoverEvent":{"action":"show_text","value":"Import vars"}},{"text":" Vars","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vars"},"hoverEvent":{"action":"show_text","value":"Import vars"}},{"text":"  [?]","color":"blue","hoverEvent":{"action":"show_text","value":"Vars is used several systems. It allow to create variables wich can be used as parameters."}}]


# Test Constant

tellraw @s[tag=Glib_Init_Const_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/constants"},"hoverEvent":{"action":"show_text","value":"Remove constants"}},{"text":" Constants","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/constants"},"hoverEvent":{"action":"show_text","value":"Remove constants"}},{"text":"  [?]","color":"blue","hoverEvent":{"action":"show_text","value":"Constant is used several systems. It allow to use constants wich are used in some calculs."}}]
tellraw @s[tag=!Glib_Init_Const_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/constants"},"hoverEvent":{"action":"show_text","value":"Import constants"}},{"text":" Constants","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/constants"},"hoverEvent":{"action":"show_text","value":"Import constants"}},{"text":"  [?]","color":"blue","hoverEvent":{"action":"show_text","value":"Constant is used several systems. It allow to use constants wich are used in some calculs."}}]

#Test Bool

tellraw @s[tag=Glib_Init_Local_Bool_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/bool"},"hoverEvent":{"action":"show_text","value":"Remove lbool"}},{"text":" Bool","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/bool"},"hoverEvent":{"action":"show_text","value":"Remove bool"}}]
tellraw @s[tag=!Glib_Init_Local_Bool_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/bool"},"hoverEvent":{"action":"show_text","value":"Import bool"}},{"text":" Bool","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/bool"},"hoverEvent":{"action":"show_text","value":"Import bool"}}]




# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gray"},{"text":" "},{"text":"1/3","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add Glib_Init_Modules_Page_2"},"hoverEvent":{"action":"show_text","value":"Next page"}}]