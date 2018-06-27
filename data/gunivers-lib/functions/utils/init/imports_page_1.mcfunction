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
tellraw @s ["",{"text":"\n   x","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Imports"},"hoverEvent":{"action":"show_text","value":"Exit imports"}},{"text":"   ","color":"gold"},{"text":"G-Lib > Imports","underlined":true,"color":"gold"},{"text":"\n "}]

# All
tellraw @s ["",{"text":"      "},{"text":"[Import All]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/all"},"hoverEvent":{"action":"show_text","value":"Import all modules"}},{"text":"   "},{"text":"[Remove All]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/all"},"hoverEvent":{"action":"show_text","value":"Remove all modules"}}]

# Test Data
scoreboard players set Glib_Data_Init Data 1

execute if score Glib_Data_Init Data matches 1 run tag @s add Glib_Init_Data_Ok
tellraw @s[tag=Glib_Init_Data_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/data"},"hoverEvent":{"action":"show_text","value":"Remove data"}},{"text":" Data","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/data"},"hoverEvent":{"action":"show_text","value":"Remove data"}}]
tellraw @s[tag=!Glib_Init_Data_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/data"},"hoverEvent":{"action":"show_text","value":"Import data"}},{"text":" Data","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/data"},"hoverEvent":{"action":"show_text","value":"Import data"}}]
tag @s remove Glib_Init_Data_Ok

# Test Id
scoreboard players set Glib_Data_Init Id 1

execute if score Glib_Data_Init Id matches 1 if score Glib_Data_Init Data matches 1 run tag @s add Glib_Init_Id_Ok
execute if score Glib_Data_Init Id matches 1 run tag @s add Glib_Init_Id_Warning
tellraw @s[tag=Glib_Init_Id_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id"}},{"text":" Id","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id"}}]
tellraw @s[tag=Glib_Init_Id_Warning,tag=!Glib_Init_Id_Ok] ["",{"text":"      ","color":"gray"},{"text":"[!]","color":"gold","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id\n\nWARNING: Data module missing\n -> Double click to fixe it"}},{"text":" Id","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id\n\nWARNING: Data module missing\n -> Double click to fixe it"}}]
tellraw @s[tag=!Glib_Init_Id_Ok,tag=!Glib_Init_Id_Warning] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/id"},"hoverEvent":{"action":"show_text","value":"Import id\n -> Auto import parent: Data"}},{"text":" Id","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/id"},"hoverEvent":{"action":"show_text","value":"Import id\n -> Auto import parent: Data"}}]
tag @s remove Glib_Init_Id_Ok
tag @s remove Glib_Init_Id_Warning

# Test Local Vectors
scoreboard players set Glib_Data_Init VectorLeft 1
scoreboard players set Glib_Data_Init VectorUp 1
scoreboard players set Glib_Data_Init VectorFront 1
scoreboard players set Glib_Data_Init VectorSpeedLocal 1

execute if score Glib_Data_Init VectorLeft matches 1 if score Glib_Data_Init VectorUp matches 1 if score Glib_Data_Init VectorFront matches 1 if score Glib_Data_Init VectorSpeedLocal matches 1 run tag @s add Glib_Init_Local_Vectors_Ok
tellraw @s[tag=Glib_Init_Local_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/local_vectors"},"hoverEvent":{"action":"show_text","value":"Remove local vectors"}},{"text":" Local Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/local_vectors"},"hoverEvent":{"action":"show_text","value":"Remove local vectors"}}]
tellraw @s[tag=!Glib_Init_Local_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/local_vectors"},"hoverEvent":{"action":"show_text","value":"Import local vectors"}},{"text":" Local Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/local_vectors"},"hoverEvent":{"action":"show_text","value":"Import local vectors"}}]
tag @s remove Glib_Init_Local_Vectors_Ok

# Test Location
scoreboard players set Glib_Data_Init LocX 1
scoreboard players set Glib_Data_Init LocY 1
scoreboard players set Glib_Data_Init LocZ 1

execute if score Glib_Data_Init LocX matches 1 if score Glib_Data_Init LocY matches 1 if score Glib_Data_Init LocZ matches 1 run tag @s add Glib_Init_Location_Ok
tellraw @s[tag=Glib_Init_Location_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/location"},"hoverEvent":{"action":"show_text","value":"Remove location"}},{"text":" Location","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/location"},"hoverEvent":{"action":"show_text","value":"Remove location"}}]
tellraw @s[tag=!Glib_Init_Location_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/location"},"hoverEvent":{"action":"show_text","value":"Import location"}},{"text":" Location","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/location"},"hoverEvent":{"action":"show_text","value":"Import location"}}]
tag @s remove Glib_Init_Location_Ok


# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gray"},{"text":" "},{"text":"1/2","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add Glib_Init_Imports_Page_2"},"hoverEvent":{"action":"show_text","value":"Next page"}}]