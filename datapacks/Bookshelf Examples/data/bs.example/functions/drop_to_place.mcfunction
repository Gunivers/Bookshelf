execute as @e[type=item,tag=!bs.example.WalkTrail] at @s unless block ~-0.5 ~ ~ air run tag @s add bs.example.drop_to_place
execute as @e[type=item,tag=!bs.example.WalkTrail] at @s unless block ~0.5 ~ ~ air run tag @s add bs.example.drop_to_place
execute as @e[type=item,tag=!bs.example.WalkTrail] at @s unless block ~ ~-0.1 ~ air run tag @s add bs.example.drop_to_place
execute as @e[type=item,tag=!bs.example.WalkTrail] at @s unless block ~ ~0.7 ~ air run tag @s add bs.example.drop_to_place
execute as @e[type=item,tag=!bs.example.WalkTrail] at @s unless block ~ ~ ~-0.5 air run tag @s add bs.example.drop_to_place
execute as @e[type=item,tag=!bs.example.WalkTrail] at @s unless block ~ ~ ~0.5 air run tag @s add bs.example.drop_to_place


# Getting item type when the item exist since 1 second
execute as @e[type=item,tag=bs.example.drop_to_place] at @s run function bs.item:get

# Getting the corresponding block
execute as @e[type=item,tag=bs.example.drop_to_place] at @s run function bs.item:convert_to_block

# Placing the corresponding block (if it exist)
execute as @e[type=item,tag=bs.example.drop_to_place] at @s run function bs.block:set

# Little animation, because it's cool
execute as @e[type=item,tag=bs.example.drop_to_place] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0 30
execute as @e[type=item,tag=bs.example.drop_to_place] at @s run playsound minecraft:block.stone.place block @a[distance=..30] ~ ~ ~ 2 1 1

# Killing the item if the block is placed
kill @e[type=item,tag=bs.example.drop_to_place]