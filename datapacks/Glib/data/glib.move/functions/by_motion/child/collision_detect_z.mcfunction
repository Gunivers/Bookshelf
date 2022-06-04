tag @s add glib.collisionZ

#Detection
execute at @s[scores={VectorZ=1..}] if block ~ ~ ~0.5 #glib.move:by_vector/ignore_hitbox run tag @s remove glib.collisionZ
execute at @s[scores={VectorZ=..1}] if block ~ ~ ~-0.5 #glib.move:by_vector/ignore_hitbox run tag @s remove glib.collisionZ
tag @s[scores={VectorZ=0}] remove glib.collisionZ

#DEBUG
execute at @s[tag=glib.collisionZ,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
