# Prend l'arme au sol la plus proche (r=1)
scoreboard players operation @s FloorItem = @e[name=FloorItem,type=armor_stand,r=1,c=1] FloorItem
execute @s[score_FloorItem_min=1,score_FloorItem=100] ~ ~ ~ scoreboard players operation @e[name=FloorItem,type=armor_stand,r=1,c=1] FloorItem = @s 1stWeapon
execute @s[score_FloorItem_min=101,score_FloorItem=200] ~ ~ ~ scoreboard players operation @e[name=FloorItem,type=armor_stand,r=1,c=1] FloorItem = @s 2ndWeapon
execute @s[score_FloorItem_min=1,score_FloorItem=100] ~ ~ ~ scoreboard players operation @s 1stWeapon = @s FloorItem
execute @s[score_FloorItem_min=101,score_FloorItem=200] ~ ~ ~ scoreboard players operation @s 2ndWeapon = @s FloorItem
scoreboard players remove @s[score_FloorItem_min=101,score_FloorItem=200] 2ndWeapon 100

# Prend les munitions de l'arme au sol la plus proche (r=1)
scoreboard players operation @s FloorAmo = @e[name=FloorItem,type=armor_stand,r=1,c=1] FloorAmo
execute @s[score_FloorItem_min=1,score_FloorItem=100] ~ ~ ~ scoreboard players operation @s 1stAmo += @s 1stAmoLoaded
execute @s[score_FloorItem_min=101,score_FloorItem=200] ~ ~ ~ scoreboard players operation @s 2ndAmo += @s 2ndAmoLoaded
execute @s[score_FloorItem_min=1,score_FloorItem=100] ~ ~ ~ scoreboard players operation @e[name=FloorItem,r=1,c=1,type=armor_stand] FloorAmo = @s 1stAmo
execute @s[score_FloorItem_min=101,score_FloorItem=200] ~ ~ ~ scoreboard players operation @e[name=FloorItem,r=1,type=armor_stand,c=1] FloorAmo = @s 2ndAmo
execute @s[score_FloorItem_min=1,score_FloorItem=100] ~ ~ ~ scoreboard players operation @s 1stAmo = @s FloorAmo
execute @s[score_FloorItem_min=101,score_FloorItem=200] ~ ~ ~ scoreboard players operation @s 2ndAmo = @s FloorAmo
scoreboard players set @s[score_FloorItem_min=1,score_FloorItem=100] 1stAmoLoaded 0
scoreboard players set @s[score_FloorItem_min=101,score_FloorItem=200] 2ndAmoLoaded 0
kill @e[name=FloorItem,score_FloorItem=0,type=armor_stand]