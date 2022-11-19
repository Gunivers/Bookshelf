tag @s add bs.collisionX

execute if block ~1 ~ ~ #bs.move:pass_through run tag @s remove bs.collisionX

tag @s[tag=bs.collisionX] add bs.collision

# DEBUG
#execute at @s[tag=bs.collisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
