tag @s add glib.collisionZ

execute if block ~ ~ ~1 #glib_child:move/by_vector/ignore_hitbox run tag @s remove glib.collisionZ

tag @s[tag=glib.collisionZ] add glib.collision

# DEBUG
#execute at @s[tag=glib.collisionZ,tag=Debug] run summon falling_block ~-0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
