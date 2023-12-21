execute store result score #move.max_x bs.data run scoreboard players operation #move.min_x bs.data = #move.x1 bs.data
execute store result score #move.max_y bs.data run scoreboard players operation #move.min_y bs.data = #move.y1 bs.data
execute store result score #move.max_z bs.data run scoreboard players operation #move.min_z bs.data = #move.z1 bs.data
scoreboard players add #move.max_x bs.data 1000000
scoreboard players add #move.max_y bs.data 1000000
scoreboard players add #move.max_z bs.data 1000000

scoreboard players operation #move.min_x bs.data -= #move.w bs.data
scoreboard players operation #move.min_y bs.data -= #move.h bs.data
scoreboard players operation #move.min_z bs.data -= #move.w bs.data
scoreboard players operation #move.max_x bs.data += #move.w bs.data
scoreboard players operation #move.max_z bs.data += #move.w bs.data

scoreboard players operation #move.min_x bs.data /= #move.vx bs.data
scoreboard players operation #move.max_x bs.data /= #move.vx bs.data
scoreboard players operation #move.min_y bs.data /= #move.vy bs.data
scoreboard players operation #move.max_y bs.data /= #move.vy bs.data
scoreboard players operation #move.min_z bs.data /= #move.vz bs.data
scoreboard players operation #move.max_z bs.data /= #move.vz bs.data

execute if score #move.min_x bs.data > #move.max_x bs.data run scoreboard players operation #move.min_x bs.data >< #move.max_x bs.data
execute if score #move.min_y bs.data > #move.max_y bs.data run scoreboard players operation #move.min_y bs.data >< #move.max_y bs.data
execute if score #move.min_z bs.data > #move.max_z bs.data run scoreboard players operation #move.min_z bs.data >< #move.max_z bs.data

scoreboard players operation #move.min_x bs.data > #move.min_y bs.data
scoreboard players operation #move.min_x bs.data > #move.min_z bs.data
scoreboard players operation #move.max_x bs.data < #move.max_y bs.data
scoreboard players operation #move.max_x bs.data < #move.max_z bs.data

execute if score #move.max_x bs.data matches 0.. \
  if score #move.min_x bs.data matches ..1000 \
  if score #move.min_x bs.data <= #move.max_x bs.data \
  if score #move.ct bs.data > #move.min_x bs.data \
  run function bs.move:collision/collide
