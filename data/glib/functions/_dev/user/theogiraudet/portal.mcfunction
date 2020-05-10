execute at @e[tag=move,type=armor_stand] unless block ~ ~ ~ air run function glib:object/block/block_to_id
kill @e[tag=move,type=armor_stand]
execute positioned ^ ^ ^3 run function glib:object/block/id_to_falling_block/to_falling_block
execute as @e[type=falling_block,distance=..10] run tag @s add force
tag @s add jedi