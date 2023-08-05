tag @s add bs.move.collisionY

#Detection
execute at @s[scores={VectorY=1..}] if block ~ ~0.5 ~ #bs.move:pass_through run tag @s remove bs.move.collisionY
execute at @s[scores={VectorY=..1}] if block ~ ~-0.5 ~ #bs.move:pass_through run tag @s remove bs.move.collisionY
tag @s[scores={VectorY=0}] remove bs.move.collisionY

#DEBUG
execute at @s[tag=bs.move.collisionY,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["bs","Debug"]}
# END DEBUG
