$execute if score #move.b bs.data matches 1 unless block ~ ~ ~ $(ignored_blocks) run function bs.move:collision/check/block/any
$execute if score #move.e bs.data matches 1 as @e[type=!$(ignored_entities),tag=$(entities),tag=!bs.move.omit,dx=0] run function bs.move:collision/check/entity/any

scoreboard players remove #move.rz bs.data 1000000
execute if score #move.rz bs.data > #move.z2 bs.data positioned ~ ~ ~-1 run function bs.move:collision/recurse/z_neg with storage bs:data move
