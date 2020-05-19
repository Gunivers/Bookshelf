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
# Title
tellraw @s ["",{"text":"\n         x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Menu_Examples"},"hoverEvent":{"action":"show_text","value":"Exit examples"}},{"text":"   ","color":"gold"},{"text":"Examples","underlined":true,"color":"gold"},{"text":"\n "}]

# System List
tellraw @s ["",{"text":"\n            > ","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Charge_BlackHole_System"},"hoverEvent":{"action":"show_text","value":"Create a Black Hole system"}},{"text":"Black Hole","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Charge_BlackHole_System"},"hoverEvent":{"action":"show_text","value":"Create a Black Hole system"}}]
tellraw @s ["",{"text":"\n            > ","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Charge_LGdir_System"},"hoverEvent":{"action":"show_text","value":"Create a LGdir system"}},{"text":"LGdir","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Charge_LGdir_System"},"hoverEvent":{"action":"show_text","value":"Create a LGdir system"}}]

# Message
tellraw @s ["",{"text":"            ","color":"gray"}]
tellraw @s ["",{"text":"            There is no more sample systems for now, sorry :/","color":"gray"}]
tellraw @s ["",{"text":"            But you can help us create more!","color":"gray"}]
tellraw @s ["",{"text":"            Just join us on our ","color":"gray"},{"text":"[Discord server]","color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/E8qq6tN"},"hoverEvent":{"action":"show_text","value":"Click to join our Discord"}}]


# Non-destructive placement system
execute as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run scoreboard players operation @s Var1 = @s BlockId
execute as @e[tag=Glib_Example_System] at @s run function glib:object/convert/block/id_to_block
kill @e[tag=Glib_Example_System]

execute positioned ~ ~1.7 ~ run summon armor_stand ^ ^ ^5 {Small:1,Marker:1,Invisible:1,NoGravity:1,Tags:["Glib","Glib_Example_System"]}
execute as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run function glib:object/convert/block/block_to_id

# Call system creator
execute if entity @s[tag=Glib_Charge_BlackHole_System] run function glib:core/menu/creator/example_systems/blackhole
execute if entity @s[tag=Glib_Charge_LGdir_System] run function glib:core/menu/creator/example_systems/lgdir

# Validation
execute if entity @s[tag=Glib_Charge_Valid_System] as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run setblock ~ ~1 ~ redstone_block
execute if entity @s[tag=Glib_Charge_Valid_System] run tag @s remove Glib_Charge_Valid_System
