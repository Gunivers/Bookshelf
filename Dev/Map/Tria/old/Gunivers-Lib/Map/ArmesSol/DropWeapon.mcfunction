#Crée un armorstand au sol avec l'arme que le joueur a en main
execute @s[score_HoldItem_min=1,score_HoldItem=1,score_1stWeapon_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1,Tags:[CanBeAlive,W1JustDropped],CustomName:"FloorItem",Marker:1,HandItems:[{id:"carrot_on_a_stick",Count:1b},{}]}
execute @s[score_HoldItem_min=2,score_HoldItem=2,score_2ndWeapon_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1,Tags:[CanBeAlive,W2JustDropped],CustomName:"FloorItem",Marker:1,HandItems:[{id:"carrot_on_a_stick",Count:1b},{}]}
execute @s[score_HoldItem_min=1,score_HoldItem=1,score_1stWeapon_min=1] ~ ~ ~ scoreboard players operation @e[name=FloorItem,tag=W1JustDropped,r=1,c=1] FloorItem = @s 1stWeapon
execute @s[score_HoldItem_min=2,score_HoldItem=2,score_2ndWeapon_min=1] ~ ~ ~ scoreboard players operation @e[name=FloorItem,tag=W2JustDropped,r=1,c=1] FloorItem = @s 2ndWeapon
execute @s[score_HoldItem_min=2,score_HoldItem=2,score_2ndWeapon_min=1] ~ ~ ~ scoreboard players add @e[name=FloorItem,tag=W2JustDropped,r=1,c=1] FloorItem 100
execute @s[score_HoldItem_min=1,score_HoldItem=1,score_1stWeapon_min=1] ~ ~ ~ scoreboard players operation @s 1stAmo += @s 1stAmoLoaded
execute @s[score_HoldItem_min=2,score_HoldItem=2,score_2ndWeapon_min=1] ~ ~ ~ scoreboard players operation @s 2ndAmo += @s 2ndAmoLoaded
execute @s[score_HoldItem_min=1,score_HoldItem=1,score_1stWeapon_min=1] ~ ~ ~ scoreboard players operation @e[name=FloorItem,tag=W1JustDropped,r=1,c=1] FloorAmo = @s 1stAmo
execute @s[score_HoldItem_min=2,score_HoldItem=2,score_2ndWeapon_min=1] ~ ~ ~ scoreboard players operation @e[name=FloorItem,tag=W2JustDropped,r=1,c=1] FloorAmo = @s 2ndAmo
scoreboard players set @s[score_HoldItem_min=1,score_HoldItem=1,score_1stWeapon_min=1] 1stAmo 0
scoreboard players set @s[score_HoldItem_min=1,score_HoldItem=1,score_1stWeapon_min=1] 1stAmoLoaded 0
scoreboard players set @s[score_HoldItem_min=2,score_HoldItem=2,score_2ndWeapon_min=1] 2ndAmo 0
scoreboard players set @s[score_HoldItem_min=2,score_HoldItem=2,score_2ndWeapon_min=1] 2ndAmoLoaded 0
scoreboard players set @s[score_HoldItem_min=1,score_HoldItem=1,score_1stWeapon_min=1] 1stWeapon 0
scoreboard players set @s[score_HoldItem_min=2,score_HoldItem=2,score_2ndWeapon_min=1] 2ndWeapon 0
