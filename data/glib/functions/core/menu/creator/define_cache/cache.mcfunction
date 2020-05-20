# Non-destructive placement system
execute as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run scoreboard players operation @s Var1 = @s BlockId
execute as @e[tag=Glib_Example_System] at @s run function glib:object/convert/block/id_to_block
kill @e[tag=Glib_Example_System]

execute at @s positioned ~ ~1.7 ~ run summon armor_stand ^ ^ ^5 {Small:1,Marker:1,Invisible:1,NoGravity:1,Tags:["Glib","Glib_Example_System"]}
execute as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run function glib:object/convert/block/block_to_id






# Confirmation message
tellraw @s ["",{"text":"----------","color":"black"},{"text":"\n\n"},{"text":"     ","color":"gold"},{"text":"Are you sure?","bold":true,"underlined":true,"color":"gold"},{"text":"\n\n     "},{"text":"Generate this system here","color":"gold"},{"text":"\n\n     "},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Creator_system.cache"},"hoverEvent":{"action":"show_text","value":"Uh... nope"}},{"text":"     "},{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Creator_Valid_System"},"hoverEvent":{"action":"show_text","value":"Yes, generate the system here"}},{"text":"\n\n\n"},{"text":"----------","color":"black"}]

execute as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"glib:utils/cache",sizeX:4,sizeY:4,sizeZ:5,ignoreEntities:0b,posX:0,posY:1,posZ:0,metadata:"",mirror:"NONE",powered:0b,seed:0L,author:"?",rotation:"NONE",mode:"LOAD",integrity:1.0f,showair:0b,showboundingbox:1b}

execute if entity @s[tag=Glib_Creator_Valid_System] run tag @s remove Glib_Creator_system.cache





# Validation
execute if entity @s[tag=Glib_Creator_Valid_System] as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run setblock ~ ~1 ~ redstone_block
execute if entity @s[tag=Glib_Creator_Valid_System] as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run function glib:object/convert/block/id_to_block
execute if entity @s[tag=Glib_Creator_Valid_System] run tag @s remove Glib_Creator_Valid_System
