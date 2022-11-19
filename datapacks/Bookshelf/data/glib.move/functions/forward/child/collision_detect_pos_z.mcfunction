tag @s add bs.collisionZ

execute if block ~ ~ ~1 #bs.move:pass_through run tag @s remove bs.collisionZ

tag @s[tag=bs.collisionZ] add bs.collision

# DEBUG
#execute at @s[tag=bs.collisionZ,tag=Debug] run summon falling_block ~-0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
