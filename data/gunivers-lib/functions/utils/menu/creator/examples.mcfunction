# NAME: Menu G-Lib
# PATH: gunivers-lib:menu

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:

# INPUT:

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:
tellraw @s ["",{"text":"\n         x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Menu_Examples"},"hoverEvent":{"action":"show_text","value":"Exit examples"}},{"text":"   ","color":"gold"},{"text":"Examples","underlined":true,"color":"gold"},{"text":"\n "}]

tellraw @s ["",{"text":"            ","color":"gray"}]
tellraw @s ["",{"text":"            There is no sample systems for now, sorry :/","color":"gray"}]
tellraw @s ["",{"text":"            But you can help us create some!","color":"gray"}]
tellraw @s ["",{"text":"            Just join us on our ","color":"gray"},{"text":"[Discord server]","color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/E8qq6tN"},"hoverEvent":{"action":"show_text","value":"Click to join our Discord"}}]
tellraw @s ["",{"text":"            ","color":"gray"}]
tellraw @s ["",{"text":"            ","color":"gray"}]