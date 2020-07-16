tag @s add glib.collisionY

#Detection
execute at @s[scores={VectorY=1..}] if block ~ ~0.5 ~ #glib_child:move/by_vector/ignore_hitbox run tag @s remove glib.collisionY
execute at @s[scores={VectorY=..1}] if block ~ ~-0.5 ~ #glib_child:move/by_vector/ignore_hitbox run tag @s remove glib.collisionY
tag @s[scores={VectorY=0}] remove glib.collisionY

#DEBUG
execute at @s[tag=glib.collisionY,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
