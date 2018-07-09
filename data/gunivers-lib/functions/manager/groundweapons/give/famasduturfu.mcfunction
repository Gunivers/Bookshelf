# Give FAMAS du turfu
# Gives a weapon to the source entity

# Weapon ID
scoreboard players set @s 1stWeapon 1

# Firerate and reload time
scoreboard players set @s 1stFirerate 1
scoreboard players set @s 1stReloadTime 60

# Loader Size
scoreboard players set @s 1stLoadCapacity 25

# Bullets Damages (20 = one heart)
scoreboard players set @s 1stWeaponDamage 50
scoreboard players set @s 1stHeadDamage 90

# Inaccuracy of the weapon. The higher this number is, the higher the spread of the bullets will be (The maximum shift if 0.04 * Glib_groundWeapon_Inaccuracy degrees)
scoreboard players set @s 1stGlib_groundWeapon_Inaccuracy 15

# Recoil of the weapon (in 10th of degrees)
scoreboard players set @s 1stRecoil 10

# Other
scoreboard players set @s 1stAmoLoaded 0
scoreboard players add @s 1stCdShoot 0
scoreboard players add @s 1stReloading 0
