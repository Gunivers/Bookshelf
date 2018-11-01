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

# Test Vectors
tellraw @s[tag=Glib_Init_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vectors"},"hoverEvent":{"action":"show_text","value":"Remove vectors"}},{"text":" Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vectors"},"hoverEvent":{"action":"show_text","value":"Remove vectors"}}]
tellraw @s[tag=!Glib_Init_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vectors"},"hoverEvent":{"action":"show_text","value":"Import vectors"}},{"text":" Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vectors"},"hoverEvent":{"action":"show_text","value":"Import vectors"}}]


# End page
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]

# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Modules_Page_3"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"3/3","color":"gray"},{"text":" "},{"text":"[>]","color":"gray"}]