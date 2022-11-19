tag @s add bs.collisionY

#Detection
execute at @s[scores={VectorY=1..}] if block ~ ~0.5 ~ #bs.move:pass_through run tag @s remove bs.collisionY
execute at @s[scores={VectorY=..1}] if block ~ ~-0.5 ~ #bs.move:pass_through run tag @s remove bs.collisionY
tag @s[scores={VectorY=0}] remove bs.collisionY

#DEBUG
execute at @s[tag=bs.collisionY,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
