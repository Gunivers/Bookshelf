execute store result score #move.min_x bs.data run data get storage bs:out hitbox[-1][0] 62500
execute store result score #move.min_y bs.data run data get storage bs:out hitbox[-1][1] 62500
execute store result score #move.min_z bs.data run data get storage bs:out hitbox[-1][2] 62500
execute store result score #move.max_x bs.data run data get storage bs:out hitbox[-1][3] 62500
execute store result score #move.max_y bs.data run data get storage bs:out hitbox[-1][4] 62500
execute store result score #move.max_z bs.data run data get storage bs:out hitbox[-1][5] 62500
data remove storage bs:out hitbox[-1]

scoreboard players operation #move.min_x bs.data += #move.x1 bs.data
scoreboard players operation #move.min_y bs.data += #move.y1 bs.data
scoreboard players operation #move.min_z bs.data += #move.z1 bs.data
scoreboard players operation #move.max_x bs.data += #move.x1 bs.data
scoreboard players operation #move.max_y bs.data += #move.y1 bs.data
scoreboard players operation #move.max_z bs.data += #move.z1 bs.data

scoreboard players operation #move.min_x bs.data -= #move.w bs.data
scoreboard players operation #move.min_z bs.data -= #move.w bs.data
scoreboard players operation #move.max_x bs.data += #move.w bs.data
scoreboard players operation #move.max_y bs.data += #move.h bs.data
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

execute if score #move.min_x bs.data matches 0.. \
  if score #move.max_x bs.data matches 0.. \
  if score #move.min_x bs.data <= #move.max_x bs.data \
  if score #move.ct bs.data > #move.min_x bs.data \
  run function bs.move:collision/collide

execute if data storage bs:out hitbox[0] run function bs.raycast:check/shape
