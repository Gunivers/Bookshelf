#System: Projectile Manager

#Author: KubbyDev

# Projectiles / Collide Bars

# When a bullets touches an bars block, it will have 1/5 chances to be killed it. But the bars are always touched twice because the collisions are calculated every half block
# So if each collisions has 1/5 chances to kill the projectile, the 2 collisions will have 1/3 chances to kill it (Bernoulli's law)

# Get a random number between 1 and 5
execute as @e[tag=BulletCollisions,tag=CollideBars] run scoreboard players operation @s Random = @e[tag=Random,scores={Random=1..5},limit=1,sort=random] Random

# If the number is 1 then makes a sound and a particle and kills the bullet
execute as @e[tag=BulletCollisions,tag=CollideBars,scores={Random=1}] at @s run playsound minecraft:block.anvil.place ambient @a[distance=..50] ~ ~ ~ 0.9
execute as @e[tag=BulletCollisions,tag=CollideBars,scores={Random=1}] at @s run particle minecraft:block end_rod ~ ~ ~ 0 0 0 0 10 force
kill @e[tag=BulletCollisions,tag=CollideBars,scores={Random=1}]

tag @e[tag=BulletCollisions,tag=CollideBars] remove ProjCollide 
tag @e remove CollideBars

