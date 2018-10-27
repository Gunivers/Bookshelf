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
tellraw @s[tag=Debug_Move_Forward] ["",{"text":"           | ","color":"blue"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Move_Forward"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}},{"text":" Forward","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Move_Forward"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}}]
tellraw @s[tag=!Debug_Move_Forward] ["",{"text":"           | ","color":"blue"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Move_Forward"},"hoverEvent":{"action":"show_text","value":"Add this debug"}},{"text":" Forward","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Move_Forward"},"hoverEvent":{"action":"show_text","value":"Add this debug"}}]

tellraw @s[tag=Debug_Move_ByLocalVector] ["",{"text":"           | ","color":"blue"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Move_ByLocalVector"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}},{"text":" By local vector","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Move_ByLocalVector"},"hoverEvent":{"action":"show_text","value":"Remove this debug"}}]
tellraw @s[tag=!Debug_Move_ByLocalVector] ["",{"text":"           | ","color":"blue"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Move_ByLocalVector"},"hoverEvent":{"action":"show_text","value":"Add this debug"}},{"text":" By local vector","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Debug_Move_ByLocalVector"},"hoverEvent":{"action":"show_text","value":"Add this debug"}}]
