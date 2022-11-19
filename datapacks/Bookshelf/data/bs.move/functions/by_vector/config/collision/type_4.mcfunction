# Rebound with speed / 2

# bs.collision on X
scoreboard players operation @s[tag=bs.collisionX] bs.vectorX *= -1 bs.const
scoreboard players operation @s[tag=bs.collisionX] bs.vectorX /= 2 bs.const

# bs.collision on Y
scoreboard players operation @s[tag=bs.collisionY] bs.vectorY *= -1 bs.const
scoreboard players operation @s[tag=bs.collisionY] bs.vectorY /= 2 bs.const

# bs.collision on Z
scoreboard players operation @s[tag=bs.collisionZ] bs.vectorZ *= -1 bs.const
scoreboard players operation @s[tag=bs.collisionZ] bs.vectorZ /= 2 bs.const
