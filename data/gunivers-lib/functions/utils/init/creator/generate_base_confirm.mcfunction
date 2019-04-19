function gunivers-lib:utils/import/data
function gunivers-lib:utils/import/constants

execute at @s run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["Glib_Generate_Base"]}

# Get extrem chunk point X
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] store result score @s Data run data get entity @s Pos[0] 1
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={Data=..-1}] add Glib_Generate_Base_PosNeg
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] Data /= 16 Constant
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] Data *= 16 Constant
scoreboard players remove @e[type=armor_stand,tag=Glib_Generate_Base,tag=Glib_Generate_Base_PosNeg] Data 16
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={Data=..-1}] remove Glib_Generate_Base_PosNeg
execute store result entity @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] Pos[0] double 1 run scoreboard players get @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] Data

# Get extrem chunk point Y
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] store result score @s Data run data get entity @s Pos[2] 1
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={Data=..-1}] add Glib_Generate_Base_PosNeg
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] Data /= 16 Constant
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] Data *= 16 Constant
scoreboard players remove @e[type=armor_stand,tag=Glib_Generate_Base,tag=Glib_Generate_Base_PosNeg] Data 16
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={Data=..-1}] remove Glib_Generate_Base_PosNeg
execute store result entity @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] Pos[2] double 1 run scoreboard players get @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] Data

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s align y run tp @s ~ ~ ~

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~8 ~-0.5 ~-16 10 0 0 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~8 ~-0.5 ~32 10 0 0 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~-16 ~-0.5 ~8 0 0 10 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~32 ~-0.5 ~8 0 0 10 0 10 force

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~8 ~-0.5 ~ 10 0 0 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~8 ~-0.5 ~16 10 0 0 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~ ~-0.5 ~8 0 0 10 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~16 ~-0.5 ~8 0 0 10 0 10 force


execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] store result score @s Data run data get entity @s Pos[1] 1
scoreboard players remove @e[type=armor_stand,tag=Glib_Generate_Base] Data 1
tellraw @s ["",{"text":"----------","color":"black"},{"text":"\n\n"},{"text":"     ","color":"gold"},{"text":"Are you sure?","bold":true,"underlined":true,"color":"gold"},{"text":"\n\n     "},{"text":"Create base platform here","color":"gold"},{"text":"\n\n     "},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Platform_Confirm"},"hoverEvent":{"action":"show_text","value":"Uh... nope"}},{"text":"     "},{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/init/generate_base"},"hoverEvent":{"action":"show_text","value":"Yes, create a platform here"}},{"text":"\n\n     "},{"text":"Platform height: ","color":"gray"},{"score":{"name":"@e[type=armor_stand,tag=Glib_Generate_Base,limit=1]","objective":"Data"},"color":"gray"},{"text":"\n"},{"text":"----------","color":"black"}]
kill @e[type=armor_stand,tag=Glib_Generate_Base]