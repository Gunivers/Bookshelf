scoreboard players operation #move.w bs.data /= 1000 bs.const
scoreboard players operation #move.h bs.data /= 1000 bs.const

execute if score #move.vx bs.data matches 0.. run function bs.move:collision/recurse/init/x_pos
execute if score #move.vy bs.data matches 0.. run function bs.move:collision/recurse/init/y_pos
execute if score #move.vz bs.data matches 0.. run function bs.move:collision/recurse/init/z_pos
execute if score #move.vx bs.data matches ..-1 run function bs.move:collision/recurse/init/x_neg
execute if score #move.vy bs.data matches ..-1 run function bs.move:collision/recurse/init/y_neg
execute if score #move.vz bs.data matches ..-1 run function bs.move:collision/recurse/init/z_neg

scoreboard players operation #move.w bs.data *= 1000 bs.const
scoreboard players operation #move.h bs.data *= 1000 bs.const
scoreboard players operation #move.x2 bs.data *= 1000 bs.const
scoreboard players operation #move.y2 bs.data *= 1000 bs.const
scoreboard players operation #move.z2 bs.data *= 1000 bs.const
execute store result score #move.rx bs.data run scoreboard players operation #move.x1 bs.data *= 1000 bs.const
execute store result score #move.ry bs.data run scoreboard players operation #move.y1 bs.data *= 1000 bs.const
execute store result score #move.rz bs.data run scoreboard players operation #move.z1 bs.data *= 1000 bs.const

execute if score #move.vx bs.data matches 0.. at B5-0-0-0-1 align xyz run function bs.move:collision/recurse/x_pos
execute if score #move.vx bs.data matches ..-1 at B5-0-0-0-1 align xyz run function bs.move:collision/recurse/x_neg
