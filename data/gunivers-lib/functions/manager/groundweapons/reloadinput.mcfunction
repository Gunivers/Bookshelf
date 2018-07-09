# Reload Input

# Starts Reload Time
execute as @a[tag=!LockWeapons,tag=UseOffHand,scores={ActiveSlot=0,InVehicle=0,1stReloading=0,1stAmo=1..,1stWeapon=1..}] unless score @s 1stAmoLoaded = @s 1stLoadCapacity run scoreboard players operation @s 1stReloading = @s 1stReloadTime
execute as @a[tag=!LockWeapons,tag=UseOffHand,scores={ActiveSlot=1,InVehicle=0,2ndReloading=0,2ndAmo=1..,2ndWeapon=1..}] unless score @s 2ndAmoLoaded = @s 2ndLoadCapacity run scoreboard players operation @s 2ndReloading = @s 2ndReloadTime

# Weapon pickup
execute as @a[tag=!LockWeapons,tag=UseOffHand,scores={ActiveSlot=0,InVehicle=0,1stWeapon=0,1stReloading=0}] at @s run function gunivers-lib:manager/groundweapons/onground/pickup1
execute as @a[tag=!LockWeapons,tag=UseOffHand,scores={ActiveSlot=1,InVehicle=0,2ndWeapon=0,2ndReloading=0}] at @s run function gunivers-lib:manager/groundweapons/onground/pickup2
