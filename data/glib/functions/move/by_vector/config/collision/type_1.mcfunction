# Rebound

tellraw @a ["",{"text":"   | Collision Reaction"}]
execute as @s[tag=glib.collisionX] run tellraw @a ["",{"text":"   | Collision Reaction X"}]

# glib.collision on X
scoreboard players operation @s[tag=glib.collisionX] glib.vectorX *= -1 glib.const

# glib.collision on Y
scoreboard players operation @s[tag=glib.collisionY] glib.vectorY *= -1 glib.const

# glib.collision on Z
scoreboard players operation @s[tag=glib.collisionZ] glib.vectorZ *= -1 glib.const
