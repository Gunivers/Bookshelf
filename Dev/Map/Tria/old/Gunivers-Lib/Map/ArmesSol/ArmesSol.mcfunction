# Detection du slot utilisé
# Blocage de l'arme principal (En attente de Revive)
# Récupération des Armes au sol
# Drop des armes
# Tir et Rechargement
# Items en hotbar
# Affichage
# Degats des balles

#Detection du slot utilisé
function Gunivers-Lib:Map/Tools/GetHoldItem if @a[score_InVehicle=0,score_Id_min=1,score_Id=5]

#Detection de l'utilisation de la OffHand
function Gunivers-Lib:Map/Tools/GetUseOffHand if @a[score_InVehicle=0,score_Id_min=1,score_Id=5]

#Blocage de l'arme principal (En attente de Revive)
scoreboard players set @a[tag=Lock1st] Reloading1st 10
scoreboard players tag @a[tag=Unlock1st] remove Lock1st
scoreboard players set @a[tag=Unlock1st] Reloading1st 0
scoreboard players tag @a remove Unlock1st

#Passer un item en OffHand pour prendre l'arme au sol la plus proche et ses munitions (Passe dans le bon slot)
scoreboard players set @a FloorItem 0
execute @a[score_UseOffHand_min=1] ~ ~ ~ function Gunivers-Lib:Map/ArmesSol/PickupWeapon
function Gunivers-Lib:Map/ArmesSol/TailleChargeur if @a[score_FloorItem_min=1]

#Drop des armes
execute @a[score_Drop_min=1,score_HoldItem_min=1,score_HoldItem=2,score_InVehicle=0,score_Id_min=1,score_Id=5] ~ ~ ~ function Gunivers-Lib:Map/ArmesSol/DropWeapon

#Demande un Tir
scoreboard players tag @a[score_1stAmoLoaded_min=1,score_HoldItem_min=1,score_HoldItem=1,score_UseCarrot_min=1,score_InVehicle=0,score_Reloading1st=0,score_cdShoot1st=0] add Shoot1st
scoreboard players tag @a[score_2ndAmoLoaded_min=1,score_HoldItem_min=2,score_HoldItem=2,score_UseCarrot_min=1,score_InVehicle=0,score_Reloading2nd=0,score_cdShoot2nd=0] add Shoot2nd
function Gunivers-Lib:Map/ArmesSol/Shoot1st if @a[tag=Shoot1st]
function Gunivers-Lib:Map/ArmesSol/Shoot2nd if @a[tag=Shoot2nd]

#Demande un rechargement
scoreboard players add @a Reloading1st 0
scoreboard players add @a Reloading2nd 0
execute @a[score_1stAmoLoaded=0,score_HoldItem_min=1,score_HoldItem=1,score_UseCarrot_min=1,score_InVehicle=0,score_Reloading1st=0,score_1stAmo_min=1] ~ ~ ~ scoreboard players set @s Reloading1st -1
execute @a[score_2ndAmoLoaded=0,score_HoldItem_min=2,score_HoldItem=2,score_UseCarrot_min=1,score_InVehicle=0,score_Reloading2nd=0,score_2ndAmo_min=1] ~ ~ ~ scoreboard players set @s Reloading2nd -1
execute @a[score_Reloading1st=0,score_1stAmo_min=1,score_UseOffHand_min=1,score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=0] ~ ~ ~ scoreboard players set @s Reloading1st -1
execute @a[score_Reloading2nd=0,score_2ndAmo_min=1,score_UseOffHand_min=1,score_HoldItem_min=2,score_HoldItem=2,score_InVehicle=0] ~ ~ ~ scoreboard players set @s Reloading2nd -1

#Lance le temps de rechargement si le chargeur n'est pas plein
execute @a[score_Reloading1st=-1] ~ ~ ~ scoreboard players operation @s Tmp = @s 1stMaxAmo
execute @a[score_Reloading1st=-1] ~ ~ ~ scoreboard players operation @s Tmp -= @s 1stAmoLoaded
scoreboard players set @a[score_Reloading1st=-1,score_1stWeapon_min=1,score_1stWeapon=1,score_Tmp_min=1] Reloading1st 40
scoreboard players set @a[score_Reloading1st=-1,score_1stWeapon_min=2,score_1stWeapon=2,score_Tmp_min=1] Reloading1st 60
scoreboard players set @a[score_Reloading1st=-1,score_1stWeapon_min=3,score_1stWeapon=3,score_Tmp_min=1] Reloading1st 80
execute @a[score_Reloading2nd=-1] ~ ~ ~ scoreboard players operation @s Tmp = @s 2ndMaxAmo
execute @a[score_Reloading2nd=-1] ~ ~ ~ scoreboard players operation @s Tmp -= @s 2ndAmoLoaded
scoreboard players set @a[score_Reloading2nd=-1,score_2ndWeapon_min=1,score_2ndWeapon=1,score_Tmp_min=1] Reloading2nd 30
scoreboard players set @a[score_Reloading2nd=-1,score_2ndWeapon_min=2,score_2ndWeapon=2,score_Tmp_min=1] Reloading2nd 20
scoreboard players set @a[score_Reloading1st=-1] Reloading1st 0
scoreboard players set @a[score_Reloading2nd=-1] Reloading2nd 0

#Met a jour les scores a la fin du temps de rechargement
execute @a[score_Reloading1st_min=1,score_Reloading1st=1,score_HoldItem_min=1,score_HoldItem=1] ~ ~ ~ function Gunivers-Lib:Map/ArmesSol/Reload1st
execute @a[score_Reloading2nd_min=1,score_Reloading2nd=1,score_HoldItem_min=2,score_HoldItem=2] ~ ~ ~ function Gunivers-Lib:Map/ArmesSol/Reload2nd
scoreboard players remove @a[score_Reloading1st_min=1,score_HoldItem_min=1,score_HoldItem=1] Reloading1st 1
scoreboard players remove @a[score_Reloading2nd_min=1,score_HoldItem_min=2,score_HoldItem=2] Reloading2nd 1
scoreboard players set @a[score_1stWeapon=0] Reloading1st 0
scoreboard players set @a[score_2ndWeapon=0] Reloading2nd 0

#Recul des armes
tp @a[score_cdShoot1st_min=1,score_cdShoot1st=1,score_1stWeapon_min=1,score_1stWeapon=1] ~ ~ ~ ~ ~-2 
tp @a[score_cdShoot1st_min=14,score_cdShoot1st=14,score_1stWeapon_min=2,score_1stWeapon=2] ~ ~ ~ ~ ~-6
tp @a[score_cdShoot1st_min=19,score_cdShoot1st=19,score_1stWeapon_min=3,score_1stWeapon=3] ~ ~ ~ ~ ~-4
tp @a[score_cdShoot2nd_min=9,score_cdShoot2nd=9,score_2ndWeapon_min=1,score_2ndWeapon=1] ~ ~ ~ ~ ~-3
tp @a[score_cdShoot2nd_min=2,score_cdShoot2nd=2,score_2ndWeapon_min=2,score_2ndWeapon=2] ~ ~ ~ ~ ~-1

#Timer pour la cadence de tir
scoreboard players remove @a[score_cdShoot1st_min=1] cdShoot1st 1
scoreboard players remove @a[score_cdShoot2nd_min=1] cdShoot2nd 1
scoreboard players add @a cdShoot1st 0
scoreboard players add @a cdShoot2nd 0

#Grenades
function Gunivers-Lib:Map/ArmesSol/Grenade/Grenades if @a[score_Grenade_min=1]
scoreboard players tag @e[tag=Grenade,score_CanBeAlive_min=-1,score_CanBeAlive=-1] add Explode
scoreboard players set @e[tag=Grenade] GravityScale 40

#Items
replaceitem entity @a[score_InVehicle=0,score_Id_min=1,score_Id=5] slot.weapon.offhand air
replaceitem entity @a[score_1stWeapon_min=1,score_1stWeapon=1,score_Id_min=1,score_Id=5,score_InVehicle=0,tag=FRA] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Fusil d'Assault"}}
replaceitem entity @a[score_1stWeapon_min=1,score_1stWeapon=1,score_Id_min=1,score_Id=5,score_InVehicle=0,tag=ENG] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Assault Rifle"}}
replaceitem entity @a[score_1stWeapon_min=2,score_1stWeapon=2,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Sniper"}}
replaceitem entity @a[score_1stWeapon_min=3,score_1stWeapon=3,score_Id_min=1,score_Id=5,score_InVehicle=0,tag=FRA] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Fusil à Pompe"}}
replaceitem entity @a[score_1stWeapon_min=3,score_1stWeapon=3,score_Id_min=1,score_Id=5,score_InVehicle=0,tag=ENG] slot.hotbar.0 carrot_on_a_stick 1 0 {display:{Name:"Shotgun"}}
replaceitem entity @a[score_2ndWeapon_min=1,score_2ndWeapon=1,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.1 carrot_on_a_stick 1 0 {display:{Name:"Desert Eagle"}}
replaceitem entity @a[score_2ndWeapon_min=2,score_2ndWeapon=2,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.1 carrot_on_a_stick 1 0 {display:{Name:"9 mm"}}
replaceitem entity @a[score_1stWeapon=0,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.0 stained_glass_pane 1 15 {display:{Name:""}}
replaceitem entity @a[score_2ndWeapon=0,score_Id_min=1,score_Id=5,score_InVehicle=0] slot.hotbar.1 stained_glass_pane 1 15 {display:{Name:""}}

#Affichage
execute @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=0,score_1stWeapon_min=1,score_Reloading1st=0,score_Id_min=1,score_Id=5] ~ ~ ~ title @s actionbar {"text":"< ","extra":[{"score":{"objective":"1stAmoLoaded","name":"@p"},"bold":"true"},{"text":"/"},{"score":{"objective":"1stMaxAmo","name":"@p"},"bold":"true"},{"text":" > : "},{"score":{"objective":"1stAmo","name":"@p"},"bold":"true"}]}
execute @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=0,score_1stWeapon_min=1,score_Reloading1st_min=1,score_Id_min=1,score_Id=5,tag=FRA] ~ ~ ~ title @s[tag=!Lock1st] actionbar {"text":"Rechargement...","bold":"true"}
execute @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=0,score_1stWeapon_min=1,score_Reloading1st_min=1,score_Id_min=1,score_Id=5,tag=ENG] ~ ~ ~ title @s[tag=!Lock1st] actionbar {"text":"Reloading...","bold":"true"}
execute @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=0,score_1stWeapon_min=1,score_Reloading1st_min=1,score_Id_min=1,score_Id=5,tag=FRA] ~ ~ ~ title @s[tag=Lock1st] actionbar {"text":"Vous ne pouvez pas utiliser cette arme si vous etes au sol !","bold":"true"}
execute @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=0,score_1stWeapon_min=1,score_Reloading1st_min=1,score_Id_min=1,score_Id=5,tag=ENG] ~ ~ ~ title @s[tag=Lock1st] actionbar {"text":"You can't use this while on the ground !","bold":"true"}
execute @a[score_HoldItem_min=2,score_HoldItem=2,score_InVehicle=0,score_2ndWeapon_min=1,score_Reloading2nd=0,score_Id_min=1,score_Id=5] ~ ~ ~ title @s actionbar {"text":"< ","extra":[{"score":{"objective":"2ndAmoLoaded","name":"@p"},"bold":"true"},{"text":"/"},{"score":{"objective":"2ndMaxAmo","name":"@p"},"bold":"true"},{"text":" > : "},{"score":{"objective":"2ndAmo","name":"@p"},"bold":"true"}]}
title @a[score_HoldItem_min=2,score_HoldItem=2,score_InVehicle=0,score_2ndWeapon_min=1,score_Reloading2nd_min=1,score_Id_min=1,score_Id=5,tag=FRA] actionbar {"text":"Rechargement...","bold":"true"}
title @a[score_HoldItem_min=2,score_HoldItem=2,score_InVehicle=0,score_2ndWeapon_min=1,score_Reloading2nd_min=1,score_Id_min=1,score_Id=5,tag=ENG] actionbar {"text":"Reloading...","bold":"true"}
title @a[score_HoldItem_min=1,score_HoldItem=1,score_InVehicle=0,score_Id_min=1,score_Id=5,score_1stWeapon=0] actionbar {"text":""}
title @a[score_HoldItem_min=2,score_HoldItem=2,score_InVehicle=0,score_Id_min=1,score_Id=5,score_2ndWeapon=0] actionbar {"text":""}



