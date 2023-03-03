# Rebound with speed / 2

# bs.collision on X
scoreboard players operation @s[tag=bs.collisionX] bs.vector.x *= -1 bs.const
scoreboard players operation @s[tag=bs.collision] bs.vector.x /= 2 bs.const

# bs.collision on Y
scoreboard players operation @s[tag=bs.collisionY] bs.vector.y *= -1 bs.const
scoreboard players operation @s[tag=bs.collision] bs.vector.y /= 2 bs.const

# bs.collision on Z
scoreboard players operation @s[tag=bs.collisionZ] bs.vector.z *= -1 bs.const
scoreboard players operation @s[tag=bs.collision] bs.vector.z /= 2 bs.const
