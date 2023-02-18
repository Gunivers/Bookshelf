tag @s add bs.collisionX

#Detection
execute at @s[scores={VectorX=1..}] if block ~0.5 ~ ~ #bs.move:pass_through run tag @s remove bs.collisionX
execute at @s[scores={VectorX=..1}] if block ~-0.5 ~ ~ #bs.move:pass_through run tag @s remove bs.collisionX
tag @s[scores={VectorX=0}] remove bs.collisionX

#DEBUG
execute at @s[tag=bs.collisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["bs","Debug"]}
# END DEBUG
