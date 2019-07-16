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

# Move Forward
tellraw @s[tag=Debug_Entity_LocalVectors_ConvertFromVectors] ["",{"text":"           | ","color":"blue"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_LocalVectors_ConvertFromVectors"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}},{"text":" Convert from vectors","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_LocalVectors_ConvertFromVectors"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}}]
tellraw @s[tag=!Debug_Entity_LocalVectors_ConvertFromVectors] ["",{"text":"           | ","color":"blue"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Entity_LocalVectors_ConvertFromVectors"},"hoverEvent":{"action":"show_text","value":"Add this debug"}},{"text":" Convert from vectors","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Entity_LocalVectors_ConvertFromVectors"},"hoverEvent":{"action":"show_text","value":"Add this debug"}}]
