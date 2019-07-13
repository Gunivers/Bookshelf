

scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] Var1 = @s Glib_L_LocX
scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] Var2 = @s Glib_L_LocY
scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] Var3 = @s Glib_L_LocZ

# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Init_Menu] run function gunivers-lib:utils/debug/entity/move/by_local_vector/1
# -----

scoreboard players set @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] Var4 0

tag @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] remove FactorIncrease
tag @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest,scores={Var1=1001..}] add FactorIncrease
tag @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest,scores={Var2=1001..}] add FactorIncrease
tag @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest,scores={Var3=1001..}] add FactorIncrease
tag @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest,scores={Var1=..-1001}] add FactorIncrease
tag @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest,scores={Var2=..-1001}] add FactorIncrease
tag @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest,scores={Var3=..-1001}] add FactorIncrease
scoreboard players add @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest,tag=FactorIncrease] Var4 1


# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Init_Menu] run function gunivers-lib:utils/debug/entity/move/by_local_vector/2
# -----

execute if entity @s[tag=FactorIncrease] run function gunivers-lib:entity/move/child/by_local_vector/loop1

scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest,scores={Var4=1..}] Var7 = @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] Var1
scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest,scores={Var4=1..}] Var8 = @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] Var2
scoreboard players operation @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest,scores={Var4=1..}] Var9 = @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] Var3

execute as @e[tag=Glib_Link_Keep_Local_Location,limit=1,sort=nearest] at @s function gunivers-lib:entity/move/child/by_local_vector/loop2