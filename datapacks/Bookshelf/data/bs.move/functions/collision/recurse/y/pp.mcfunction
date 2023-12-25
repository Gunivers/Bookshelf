$execute unless score $move.block_collision bs.in matches 0 unless block ~ ~ ~ $(ignored_blocks) run function bs.move:collision/check/block
$execute unless score $move.entity_collision bs.in matches 0 as @e[tag=$(solid_entities),tag=!bs.move.omit,dx=0] run function bs.move:collision/check/entity

scoreboard players add #move.z1 bs.data 1000000
execute if score #move.z1 bs.data <= #move.z2 bs.data positioned ~ ~ ~1 run function bs.move:collision/recurse/z/p with storage bs:in move
scoreboard players remove #move.z1 bs.data 1000000
scoreboard players add #move.y1 bs.data 1000000
execute if score #move.y1 bs.data <= #move.y2 bs.data positioned ~ ~1 ~ run function bs.move:collision/recurse/y/pp with storage bs:in move
scoreboard players remove #move.y1 bs.data 1000000
