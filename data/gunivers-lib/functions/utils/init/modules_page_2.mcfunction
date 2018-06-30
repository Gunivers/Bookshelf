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


# Test Math
scoreboard players set Glib_Data_Init Res 1
scoreboard players set Glib_Data_Init Constant 1

execute if score Glib_Data_Init Res matches 1 if score Glib_Data_Init Constant matches 1 run tag @s add Glib_Init_Math_Ok
tellraw @s[tag=Glib_Init_Math_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/math"},"hoverEvent":{"action":"show_text","value":"Remove math"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/math"},"hoverEvent":{"action":"show_text","value":"Remove math"}}]
tellraw @s[tag=!Glib_Init_Math_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/math"},"hoverEvent":{"action":"show_text","value":"Import math"}},{"text":" Math","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/math"},"hoverEvent":{"action":"show_text","value":"Import math"}}]
tag @s remove Glib_Init_Math_Ok


# Test Orientation
scoreboard players set Glib_Data_Init OriT 1
scoreboard players set Glib_Data_Init OriP 1

execute if score Glib_Data_Init OriT matches 1 if score Glib_Data_Init OriP matches 1 run tag @s add Glib_Init_Orientation_Ok
tellraw @s[tag=Glib_Init_Orientation_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/orientation"},"hoverEvent":{"action":"show_text","value":"Remove orientation"}},{"text":" Orientation","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/orientation"},"hoverEvent":{"action":"show_text","value":"Remove orientation"}}]
tellraw @s[tag=!Glib_Init_Orientation_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/orientation"},"hoverEvent":{"action":"show_text","value":"Import orientation"}},{"text":" Orientation","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/orientation"},"hoverEvent":{"action":"show_text","value":"Import orientation"}}]
tag @s remove Glib_Init_Orientation_Ok


# Test Vars
scoreboard players set Glib_Data_Init Var1 1
scoreboard players set Glib_Data_Init Var2 1
scoreboard players set Glib_Data_Init Var3 1
scoreboard players set Glib_Data_Init Var4 1
scoreboard players set Glib_Data_Init Var5 1
scoreboard players set Glib_Data_Init Var6 1
scoreboard players set Glib_Data_Init Var7 1
scoreboard players set Glib_Data_Init Var8 1
scoreboard players set Glib_Data_Init Var9 1

execute if score Glib_Data_Init Var1 matches 1 if score Glib_Data_Init Var2 matches 1 if score Glib_Data_Init Var3 matches 1 if score Glib_Data_Init Var4 matches 1 if score Glib_Data_Init Var5 matches 1 if score Glib_Data_Init Var6 matches 1 if score Glib_Data_Init Var7 matches 1 if score Glib_Data_Init Var8 matches 1 if score Glib_Data_Init Var9 matches 1 run tag @s add Glib_Init_Local_Vars_Ok
tellraw @s[tag=Glib_Init_Local_Vars_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vars"},"hoverEvent":{"action":"show_text","value":"Remove vars"}},{"text":" Vars","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vars"},"hoverEvent":{"action":"show_text","value":"Remove vars"}}]
tellraw @s[tag=!Glib_Init_Local_Vars_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vars"},"hoverEvent":{"action":"show_text","value":"Import vars"}},{"text":" Vars","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vars"},"hoverEvent":{"action":"show_text","value":"Import vars"}}]
tag @s remove Glib_Init_Local_Vars_Ok


# Test Vectors
scoreboard players set Glib_Data_Init VectorX 1
scoreboard players set Glib_Data_Init VectorY 1
scoreboard players set Glib_Data_Init VectorZ 1
scoreboard players set Glib_Data_Init VectorSpeed 1

execute if score Glib_Data_Init VectorX matches 1 if score Glib_Data_Init VectorY matches 1 if score Glib_Data_Init VectorZ matches 1 if score Glib_Data_Init VectorSpeed matches 1 run tag @s add Glib_Init_Vectors_Ok
tellraw @s[tag=Glib_Init_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vectors"},"hoverEvent":{"action":"show_text","value":"Remove vectors"}},{"text":" Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/remove/vectors"},"hoverEvent":{"action":"show_text","value":"Remove vectors"}}]
tellraw @s[tag=!Glib_Init_Vectors_Ok] ["",{"text":"      ","color":"gray"},{"text":"[x]","color":"red","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vectors"},"hoverEvent":{"action":"show_text","value":"Import vectors"}},{"text":" Vectors","color":"gray","clickEvent":{"action":"run_command","value":"/function gunivers-lib:utils/import/vectors"},"hoverEvent":{"action":"show_text","value":"Import vectors"}}]
tag @s remove Glib_Init_Vectors_Ok


# End page
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":" "}]

# Pages
tellraw @s ["",{"text":"      [<]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Init_Modules_Page_2"},"hoverEvent":{"action":"show_text","value":"Previous page"}},{"text":" "},{"text":"2/2","color":"gray"},{"text":" "},{"text":"[>]","color":"gray"}]