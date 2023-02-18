tag @s add bs.collisionY

execute if block ~ ~1 ~ #bs.move:pass_through run tag @s remove bs.collisionY

tag @s[tag=bs.collisionY] add bs.collision

# DEBUG
#execute at @s[tag=bs.collisionY,tag=Debug] run summon falling_block ~ ~-0.5 ~0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["bs","Debug"]}
# END DEBUG
