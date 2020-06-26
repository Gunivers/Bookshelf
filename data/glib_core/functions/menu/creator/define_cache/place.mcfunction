

# Confirmation message
tellraw @s ["",{"text":"----------","color":"black"},{"text":"\n\n"},{"text":"     ","color":"gold"},{"text":"Are you sure?","bold":true,"underlined":true,"color":"gold"},{"text":"\n\n     "},{"text":"Generate this system here","color":"gold"},{"text":"\n\n     "},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Creator_system.cache.place"},"hoverEvent":{"action":"show_text","value":"Uh... nope"}},{"text":"     "},{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_Valid_System"},"hoverEvent":{"action":"show_text","value":"Yes, generate the system here"}},{"text":"\n\n\n"},{"text":"----------","color":"black"}]

execute if entity @s[tag=Glib_Creator_Valid_System] run tag @s remove Glib_Creator_system.cache.place

# Non-destructive placement system
function glib_core:menu/creator/place_system/main
execute as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"glib:utils/cache",sizeX:4,sizeY:4,sizeZ:5,powered:0b,ignoreEntities:0b,posX:0,posY:1,posZ:0,metadata:"",mirror:"NONE",seed:0L,author:"?",rotation:"NONE",mode:"LOAD",integrity:1.0f,showair:0b,showboundingbox:1b}
function glib_core:menu/creator/place_system/validation
