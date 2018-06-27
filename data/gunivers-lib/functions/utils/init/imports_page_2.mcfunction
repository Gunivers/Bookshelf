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

# Test Data
execute if score Glib_Data_Init Data matches 1 run tag @s add Glib_Init_Data_Ok
tellraw @s[tag=Glib_Init_Data_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/data"},"hoverEvent":{"action":"show_text","value":"Remove data"}},{"text":" Data","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/data"},"hoverEvent":{"action":"show_text","value":"Remove data"}}]
tellraw @s[tag=!Glib_Init_Data_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/data"},"hoverEvent":{"action":"show_text","value":"Import data"}},{"text":" Data","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/data"},"hoverEvent":{"action":"show_text","value":"Import data"}}]
tag @s remove Glib_Init_Data_Ok

# Test Id
execute if score Glib_Data_Init Id matches 1 if score Glib_Data_Init Data matches 1 run tag @s add Glib_Init_Id_Ok
execute if score Glib_Data_Init Id matches 1 run tag @s add Glib_Init_Id_Warning
tellraw @s[tag=Glib_Init_Id_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id"}},{"text":" Id","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id"}}]
tellraw @s[tag=Glib_Init_Id_Warning,tag=!Glib_Init_Id_Ok] ["",{"text":"      ","color":"gray"},{"text":"[!]","color":"gold","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id\n\nWARNING: Data module missing\n -> Double click to fixe it"}},{"text":" Id","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id"}}]
tellraw @s[tag=!Glib_Init_Id_Ok,tag=!Glib_Init_Id_Warning] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/id"},"hoverEvent":{"action":"show_text","value":"Import id"}},{"text":" Id","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/id"},"hoverEvent":{"action":"show_text","value":"Import id"}}]
tag @s remove Glib_Init_Id_Ok
tag @s remove Glib_Init_Id_Warning

# Test Location
execute if score Glib_Data_Init LocX matches 1 if score Glib_Data_Init LocY matches 1 if score Glib_Data_Init LocZ matches 1 run tag @s add Glib_Init_Location_Ok
tellraw @s[tag=Glib_Init_Location_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/location"},"hoverEvent":{"action":"show_text","value":"Remove location"}},{"text":" Location","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/location"},"hoverEvent":{"action":"show_text","value":"Remove location"}}]
tellraw @s[tag=!Glib_Init_Location_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/location"},"hoverEvent":{"action":"show_text","value":"Import location"}},{"text":" Location","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/location"},"hoverEvent":{"action":"show_text","value":"Import location"}}]
tag @s remove Glib_Init_Location_Ok

# Test Orientation
execute if score Glib_Data_Init OriT matches 1 if score Glib_Data_Init OriP matches 1 run tag @s add Glib_Init_Orientation_Ok
tellraw @s[tag=Glib_Init_Orientation_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/orientation"},"hoverEvent":{"action":"show_text","value":"Remove orientation"}},{"text":" Orientation","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/orientation"},"hoverEvent":{"action":"show_text","value":"Remove orientation"}}]
tellraw @s[tag=!Glib_Init_Orientation_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/orientation"},"hoverEvent":{"action":"show_text","value":"Import orientation"}},{"text":" Orientation","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/orientation"},"hoverEvent":{"action":"show_text","value":"Import orientation"}}]
tag @s remove Glib_Init_Orientation_Ok

tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]

tellraw @s ["",{"text":"      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Imports_Page_2"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"2/2","color":"gray"},{"text":" "},{"text":"[>]","color":"gray"}]