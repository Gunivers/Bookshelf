tag @s add bs.move.collisionZ

execute if block ~ ~ ~1 #bs.move:pass_through run tag @s remove bs.move.collisionZ

tag @s[tag=bs.move.collisionZ] add bs.move.collision

# DEBUG
#execute at @s[tag=bs.move.collisionZ,tag=Debug] run summon falling_block ~-0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["bs","Debug"]}
# END DEBUG
