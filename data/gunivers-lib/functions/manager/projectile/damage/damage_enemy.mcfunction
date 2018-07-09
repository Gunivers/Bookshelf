#System: Projectile Manager

#Author: KubbyDev

# Bullets Hits

# Finds the target
tag @e[tag=CanBeShot,scores={Team=-1},distance=..0.8,limit=1,sort=nearest] add BulletTarget

# Damage
scoreboard players operation @e[tag=BulletTarget,limit=1] Health -= @s Damage

# Sound and particle
execute at @s run particle minecraft:block redstone_block ~ ~1 ~ 0.1 0.1 0.1 0.2 20 force
playsound minecraft:entity.villager.hurt ambient @a[distance=..8] ~ ~1 ~ 0.2

# Kills the bullet or adds the tag
kill @s[tag=!GoThroughEntities]
tag @s[tag=GoThroughEntities] add HasHitEntity

tag @e remove BulletTarget