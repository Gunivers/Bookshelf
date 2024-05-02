scoreboard players operation #move.ry bs.data = #move.y1 bs.data
execute if score #move.vy bs.data matches 0.. run function bs.move:collision/recurse/y_pos
execute if score #move.vy bs.data matches ..-1 run function bs.move:collision/recurse/y_neg

scoreboard players add #move.rx bs.data 1000000
execute if score #move.rx bs.data < #move.x2 bs.data positioned ~1 ~ ~ run function bs.move:collision/recurse/x_pos
