# Ground Weapons / Pickup 2nd Weapon

# Summons the dropped weapon
tag @e[tag=Dropped2ndWeapon,distance=..2,limit=1,sort=nearest] add PickupWeapon

# Transfers the informations of the weapon on the player
scoreboard players operation @s 2ndWeapon = @e[tag=PickupWeapon] 2ndWeapon
scoreboard players operation @s 2ndReloadTime = @e[tag=PickupWeapon] 2ndReloadTime
scoreboard players operation @s 2ndFirerate = @e[tag=PickupWeapon] 2ndFirerate
scoreboard players operation @s 2ndLoadCapacity = @e[tag=PickupWeapon] 2ndLoadCapacity
scoreboard players operation @s 2ndWeaponDamage = @e[tag=PickupWeapon] 2ndWeaponDamage
scoreboard players operation @s 2ndHeadDamage = @e[tag=PickupWeapon] 2ndHeadDamage
scoreboard players operation @s 2ndGlib_groundWeapon_Inaccuracy = @e[tag=PickupWeapon] 2ndGlib_groundWeapon_Inaccuracy
scoreboard players operation @s 2ndRecoil = @e[tag=PickupWeapon] 2ndRecoil
scoreboard players operation @s 2ndAmo = @e[tag=PickupWeapon] 2ndAmo

kill @e[tag=PickupWeapon]