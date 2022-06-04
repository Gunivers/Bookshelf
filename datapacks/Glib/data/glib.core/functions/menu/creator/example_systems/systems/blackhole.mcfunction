# NAME: Blackholet
# PATH: glib.system:black

# AUTHOR: _RedCoal_

# VERSION: 1.0
# MINECRAFT: 1.14.x

# NOTE:
# Use this function to spawn black hole structure



tellraw @s ["",{"text":"----------","color":"black"},{"text":"\n\n"},{"text":"     ","color":"gold"},{"text":"Are you sure?","bold":true,"underlined":true,"color":"gold"},{"text":"\n\n     "},{"text":"Generate this system here","color":"gold"},{"text":"\n\n     "},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Creator_system.blackhole"},"hoverEvent":{"action":"show_text","value":"Uh... nope"}},{"text":"     "},{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_Valid_System"},"hoverEvent":{"action":"show_text","value":"Yes, generate the system here"}},{"text":"\n\n\n"},{"text":"----------","color":"black"}]

execute if entity @s[tag=Glib_Creator_Valid_System] run tag @s remove Glib_Creator_system.blackhole


# Non-destructive placement system
function glib.core:menu/creator/place_system/main
execute as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"glib.core:example_systems/blackhole",sizeX:2,sizeY:18,sizeZ:11,powered:0b,ignoreEntities:0b,posX:0,posY:1,posZ:0,metadata:"",mirror:"NONE",seed:0L,author:"?",rotation:"NONE",mode:"LOAD",integrity:1.0f,showair:0b,showboundingbox:1b}
function glib.core:menu/creator/place_system/validation
