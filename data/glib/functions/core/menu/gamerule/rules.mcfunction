# NAME: Menu G-Lib
# PATH: glib:menu

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:

# INPUT:

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:
function glib:core/utils/import/data

tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Menu_Rules"},"hoverEvent":{"action":"show_text","value":"Exit Game Rules"}},{"text":"   ","color":"gold"},{"text":"Game Rules","underlined":true,"color":"gold"},{"text":"\n "}]


execute if entity @s[tag=!Glib_Menu_Rules_Page_2] run function glib:core/menu/gamerule/rules_page_1
execute if entity @s[tag=Glib_Menu_Rules_Page_2,tag=!Glib_Menu_Rules_Page_3] run function glib:core/menu/gamerule/rules_page_2
execute if entity @s[tag=Glib_Menu_Rules_Page_3,tag=!Glib_Menu_Rules_Page_4] run function glib:core/menu/gamerule/rules_page_3
execute if entity @s[tag=Glib_Menu_Rules_Page_4,tag=!Glib_Menu_Rules_Page_5] run function glib:core/menu/gamerule/rules_page_4
execute if entity @s[tag=Glib_Menu_Rules_Page_5] run function glib:core/menu/gamerule/rules_page_5