$execute unless block ~ ~ ~ $(ignored_blocks) run function bs.move:collision/check/block/block

scoreboard players remove #move.rz bs.data 1000000
execute if score #move.rz bs.data > #move.z2 bs.data positioned ~ ~ ~-1 run function bs.move:collision/recurse/z_neg with storage bs:in move
