tag @s add bs.move.collisionX

execute if block ~-1 ~ ~ #bs.move:pass_through run tag @s remove bs.move.collisionX

tag @s[tag=bs.move.collisionX] add bs.move.collision

# DEBUG
#execute at @s[tag=bs.move.collisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["bs","Debug"]}
# END DEBUG
