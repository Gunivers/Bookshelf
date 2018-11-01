#System: Projectile Manager

#Author: KubbyDev
#Contributors:
# - A~Z

# Bullets Movement by 0.5. block, with Collisions and Hit detection

# #tria:transparent contains all the blocks bullets should go through
execute as @e[tag=Projectile] at @s unless block ~ ~ ~ #tria:nobulletevent run tag @s add ProjCollide
execute if entity @e[tag=ProjCollide] run function gunivers-lib:manager/projectile/collision

# Damages
execute as @e[tag=Projectile,tag=DealDamages,scores={Team=-1}] at @s positioned ~ ~-0.8 ~ if entity @e[tag=CanBeShot,scores={Team=1},distance=..0.8] run function gunivers-lib:manager/projectile/damage/damage_ally
execute as @e[tag=Projectile,tag=DealDamages,scores={Team=1}] at @s positioned ~ ~-0.8 ~ if entity @e[tag=CanBeShot,scores={Team=-1},distance=..0.8] run function gunivers-lib:manager/projectile/damage/damage_enemy
execute as @e[tag=Projectile,tag=DealDamages,scores={Team=-1}] at @s positioned ~ ~-1.75 ~ if entity @e[tag=CanBeShot,scores={Team=1},distance=..0.4] run function gunivers-lib:manager/projectile/damage/damage_ally_head
execute as @e[tag=Projectile,tag=DealDamages,scores={Team=1}] at @s positioned ~ ~-1.75 ~ if entity @e[tag=CanBeShot,scores={Team=-1},distance=..0.4] run function gunivers-lib:manager/projectile/damage/damage_enemy_head

# Particles
execute as @e[tag=Bullet] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force

# Teleports the projectile forward
execute as @e[tag=Projectile] at @s run tp @s ^ ^ ^0.5


