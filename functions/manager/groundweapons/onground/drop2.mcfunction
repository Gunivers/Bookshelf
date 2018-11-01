# Ground Weapons / Drop 2nd Weapon

# Summons the dropped weapon
summon armor_stand ~ ~ ~ {Invisible:1,Tags:["CanBeAlive","Dropped2ndWeapon","InitDropped"],Marker:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b},{}]}

# Transfers the informations of the weapon
scoreboard players operation @e[tag=InitDropped] 2ndWeapon = @s 2ndWeapon
scoreboard players operation @e[tag=InitDropped] 2ndReloadTime = @s 2ndReloadTime
scoreboard players operation @e[tag=InitDropped] 2ndFirerate = @s 2ndFirerate
scoreboard players operation @e[tag=InitDropped] 2ndLoadCapacity = @s 2ndLoadCapacity
scoreboard players operation @e[tag=InitDropped] 2ndWeaponDamage = @s 2ndWeaponDamage
scoreboard players operation @e[tag=InitDropped] 2ndHeadDamage = @s 2ndHeadDamage
scoreboard players operation @e[tag=InitDropped] 2ndGlib_groundWeapon_Inaccuracy = @s 2ndGlib_groundWeapon_Inaccuracy
scoreboard players operation @e[tag=InitDropped] 2ndRecoil = @s 2ndRecoil
scoreboard players operation @e[tag=InitDropped] 2ndAmo = @s 2ndAmo
scoreboard players operation @e[tag=InitDropped] 2ndAmo += @s 2ndAmoLoaded

# Resets the scores on the player
scoreboard players set @s 2ndAmo 0
scoreboard players set @s 2ndAmoLoaded 0
scoreboard players set @s 2ndWeapon 0

tag @e remove InitDropped