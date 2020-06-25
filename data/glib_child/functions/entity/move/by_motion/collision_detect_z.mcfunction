tag @s add CollisionZ

#Detection
execute at @s[scores={VectorZ=1..}] if block ~ ~ ~0.5 #glib_child:entity/move/by_vector/ignore_hitbox run tag @s remove CollisionZ
execute at @s[scores={VectorZ=..1}] if block ~ ~ ~-0.5 #glib_child:entity/move/by_vector/ignore_hitbox run tag @s remove CollisionZ
tag @s[scores={VectorZ=0}] remove CollisionZ

#DEBUG
execute at @s[tag=CollisionZ,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
