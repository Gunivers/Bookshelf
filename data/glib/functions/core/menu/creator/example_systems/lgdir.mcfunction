# NAME: Blackholet
# PATH: glib:system/black

# AUTHOR: _RedCoal_

# VERSION: 1.0
# MINECRAFT: 1.14.x

# NOTE:
# Use this function to spawn black hole structure


tellraw @s ["",{"text":"----------","color":"black"},{"text":"\n\n"},{"text":"     ","color":"gold"},{"text":"Are you sure?","bold":true,"underlined":true,"color":"gold"},{"text":"\n\n     "},{"text":"Generate this system here","color":"gold"},{"text":"\n\n     "},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Charge_LGdir_System"},"hoverEvent":{"action":"show_text","value":"Uh... nope"}},{"text":"     "},{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Charge_Valid_System"},"hoverEvent":{"action":"show_text","value":"Yes, generate the system here"}},{"text":"\n\n\n"},{"text":"----------","color":"black"}]

execute as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"glib:utils/example_systems/lgdir",sizeX:2,sizeY:11,sizeZ:4,ignoreEntities:0b,posX:0,posY:1,posZ:0,metadata:"",mirror:"NONE",powered:0b,seed:0L,author:"?",rotation:"NONE",mode:"LOAD",integrity:1.0f,showair:0b,name:"glib:utils/example_systems/lgdir",showboundingbox:1b}

execute if entity @s[tag=Glib_Charge_Valid_System] run tag @s remove Glib_Charge_LGdir_System
