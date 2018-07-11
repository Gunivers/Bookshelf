#System: Projectile Manager

#Author: KubbyDev

# Shoots

# Summons the bullet
execute as @e[tag=Shoot] at @s run summon armor_stand ~ ~ ~ {Tags:["BulletCollisions","DealDamages","Projectile","Bullet","InitBullet","CanBeAlive"],NoGravity:1,Marker:1,Invisible:1}
execute if entity @e[tag=ShootShotgun] run function gunivers-lib:manager/projectile/bullets/shootshotgun

# Teleports it to the shooter
execute as @e[tag=InitBullet] at @s run tp @s @e[tag=Shoot,distance=..0.1,limit=1,sort=nearest]

# Informations transfert
execute as @e[tag=InitBullet] at @s run scoreboard players operation @s Damage = @e[tag=Shoot,distance=..0.1,limit=1,sort=nearest] WeaponDamage
execute as @e[tag=InitBullet] at @s run scoreboard players operation @s HeadDamage = @e[tag=Shoot,distance=..0.1,limit=1,sort=nearest] HeadDamage
execute as @e[tag=InitBullet] at @s run scoreboard players operation @s ID = @e[tag=Shoot,distance=..0.1,limit=1,sort=nearest] ID
execute as @e[tag=InitBullet] at @s run scoreboard players operation @s Team = @e[tag=Shoot,distance=..0.1,limit=1,sort=nearest] Team
execute as @e[tag=InitBullet] at @s run scoreboard players operation @s Glib_projectile_Inaccuracy = @e[tag=Shoot,distance=..0.1,limit=1,sort=nearest] Glib_projectile_Inaccuracy

# Lives 2 seconds
scoreboard players set @e[tag=InitBullet] CanBeAlive -40 

# Speed = 3 blocks / tick
scoreboard players set @e[tag=InitBullet] ProjectileSpeed 6

# Teleports the bullet to the height of the head of the shooter
execute as @e[tag=InitBullet] at @s run tp @s ~ ~1.65 ~

# Sound effect
execute at @e[tag=Shoot] positioned ^ ^ ^1 run playsound minecraft:entity.firework_rocket.blast_far ambient @a[distance=..50] ~ ~ ~ 4

# Recoil
execute if entity @a[tag=Recoil1] run function gunivers-lib:manager/groundweapons/shooting/recoil1
execute if entity @a[tag=Recoil2] run function gunivers-lib:manager/groundweapons/shooting/recoil2

tag @e remove InitBullet
tag @e remove Shoot