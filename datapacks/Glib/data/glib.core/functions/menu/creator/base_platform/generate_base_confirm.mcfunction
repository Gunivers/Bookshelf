gamerule doEntityDrops false

execute at @s run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["Glib","Glib_Generate_Base"]}

# Get extrem chunk point X
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] store result score @s glib.data run data get entity @s Pos[0] 1
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={glib.data=..-1}] add glib.generate.base.posNeg
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] glib.data /= 16 glib.const
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] glib.data *= 16 glib.const
# scoreboard players remove @e[type=armor_stand,tag=Glib_Generate_Base,tag=glib.generate.base.posNeg] glib.data 16
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={glib.data=..-1}] remove glib.generate.base.posNeg
execute store result entity @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] Pos[0] double 1 run scoreboard players get @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] glib.data

# Get extrem chunk point Y
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] store result score @s glib.data run data get entity @s Pos[2] 1
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={glib.data=..-1}] add glib.generate.base.posNeg
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] glib.data /= 16 glib.const
scoreboard players operation @e[type=armor_stand,tag=Glib_Generate_Base] glib.data *= 16 glib.const
# scoreboard players remove @e[type=armor_stand,tag=Glib_Generate_Base,tag=glib.generate.base.posNeg] glib.data 16
tag @e[type=armor_stand,tag=Glib_Generate_Base,limit=1,scores={glib.data=..-1}] remove glib.generate.base.posNeg
execute store result entity @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] Pos[2] double 1 run scoreboard players get @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] glib.data

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s align y run tp @s ~ ~ ~

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~8 ~-0.5 ~-16 10 0 0 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~8 ~-0.5 ~32 10 0 0 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~-16 ~-0.5 ~8 0 0 10 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~32 ~-0.5 ~8 0 0 10 0 10 force

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~8 ~-0.5 ~ 10 0 0 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~8 ~-0.5 ~16 10 0 0 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~ ~-0.5 ~8 0 0 10 0 10 force
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s run particle flame ~16 ~-0.5 ~8 0 0 10 0 10 force

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~32 ~ ~32 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~32 ~ ~-16 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~-16 ~ ~32 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~-16 ~ ~-16 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~16 ~ ~16 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~16 ~ ~ {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~ ~ ~16 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}

execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~16 ~ ~32 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~32 ~ ~16 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~ ~ ~32 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~32 ~ ~ {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~16 ~ ~-16 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~ ~ ~-16 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~-16 ~ ~16 {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}
execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] at @s positioned ~ ~-1 ~ run summon minecraft:falling_block ~-16 ~ ~ {BlockState:{Name:"minecraft:bedrock"},NoGravity:1b,Time:595}




execute as @e[type=armor_stand,tag=Glib_Generate_Base,limit=1] store result score @s glib.data run data get entity @s Pos[1] 1
scoreboard players remove @e[type=armor_stand,tag=Glib_Generate_Base] glib.data 1
tellraw @s ["",{"text":"----------","color":"black"},{"text":"\n\n"},{"text":"     ","color":"gold"},{"text":"Are you sure?","bold":true,"underlined":true,"color":"gold"},{"text":"\n\n     "},{"text":"Create base platform here","color":"gold"},{"text":"\n\n     "},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Creator_platform"},"hoverEvent":{"action":"show_text","value":"Uh... nope"}},{"text":"     "},{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/function glib.core:menu/creator/base_platform/generate_base"},"hoverEvent":{"action":"show_text","value":"Yes, create a platform here"}},{"text":"\n\n     "},{"text":"Platform height: ","color":"gray"},{"score":{"name":"@e[type=armor_stand,tag=Glib_Generate_Base,limit=1]","objective":"glib.ata"},"color":"gray"},{"text":"\n"},{"text":"----------","color":"black"}]
kill @e[type=armor_stand,tag=Glib_Generate_Base]
