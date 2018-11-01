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
tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Modules"},"hoverEvent":{"action":"show_text","value":"Exit Modules"}},{"text":"   ","color":"gold"},{"text":"Modules","underlined":true,"color":"gold"},{"text":"\n "}]

function gunivers-lib:utils/init/modules_start

execute if entity @s[tag=!Glib_Init_Modules_Page_2] run function gunivers-lib:utils/init/modules_page_1
execute if entity @s[tag=Glib_Init_Modules_Page_2,tag=!Glib_Init_Modules_Page_3] run function gunivers-lib:utils/init/modules_page_2
execute if entity @s[tag=Glib_Init_Modules_Page_3] run function gunivers-lib:utils/init/modules_page_3

function gunivers-lib:utils/init/modules_stop
