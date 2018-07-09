# Ground Weapons / Pickup 1st Weapon

# Summons the dropped weapon
tag @e[tag=Dropped1stWeapon,distance=..2,limit=1,sort=nearest] add PickupWeapon

# Transfers the informations of the weapon on the player
scoreboard players operation @s 1stWeapon = @e[tag=PickupWeapon] 1stWeapon
scoreboard players operation @s 1stReloadTime = @e[tag=PickupWeapon] 1stReloadTime
scoreboard players operation @s 1stFirerate = @e[tag=PickupWeapon] 1stFirerate
scoreboard players operation @s 1stLoadCapacity = @e[tag=PickupWeapon] 1stLoadCapacity
scoreboard players operation @s 1stWeaponDamage = @e[tag=PickupWeapon] 1stWeaponDamage
scoreboard players operation @s 1stHeadDamage = @e[tag=PickupWeapon] 1stHeadDamage
scoreboard players operation @s 1stGlib_groundWeapon_Inaccuracy = @e[tag=PickupWeapon] 1stGlib_groundWeapon_Inaccuracy
scoreboard players operation @s 1stRecoil = @e[tag=PickupWeapon] 1stRecoil
scoreboard players operation @s 1stAmo = @e[tag=PickupWeapon] 1stAmo

kill @e[tag=PickupWeapon]