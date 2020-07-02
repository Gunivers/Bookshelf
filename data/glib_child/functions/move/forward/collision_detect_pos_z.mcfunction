tag @s add CollisionLocalZ

execute if block ~ ~ ~1 air run tag @s remove CollisionLocalZ

tag @s[tag=CollisionLocalZ] add CollisionLocal

# DEBUG
#execute at @s[tag=CollisionZ,tag=Debug] run summon falling_block ~-0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
