tag @s add CollisionY

#Detection
execute at @s[scores={VectorY=1..}] if block ~ ~0.5 ~ #glib_child:entity/move/by_vector/ignore_hitbox run tag @s remove CollisionY
execute at @s[scores={VectorY=..1}] if block ~ ~-0.5 ~ #glib_child:entity/move/by_vector/ignore_hitbox run tag @s remove CollisionY
tag @s[scores={VectorY=0}] remove CollisionY

#DEBUG
execute at @s[tag=CollisionY,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
