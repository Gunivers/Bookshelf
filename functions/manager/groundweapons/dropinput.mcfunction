# Drop Input

# Weapon drop
execute as @a[tag=!LockWeapons,scores={ActiveSlot=0,Drop=1..,InVehicle=0,1stWeapon=1..,1stReloading=0}] at @s run function gunivers-lib:manager/groundweapons/onground/drop1
execute as @a[tag=!LockWeapons,scores={ActiveSlot=1,Drop=1..,InVehicle=0,2ndWeapon=1..,2ndReloading=0}] at @s run function gunivers-lib:manager/groundweapons/onground/drop2
