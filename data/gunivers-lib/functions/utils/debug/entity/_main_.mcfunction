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
# Target Entity Manager
tellraw @s[tag=Debug_Entity_Management] ["",{"text":"        | ","color":"blue"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_Management"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}},{"text":" Target Entity Managerz","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_Management"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}}]
tellraw @s[tag=!Debug_Entity_Management] ["",{"text":"        | ","color":"blue"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Entity_Management"},"hoverEvent":{"action":"show_text","value":"Add this debug"}},{"text":" Target Entity Manager","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Entity_Management"},"hoverEvent":{"action":"show_text","value":"Add this debug"}}]

# Move
tellraw @s[tag=!Debug_E_Move] ["",{"text":"        | ","color":"blue"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Debug_E_Move"},"hoverEvent":{"action":"show_text","value":"Show location functions"}},{"text":" Move","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_E_Move"},"hoverEvent":{"action":"show_text","value":"Show location functions"}}]
tellraw @s[tag=Debug_E_Move] ["",{"text":"        | ","color":"blue"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_E_Move"},"hoverEvent":{"action":"show_text","value":"Hide location functions"}},{"text":" Move","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_E_Move"},"hoverEvent":{"action":"show_text","value":"Hide location functions"}}]
execute if entity @s[tag=Debug_E_Move] run function gunivers-lib:utils/debug/entity/move/_main_

# Local Vectors
tellraw @s[tag=!Debug_Entity_LocalVectors] ["",{"text":"        | ","color":"blue"},{"text":">","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Entity_LocalVectors"},"hoverEvent":{"action":"show_text","value":"Show location functions"}},{"text":" Local Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Entity_LocalVectors"},"hoverEvent":{"action":"show_text","value":"Show location functions"}}]
tellraw @s[tag=Debug_Entity_LocalVectors] ["",{"text":"        | ","color":"blue"},{"text":"x","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_LocalVectors"},"hoverEvent":{"action":"show_text","value":"Hide location functions"}},{"text":" Local Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_LocalVectors"},"hoverEvent":{"action":"show_text","value":"Hide location functions"}}]
execute if entity @s[tag=Debug_Entity_LocalVectors] run function gunivers-lib:utils/debug/entity/local_vectors/_main_