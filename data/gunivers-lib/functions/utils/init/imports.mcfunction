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

# Test Vars
execute if score Glib_Data_Init Var1 matches 1 if score Glib_Data_Init Var2 matches 1 if score Glib_Data_Init Var3 matches 1 if score Glib_Data_Init Var4 matches 1 if score Glib_Data_Init Var5 matches 1 if score Glib_Data_Init Var6 matches 1 if score Glib_Data_Init Var7 matches 1 if score Glib_Data_Init Var8 matches 1 if score Glib_Data_Init Var9 matches 1 run tag @s add Glib_Init_Local_Vars_Ok
tellraw @s[tag=Glib_Init_Local_Vars_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vars"},"hoverEvent":{"action":"show_text","value":"Remove vars"}},{"text":" Vars","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vars"},"hoverEvent":{"action":"show_text","value":"Remove vars"}}]
tellraw @s[tag=!Glib_Init_Local_Vars_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vars"},"hoverEvent":{"action":"show_text","value":"Import vars"}},{"text":" Vars","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vars"},"hoverEvent":{"action":"show_text","value":"Import vars"}}]
tag @s remove Glib_Init_Local_Vars_Ok

# Test Math
execute if score Glib_Data_Init Res matches 1 if score Glib_Data_Init Constant matches 1 run tag @s add Glib_Init_Math_Ok
tellraw @s[tag=Glib_Init_Math_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/math"},"hoverEvent":{"action":"show_text","value":"Remove math"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/math"},"hoverEvent":{"action":"show_text","value":"Remove math"}}]
tellraw @s[tag=!Glib_Init_Math_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/math"},"hoverEvent":{"action":"show_text","value":"Import math"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/math"},"hoverEvent":{"action":"show_text","value":"Import math"}}]
tag @s remove Glib_Init_Math_Ok

# Test Normal Vectors
execute if score Glib_Data_Init VectorX matches 1 if score Glib_Data_Init VectorY matches 1 if score Glib_Data_Init VectorZ matches 1 if score Glib_Data_Init VectorSpeed matches 1 run tag @s add Glib_Init_Vectors_Ok
tellraw @s[tag=Glib_Init_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vectors"},"hoverEvent":{"action":"show_text","value":"Remove vectors"}},{"text":" Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vectors"},"hoverEvent":{"action":"show_text","value":"Remove vectors"}}]
tellraw @s[tag=!Glib_Init_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vectors"},"hoverEvent":{"action":"show_text","value":"Import vectors"}},{"text":" Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vectors"},"hoverEvent":{"action":"show_text","value":"Import vectors"}}]
tag @s remove Glib_Init_Vectors_Ok

# Test Local Vectors
execute if score Glib_Data_Init VectorLeft matches 1 if score Glib_Data_Init VectorUp matches 1 if score Glib_Data_Init VectorFront matches 1 if score Glib_Data_Init VectorSpeedLocal matches 1 run tag @s add Glib_Init_Local_Vectors_Ok
tellraw @s[tag=Glib_Init_Local_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/local_vectors"},"hoverEvent":{"action":"show_text","value":"Remove vectors"}},{"text":" Local Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/local_vectors"},"hoverEvent":{"action":"show_text","value":"Remove local vectors"}}]
tellraw @s[tag=!Glib_Init_Local_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/local_vectors"},"hoverEvent":{"action":"show_text","value":"Import vectors"}},{"text":" Local Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/local_vectors"},"hoverEvent":{"action":"show_text","value":"Import local vectors"}}]
tag @s remove Glib_Init_Local_Vectors_Ok


tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]
tellraw @s ["",{"text":"      ","color":"gray"}]