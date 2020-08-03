tag @s add glib.collisionY

execute if block ~ ~-1 ~ air run tag @s remove glib.collisionY

tag @s[tag=glib.collisionY] add glib.collision

# DEBUG
#execute at @s[tag=glib.collisionY,tag=Debug] run summon falling_block ~ ~-0.5 ~0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
