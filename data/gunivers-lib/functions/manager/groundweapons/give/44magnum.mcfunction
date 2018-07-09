# Give 44. Magnum
# Gives a weapon to the source entity

# Weapon ID
scoreboard players set @s 2ndWeapon 1

# Firerate and reload time
scoreboard players set @s 2ndFirerate 10
scoreboard players set @s 2ndReloadTime 100

# Loader Size
scoreboard players set @s 2ndLoadCapacity 6

# Bullets Damages (20 = one heart)
scoreboard players set @s 2ndWeaponDamage 90
scoreboard players set @s 2ndHeadDamage 180

# Inaccuracy of the weapon. The higher this number is, the higher the spread of the bullets will be (The maximum shift if 0.04 * Glib_groundWeapon_Inaccuracy degrees)
scoreboard players set @s 2ndGlib_groundWeapon_Inaccuracy 10

# Recoil of the weapon (in 10th of degrees)
scoreboard players set @s 2ndRecoil 80

# Other
scoreboard players set @s 2ndAmoLoaded 0
scoreboard players add @s 2ndCdShoot 0
scoreboard players add @s 2ndReloading 0
