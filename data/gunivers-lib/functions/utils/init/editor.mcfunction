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
tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Edit"},"hoverEvent":{"action":"show_text","value":"Exit map editor"}},{"text":"   ","color":"gold"},{"text":"Map Editor","underlined":true,"color":"gold"},{"text":"\n "}]

tellraw @s ["",{"text":"      > ","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/init/generate_base"},"hoverEvent":{"action":"show_text","value":"Set worldspawn on your position and create a platform to put all command-blocks."}},{"text":"Create base platform","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/init/generate_base"},"hoverEvent":{"action":"show_text","value":"Set worldspawn on your position and create a platform to put all command-blocks."}}]

tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]