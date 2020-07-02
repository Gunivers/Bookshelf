execute if score @s BlockId matches 3111 run setblock ~ ~ ~ comparator[facing=north,mode=subtract,powered=false]
execute if score @s BlockId matches 3112 run setblock ~ ~ ~ comparator[facing=south,mode=compare,powered=true]
execute if score @s BlockId matches 3113 run setblock ~ ~ ~ comparator[facing=south,mode=compare,powered=false]