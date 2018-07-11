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

# Test Id

tellraw @s[tag=Glib_Init_Id_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id"}},{"text":" Id","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id"}}]
tellraw @s[tag=Glib_Init_Id_Warning,tag=!Glib_Init_Id_Ok] ["",{"text":"      ","color":"gray"},{"text":"[!]","color":"gold","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id\n\nWARNING: Data module missing\n -> Double click to fixe it"}},{"text":" Id","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/id"},"hoverEvent":{"action":"show_text","value":"Remove id\n\nWARNING: Data module missing\n -> Double click to fixe it"}}]
tellraw @s[tag=!Glib_Init_Id_Ok,tag=!Glib_Init_Id_Warning] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/id"},"hoverEvent":{"action":"show_text","value":"Import id\n -> Auto import parent: Data"}},{"text":" Id","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/id"},"hoverEvent":{"action":"show_text","value":"Import id\n -> Auto import parent: Data"}}]


# Test Local Vectors

tellraw @s[tag=Glib_Init_Local_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/local_vectors"},"hoverEvent":{"action":"show_text","value":"Remove local vectors"}},{"text":" Local Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/local_vectors"},"hoverEvent":{"action":"show_text","value":"Remove local vectors"}}]
tellraw @s[tag=!Glib_Init_Local_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/local_vectors"},"hoverEvent":{"action":"show_text","value":"Import local vectors"}},{"text":" Local Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/local_vectors"},"hoverEvent":{"action":"show_text","value":"Import local vectors"}}]

# Test Location

tellraw @s[tag=Glib_Init_Location_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/location"},"hoverEvent":{"action":"show_text","value":"Remove location"}},{"text":" Location","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/location"},"hoverEvent":{"action":"show_text","value":"Remove location"}}]
tellraw @s[tag=!Glib_Init_Location_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/location"},"hoverEvent":{"action":"show_text","value":"Import location"}},{"text":" Location","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/location"},"hoverEvent":{"action":"show_text","value":"Import location"}}]

# Test Math

tellraw @s[tag=Glib_Init_Math_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/math"},"hoverEvent":{"action":"show_text","value":"Remove math"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/math"},"hoverEvent":{"action":"show_text","value":"Remove math"}}]
tellraw @s[tag=Glib_Init_Math_Warning,tag=!Glib_Init_Math_Ok] ["",{"text":"      ","color":"gray"},{"text":"[!]","color":"gold","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/math"},"hoverEvent":{"action":"show_text","value":"Remove math\n\nWARNING: Constants or Vars module missing\n -> Double click to fixe it"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/math"},"hoverEvent":{"action":"show_text","value":"Remove math\n\nWARNING: Constants or Vars module missing\n -> Double click to fixe it"}}]
tellraw @s[tag=!Glib_Init_Math_Ok,tag=!Glib_Init_Math_Warning] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/math"},"hoverEvent":{"action":"show_text","value":"Import math\n -> Auto import parent: Constants and Vars"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/math"},"hoverEvent":{"action":"show_text","value":"Import math\n -> Auto import parent: Constants and Vars"}}]


# Test Orientation
tellraw @s[tag=Glib_Init_Orientation_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/orientation"},"hoverEvent":{"action":"show_text","value":"Remove orientation"}},{"text":" Orientation","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/orientation"},"hoverEvent":{"action":"show_text","value":"Remove orientation"}}]
tellraw @s[tag=!Glib_Init_Orientation_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/orientation"},"hoverEvent":{"action":"show_text","value":"Import orientation"}},{"text":" Orientation","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/orientation"},"hoverEvent":{"action":"show_text","value":"Import orientation"}}]



# Pages
tellraw @s ["",{"text":"\n      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Modules_Page_2"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"2/3","color":"gray"},{"text":" "},{"text":"[>]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @p add Glib_Init_Modules_Page_3"},"hoverEvent":{"action":"show_text","value":"Next page"}}]