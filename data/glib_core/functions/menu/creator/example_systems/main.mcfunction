
tellraw @s ["",{"text":"\n         x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Creator_system."},"hoverEvent":{"action":"show_text","value":"Exit examples"}},{"text":"   ","color":"gold"},{"text":"Examples","underlined":true,"color":"gold"},{"text":"\n "}]

# System List
tellraw @s ["",{"text":"\n            > ","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_system.blackhole"},"hoverEvent":{"action":"show_text","value":"Create a Black Hole system"}},{"text":"Black Hole","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_system.blackhole"},"hoverEvent":{"action":"show_text","value":"Create a Black Hole system"}}]
tellraw @s ["",{"text":"\n            > ","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_system.lgdir"},"hoverEvent":{"action":"show_text","value":"Create a LGdir system"}},{"text":"LGdir","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_system.lgdir"},"hoverEvent":{"action":"show_text","value":"Create a LGdir system"}}]

# Message
tellraw @s ["",{"text":"            ","color":"gray"}]
tellraw @s ["",{"text":"            There is no more sample systems for now, sorry :/","color":"gray"}]
tellraw @s ["",{"text":"            But you can help us create more!","color":"gray"}]
tellraw @s ["",{"text":"            Just join us on our ","color":"gray"},{"text":"[Discord server]","color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/E8qq6tN"},"hoverEvent":{"action":"show_text","value":"Click to join our Discord"}}]




# Call system creator
execute if entity @s[tag=Glib_Creator_system.blackhole] run function glib_core:menu/creator/example_systems/systems/blackhole
execute if entity @s[tag=Glib_Creator_system.lgdir] run function glib_core:menu/creator/example_systems/systems/lgdir
