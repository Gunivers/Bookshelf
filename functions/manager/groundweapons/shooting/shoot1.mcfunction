# Ground Weapons / Shoot 1
# Shoots with the main weapon

# Shoots
tag @s add Shoot
tag @s[scores={1stWeapon=2}] add ShootShotgun

scoreboard players operation @s 1stCdShoot = @s 1stFirerate
scoreboard players operation @s WeaponDamage = @s 1stWeaponDamage
scoreboard players operation @s HeadDamage = @s 1stHeadDamage
scoreboard players operation @s Glib_groundWeapon_Inaccuracy = @s 1stGlib_groundWeapon_Inaccuracy

# Recoil
tag @s add Recoil1

# Amo
scoreboard players remove @s 1stAmoLoaded 1