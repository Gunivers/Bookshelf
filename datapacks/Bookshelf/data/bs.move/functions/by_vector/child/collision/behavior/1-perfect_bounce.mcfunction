
# Perfect bounce --------------------------------------------------------------

# The object will go in the opposite direction with the same speed on the axis it collided with.
scoreboard players operation @s[tag=bs.collision.x] bs.vector.x *= -1 bs.const
scoreboard players operation @s[tag=bs.collision.y] bs.vector.y *= -1 bs.const
scoreboard players operation @s[tag=bs.collision.z] bs.vector.z *= -1 bs.const