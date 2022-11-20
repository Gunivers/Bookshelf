tag @s add bs.collisionZ

#Detection
execute at @s[scores={VectorZ=1..}] if block ~ ~ ~0.5 #bs.move:pass_through run tag @s remove bs.collisionZ
execute at @s[scores={VectorZ=..1}] if block ~ ~ ~-0.5 #bs.move:pass_through run tag @s remove bs.collisionZ
tag @s[scores={VectorZ=0}] remove bs.collisionZ

# Start Debug
execute at @s[tag=bs.collisionZ,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["bs","Debug"]}
# End Debug
