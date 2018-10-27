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
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# -----------
# Test scores
# -----------
scoreboard players set Glib_Data_Init Data 1

scoreboard players set Glib_Data_Init Var1 1
scoreboard players set Glib_Data_Init Var2 1
scoreboard players set Glib_Data_Init Var3 1
scoreboard players set Glib_Data_Init Var4 1
scoreboard players set Glib_Data_Init Var5 1
scoreboard players set Glib_Data_Init Var6 1
scoreboard players set Glib_Data_Init Var7 1
scoreboard players set Glib_Data_Init Var8 1
scoreboard players set Glib_Data_Init Var9 1

scoreboard players set Glib_Data_Init Constant 1

scoreboard players set Glib_Data_Init Output 1
scoreboard players set Glib_Data_Init Input 1
scoreboard players set Glib_Data_Init Memory 1

scoreboard players set Glib_Data_Init Id 1
scoreboard players set Glib_Data_Init TargetId 1
scoreboard players set Glib_Data_Init ParentId 1

scoreboard players set Glib_Data_Init PathCost 1

scoreboard players set Glib_Data_Init VectorLeft 1
scoreboard players set Glib_Data_Init VectorUp 1
scoreboard players set Glib_Data_Init VectorFront 1
scoreboard players set Glib_Data_Init VectorSpeedLocal 1
scoreboard players set Glib_Data_Init CollisionLocal 1

scoreboard players set Glib_Data_Init LocX 1
scoreboard players set Glib_Data_Init LocY 1
scoreboard players set Glib_Data_Init LocZ 1

scoreboard players set Glib_Data_Init Res 1
scoreboard players set Glib_Data_Init Constant 1

scoreboard players set Glib_Data_Init OriT 1
scoreboard players set Glib_Data_Init OriP 1

scoreboard players set Glib_Data_Init VectorX 1
scoreboard players set Glib_Data_Init VectorY 1
scoreboard players set Glib_Data_Init VectorZ 1
scoreboard players set Glib_Data_Init VectorSpeed 1
scoreboard players set Glib_Data_Init Collision 1

# ---------------------
# Test Module Integrity
# ---------------------

#Data
execute if score Glib_Data_Init Data matches 1 run tag @s add Glib_Init_Data_Ok
#Vars
execute if score Glib_Data_Init Var1 matches 1 if score Glib_Data_Init Var2 matches 1 if score Glib_Data_Init Var3 matches 1 if score Glib_Data_Init Var4 matches 1 if score Glib_Data_Init Var5 matches 1 if score Glib_Data_Init Var6 matches 1 if score Glib_Data_Init Var7 matches 1 if score Glib_Data_Init Var8 matches 1 if score Glib_Data_Init Var9 matches 1 run tag @s add Glib_Init_Vars_Ok
#Constants
execute if score Glib_Data_Init Constant matches 1 run tag @s add Glib_Init_Const_Ok
#Local Bool
execute if score Glib_Data_Init Output matches 1 if score Glib_Data_Init Input matches 1 if score Glib_Data_Init Memory matches 1 run tag @s add Glib_Init_Local_Bool_Ok
#Id
execute if score Glib_Data_Init Id matches 1 if score Glib_Data_Init TargetId matches 1 if score Glib_Data_Init ParentId matches 1 if score Glib_Data_Init Data matches 1 run tag @s add Glib_Init_Id_Ok
execute if score Glib_Data_Init Id matches 1 if score Glib_Data_Init TargetId matches 1 if score Glib_Data_Init ParentId matches 1 run tag @s add Glib_Init_Id_Warning
#Local Vectors
execute if score Glib_Data_Init CollisionLocal matches 1 if score Glib_Data_Init VectorLeft matches 1 if score Glib_Data_Init VectorUp matches 1 if score Glib_Data_Init VectorFront matches 1 if score Glib_Data_Init VectorSpeedLocal matches 1 run tag @s add Glib_Init_Local_Vectors_Ok
#Location
execute if score Glib_Data_Init LocX matches 1 if score Glib_Data_Init LocY matches 1 if score Glib_Data_Init LocZ matches 1 run tag @s add Glib_Init_Location_Ok
#Math
execute if score Glib_Data_Init Res matches 1 if entity @s[tag=Glib_Init_Const_Ok,tag=Glib_Init_Vars_Ok] run tag @s add Glib_Init_Math_Ok
execute if score Glib_Data_Init Res matches 1 if entity @s[tag=!Glib_Init_Const_Ok] run tag @s add Glib_Init_Math_Warning
execute if score Glib_Data_Init Res matches 1 if entity @s[tag=!Glib_Init_Vars_Ok] run tag @s add Glib_Init_Math_Warning
#Orientation
execute if score Glib_Data_Init OriT matches 1 if score Glib_Data_Init OriP matches 1 run tag @s add Glib_Init_Orientation_Ok
#Vectors
execute if score Glib_Data_Init CollisionLocal matches 1 if score Glib_Data_Init VectorX matches 1 if score Glib_Data_Init VectorY matches 1 if score Glib_Data_Init VectorZ matches 1 if score Glib_Data_Init VectorSpeed matches 1 run tag @s add Glib_Init_Vectors_Ok
#Pathfind
execute if score Glib_Data_Init PathCost matches 1 if entity @s[tag=Glib_Init_Vars_Ok] run tag @s add Glib_Init_Pathfind_Ok
execute if score Glib_Data_Init PathCost matches 1 run tag @s add Glib_Init_Pathfind_Warning
