
# Damped bounce ---------------------------------------------------------------

# The object will bounce but will lose half of it's speed each time it bounces.
scoreboard players operation @s[tag=bs.collision.x] bs.vector.x *= -1 bs.const
scoreboard players operation @s[tag=bs.collision.y] bs.vector.y *= -1 bs.const
scoreboard players operation @s[tag=bs.collision.z] bs.vector.z *= -1 bs.const

scoreboard players operation @s[tag=bs.collision] bs.vector.x /= 2 bs.const
scoreboard players operation @s[tag=bs.collision] bs.vector.y /= 2 bs.const
scoreboard players operation @s[tag=bs.collision] bs.vector.z /= 2 bs.const

