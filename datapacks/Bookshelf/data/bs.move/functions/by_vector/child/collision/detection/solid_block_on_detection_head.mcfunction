
# Detect block front ----------------------------------------------------------

execute at @e[tag=bs.collision.detection.head,tag=front] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision

# If collision, detect on which axis ------------------------------------------

execute if entity @s[tag=bs.collision] at @e[tag=bs.collision.detection.head,tag=x] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision.x
execute if entity @s[tag=bs.collision] at @e[tag=bs.collision.detection.head,tag=y] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision.y
execute if entity @s[tag=bs.collision] at @e[tag=bs.collision.detection.head,tag=z] unless block ~ ~ ~ #bs.move:pass_through run tag @s add bs.collision.z
