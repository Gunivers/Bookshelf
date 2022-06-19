tag @s add glib.collisionX

#Detection
execute at @s[scores={VectorX=1..}] if block ~0.5 ~ ~ #glib.move:pass_through run tag @s remove glib.collisionX
execute at @s[scores={VectorX=..1}] if block ~-0.5 ~ ~ #glib.move:pass_through run tag @s remove glib.collisionX
tag @s[scores={VectorX=0}] remove glib.collisionX

#DEBUG
execute at @s[tag=glib.collisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG
