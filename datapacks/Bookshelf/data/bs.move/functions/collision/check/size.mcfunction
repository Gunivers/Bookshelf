execute store result score #move.min_x bs.data run data get entity @s Pos[0] 1000
execute store result score #move.min_y bs.data run data get entity @s Pos[1] 1000
execute store result score #move.min_z bs.data run data get entity @s Pos[2] 1000
scoreboard players operation #move.min_x bs.data -= #move.x bs.data
scoreboard players operation #move.min_y bs.data -= #move.y bs.data
scoreboard players operation #move.min_z bs.data -= #move.z bs.data
execute store result score #move.max_x bs.data run scoreboard players operation #move.min_x bs.data *= 1000 bs.const
execute store result score #move.max_y bs.data run scoreboard players operation #move.min_y bs.data *= 1000 bs.const
execute store result score #move.max_z bs.data run scoreboard players operation #move.min_z bs.data *= 1000 bs.const

scoreboard players operation #move.ew bs.data = @s bs.width
scoreboard players operation #move.eh bs.data = @s bs.height
scoreboard players operation #move.ew bs.data *= 500 bs.const
scoreboard players operation #move.eh bs.data *= 1000 bs.const
scoreboard players operation #move.ew bs.data += #move.w bs.data
scoreboard players operation #move.eh bs.data += #move.h bs.data

scoreboard players operation #move.min_x bs.data -= #move.ew bs.data
scoreboard players operation #move.min_y bs.data -= #move.eh bs.data
scoreboard players operation #move.min_z bs.data -= #move.ew bs.data
scoreboard players operation #move.max_x bs.data += #move.ew bs.data
scoreboard players operation #move.max_z bs.data += #move.ew bs.data

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
