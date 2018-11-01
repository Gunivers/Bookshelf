# Ground Weapons / Shoot 2
# Shoots with the secondary weapon

# Shoots
tag @s add Shoot

scoreboard players operation @s 2ndCdShoot = @s 2ndFirerate
scoreboard players operation @s WeaponDamage = @s 2ndWeaponDamage
scoreboard players operation @s HeadDamage = @s 2ndHeadDamage
scoreboard players operation @s Glib_groundWeapon_Inaccuracy = @s 2ndGlib_groundWeapon_Inaccuracy

# Recoil
tag @s add Recoil2

# Amo
scoreboard players remove @s 2ndAmoLoaded 1