# NAME: Init G-Lib
# PATH: gunivers-lib:init

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:

# INPUT:

# OUTPUT:


# NOTE:

# CONFIGURATION:


# CODE:
tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Creator"},"hoverEvent":{"action":"show_text","value":"Exit crator tools"}},{"text":"   ","color":"gold"},{"text":"Creator Tools","underlined":true,"color":"gold"},{"text":"\n "}]

tellraw @s [{"text":"      >","color":"blue","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Examples"},"hoverEvent":{"action":"show_text","value":"View examples systems"}},{"text":" ","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Examples"},"hoverEvent":{"action":"show_text","value":"View examples systems"}},{"text":"Example systems","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Examples"},"hoverEvent":{"action":"show_text","value":"View examples systems"}}]

tellraw @s ["",{"text":"\n      > ","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Platform_Confirm"},"hoverEvent":{"action":"show_text","value":"Set worldspawn on your position and create a platform to put all command-blocks."}},{"text":"Create base platform","color":"gray","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Init_Platform_Confirm"},"hoverEvent":{"action":"show_text","value":"Set worldspawn on your position and create a platform to put all command-blocks."}}]
tellraw @s ["",{"text":"\n      > ","color":"red","clickEvent":{"action":"open_url","value":"http://minecraft.tools"},"hoverEvent":{"action":"show_text","value":"Go to minecraft.tools to see all generators (tellraw, signs, summon, banner and many other !)"}},{"text":"Generators","color":"gray","clickEvent":{"action":"open_url","value":"http://minecraft.tools"},"hoverEvent":{"action":"show_text","value":"Go to minecraft.tools to see all generators (tellraw, signs, summon, banner and many other !)"}}]



tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]

execute as @s[tag=Glib_Init_Examples] at @s run function gunivers-lib:utils/init/creator/examples

execute as @s[tag=Glib_Init_Platform_Confirm] at @s run function gunivers-lib:utils/init/creator/generate_base_confirm