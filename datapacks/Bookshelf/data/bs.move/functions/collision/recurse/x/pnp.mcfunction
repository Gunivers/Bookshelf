$execute unless block ~ ~ ~ $(ignored_blocks) run function bs.move:collision/check/block

scoreboard players add #move.z1 bs.data 1000000
execute if score #move.z1 bs.data < #move.z2 bs.data positioned ~ ~ ~1 run function bs.move:collision/recurse/z/p with storage bs:in move
scoreboard players remove #move.z1 bs.data 1000000
scoreboard players remove #move.y1 bs.data 1000000
execute if score #move.y1 bs.data > #move.y2 bs.data positioned ~ ~-1 ~ run function bs.move:collision/recurse/y/np with storage bs:in move
scoreboard players add #move.y1 bs.data 1000000
scoreboard players add #move.x1 bs.data 1000000
execute if score #move.x1 bs.data < #move.x2 bs.data positioned ~1 ~ ~ run function bs.move:collision/recurse/x/pnp with storage bs:in move
scoreboard players remove #move.x1 bs.data 1000000
