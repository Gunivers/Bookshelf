scoreboard players operation #move.rz bs.data = #move.z1 bs.data
execute if score #move.vz bs.data matches 0.. run function bs.move:collision/recurse/z_pos with storage bs:in move
execute if score #move.vz bs.data matches ..-1 run function bs.move:collision/recurse/z_neg with storage bs:in move

scoreboard players remove #move.ry bs.data 1000000
execute if score #move.ry bs.data > #move.y2 bs.data positioned ~ ~-1 ~ run function bs.move:collision/recurse/y_neg
