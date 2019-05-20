# NAME: Normalize Orientation
# PATH: gunivers-lib:entity/orientation/normalize

# AUTHOR: LeiRoF
# CONTRIBUTORS: 
# - KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# INPUT:
# - Phi (score dummy)
# - Theta (score dummy)

# OUTPUT:
# - Phi (score dummy)
# - Theta (score dummy)

# INIT:
scoreboard objectives add OriV dummy
scoreboard objectives add OriH dummy

# CODE:
#____________________________________________________________________________________________________


# Vertical Orientation
scoreboard players operation @s OriV %= 360 Constant

execute if entity @s[scores={OriV=-360..-270}] run scoreboard players add @s OriV 360

tag @s[scores={OriV=-269..-91}] add Glib_Ori_Switch
scoreboard players add @s[tag=Glib_Ori_Switch] OriH 180
scoreboard players add @s[tag=Glib_Ori_Switch,scores={OriV=-269..-180}] OriV 180
scoreboard players operation @s[tag=Glib_Ori_Switch] OriV *= -1 Constant

tag @s remove Glib_Ori_Switch

# Horizontal Orientation
scoreboard players operation @s OriH %= 360 Constant
scoreboard players add @s[scores={OriH=..-1}] OriH 360