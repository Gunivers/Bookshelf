#System: Projectile Manager

#Author: KubbyDev

# Bullets / Collide Glass

# When a bullets touches an glass block, it will have 1/5 chances to break it. But the glass is always touched twice because the collisions are calculated every half block
# So if each collisions has 1/5 chances to break the glass, the 2 collisions will have 1/3 chances to break it (Bernoulli's law)

# Get a random number between 1 and 5
execute as @e[tag=BulletCollisions,tag=CollideGlass] run scoreboard players operation @s Random = @e[tag=Random,scores={Random=1..5},limit=1,sort=random] Random

# Makes a particle and a sound effect
execute as @e[tag=CollideGlass] at @s run playsound minecraft:block.glass.break ambient @a[distance=..50] ~ ~ ~ 0.7 0.8
execute as @e[tag=CollideGlass] at @s run particle minecraft:block glass ~ ~ ~ 0 0 0 0.1 10 force

# If the number is 1 then breaks the glass
execute as @e[tag=BulletCollisions,tag=CollideGlass,scores={Random=1}] at @s run setblock ~ ~ ~ minecraft:air destroy
execute as @e[tag=ShellCollisions,tag=CollideGlass] at @s run setblock ~ ~ ~ minecraft:air destroy

tag @e[tag=CollideGlass] remove ProjCollide 
tag @e remove CollideGlass