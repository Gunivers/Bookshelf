# Shoot Input

# Starts Reload Time
execute as @a[tag=!LockWeapons,scores={ActiveSlot=0,UseCarrot=1..,InVehicle=0,1stWeapon=1..,1stReloading=0,1stCdShoot=0,1stAmoLoaded=0,1stAmo=1..}] run scoreboard players operation @s 1stReloading = @s 1stReloadTime
execute as @a[tag=!LockWeapons,scores={ActiveSlot=1,UseCarrot=1..,InVehicle=0,2ndWeapon=1..,2ndReloading=0,2ndCdShoot=0,2ndAmoLoaded=0,2ndAmo=1..}] run scoreboard players operation @s 2ndReloading = @s 2ndReloadTime

# Shoots
execute as @a[tag=!LockWeapons,scores={ActiveSlot=0,UseCarrot=1..,InVehicle=0,1stWeapon=1..,1stReloading=0,1stCdShoot=0,1stAmoLoaded=1..}] run function gunivers-lib:manager/groundweapons/shooting/shoot1
execute as @a[tag=!LockWeapons,scores={ActiveSlot=1,UseCarrot=1..,InVehicle=0,2ndWeapon=1..,2ndReloading=0,2ndCdShoot=0,2ndAmoLoaded=1..}] run function gunivers-lib:manager/groundweapons/shooting/shoot2

