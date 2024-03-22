# get the travelled distance and the surface that was hit
scoreboard players operation #move.ctime bs.data = #move.min_x bs.data
execute if score #move.vx bs.data matches ..-1 run scoreboard players set $move.hit_face bs.out 5
execute if score #move.vx bs.data matches 0.. run scoreboard players set $move.hit_face bs.out 4
execute if score #move.ctime bs.data = #move.min_z bs.data if score #move.vz bs.data matches ..-1 run scoreboard players set $move.hit_face bs.out 3
execute if score #move.ctime bs.data = #move.min_z bs.data if score #move.vz bs.data matches 0.. run scoreboard players set $move.hit_face bs.out 2
execute if score #move.ctime bs.data = #move.min_y bs.data if score #move.vy bs.data matches ..-1 run scoreboard players set $move.hit_face bs.out 1
execute if score #move.ctime bs.data = #move.min_y bs.data if score #move.vy bs.data matches 0.. run scoreboard players set $move.hit_face bs.out 0
