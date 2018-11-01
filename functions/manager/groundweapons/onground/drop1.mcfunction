# Ground Weapons / Drop 1st Weapon

# Summons the dropped weapon
summon armor_stand ~ ~ ~ {Invisible:1,Tags:["CanBeAlive","Dropped1stWeapon","InitDropped"],Marker:1,DisabledSlots:2039583,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b},{}]}

# Transfers the informations of the weapon
scoreboard players operation @e[tag=InitDropped] 1stWeapon = @s 1stWeapon
scoreboard players operation @e[tag=InitDropped] 1stReloadTime = @s 1stReloadTime
scoreboard players operation @e[tag=InitDropped] 1stFirerate = @s 1stFirerate
scoreboard players operation @e[tag=InitDropped] 1stLoadCapacity = @s 1stLoadCapacity
scoreboard players operation @e[tag=InitDropped] 1stWeaponDamage = @s 1stWeaponDamage
scoreboard players operation @e[tag=InitDropped] 1stHeadDamage = @s 1stHeadDamage
scoreboard players operation @e[tag=InitDropped] 1stGlib_groundWeapon_Inaccuracy = @s 1stGlib_groundWeapon_Inaccuracy
scoreboard players operation @e[tag=InitDropped] 1stRecoil = @s 1stRecoil
scoreboard players operation @e[tag=InitDropped] 1stAmo = @s 1stAmo
scoreboard players operation @e[tag=InitDropped] 1stAmo += @s 1stAmoLoaded

# Resets the scores on the player
scoreboard players set @s 1stAmo 0
scoreboard players set @s 1stAmoLoaded 0
scoreboard players set @s 1stWeapon 0

tag @e remove InitDropped