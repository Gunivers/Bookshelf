# NAME: Blackholet
# PATH: gunivers-lib:system/black

# AUTHOR: _RedCoal_

# VERSION: 1.0
# MINECRAFT: 1.14.x

# NOTE: 
# Use this function to spawn black hole structure

tellraw @s ["",{"text":"----------","color":"black"},{"text":"\n\n"},{"text":"     ","color":"gold"},{"text":"Are you sure?","bold":true,"underlined":true,"color":"gold"},{"text":"\n\n     "},{"text":"Generate this system here","color":"gold"},{"text":"\n\n     "},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Charge_BlackHole_System"},"hoverEvent":{"action":"show_text","value":"Uh... nope"}},{"text":"     "},{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Charge_Valid_System"},"hoverEvent":{"action":"show_text","value":"Yes, generate the system here"}},{"text":"\n\n\n"},{"text":"----------","color":"black"}]


execute positioned ~ ~1.7 ~ run summon armor_stand ^ ^ ^5 {Small:1,Marker:1,Invisible:1,NoGravity:1,Tags:["Glib","Glib_Example_System"]}
execute as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run function gunivers-lib:object/convert/block/block_to_id
execute as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:1,sizeX:2,posZ:0,integrity:1.0f,showair:0b,name:"gunivers-lib:utils/example_systems/blackhole",sizeY:18,sizeZ:11,showboundingbox:1b}
execute if entity @s[tag=Glib_Charge_Valid_System] as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run setblock ~ ~1 ~ redstone_block
execute if entity @s[tag=Glib_Charge_Valid_System] run tag @s remove Glib_Charge_BlackHole_System
execute if entity @s[tag=Glib_Charge_Valid_System] run tag @s remove Glib_Charge_Valid_System