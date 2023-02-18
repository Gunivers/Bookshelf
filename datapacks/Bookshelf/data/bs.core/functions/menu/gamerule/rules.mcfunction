# NAME: Menu G-Lib
# PATH: bs:menu

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:

# INPUT:

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:

tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove bs.menu.Rules"},"hoverEvent":{"action":"show_text","value":"Exit Game Rules"}},{"text":"   ","color":"gold"},{"text":"Game Rules","underlined":true,"color":"gold"},{"text":"\n "}]


execute if entity @s[tag=!bs.menu.Rules.Page_2] run function bs.core:menu/gamerule/rules_page_1
execute if entity @s[tag=bs.menu.Rules.Page_2,tag=!bs.menu.Rules.Page_3] run function bs.core:menu/gamerule/rules_page_2
execute if entity @s[tag=bs.menu.Rules.Page_3,tag=!bs.menu.Rules.Page_4] run function bs.core:menu/gamerule/rules_page_3
execute if entity @s[tag=bs.menu.Rules.Page_4,tag=!bs.menu.Rules.Page_5] run function bs.core:menu/gamerule/rules_page_4
execute if entity @s[tag=bs.menu.Rules.Page_5] run function gutils:menu/gamerule/rules_page_5
