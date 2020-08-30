tag @s add glib.collisionX

execute if block ~1 ~ ~ #glib_child:move/by_vector/ignore_hitbox run tag @s remove glib.collisionX

tag @s[tag=glib.collisionX] add glib.collision

# DEBUG
#execute at @s[tag=glib.collisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
