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
tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Informations"},"hoverEvent":{"action":"show_text","value":"Exit informations"}},{"text":"   ","color":"gold"},{"text":"G-Lib > Informations","underlined":true,"color":"gold"},{"text":"\n "}]

tellraw @s ["",{"text":"      "},{"text":"> Documentation","color":"green","clickEvent":{"action":"open_url","value":"https://gunivers.net/gunivers-lib/"},"hoverEvent":{"action":"show_text","value":"Read our documentation (website in french)"}},{"text":"\n\n      "},{"text":"> Our Discord","color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/E8qq6tN"},"hoverEvent":{"action":"show_text","value":"Join our Discord server !"}},{"text":"\n\n"},{"text":"      ","color":"blue"},{"text":"> Help us","color":"red","clickEvent":{"action":"open_url","value":"https://patreon.com/gunivers/"},"hoverEvent":{"action":"show_text","value":"You can help us by become a patron !"}}]


tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]