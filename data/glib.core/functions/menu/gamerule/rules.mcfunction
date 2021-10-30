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

tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove glib.menu.Rules"},"hoverEvent":{"action":"show_text","value":"Exit Game Rules"}},{"text":"   ","color":"gold"},{"text":"Game Rules","underlined":true,"color":"gold"},{"text":"\n "}]


execute if entity @s[tag=!glib.menu.Rules.Page_2] run function glib.core:menu/gamerule/rules_page_1
execute if entity @s[tag=glib.menu.Rules.Page_2,tag=!glib.menu.Rules.Page_3] run function glib.core:menu/gamerule/rules_page_2
execute if entity @s[tag=glib.menu.Rules.Page_3,tag=!glib.menu.Rules.Page_4] run function glib.core:menu/gamerule/rules_page_3
execute if entity @s[tag=glib.menu.Rules.Page_4,tag=!glib.menu.Rules.Page_5] run function glib.core:menu/gamerule/rules_page_4
execute if entity @s[tag=glib.menu.Rules.Page_5] run function gutils:menu/gamerule/rules_page_5
