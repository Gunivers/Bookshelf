# get hitbox coordinates
execute store result score #raycast.min_x bs.data run data get storage bs:out hitbox[-1][0] 62500
execute store result score #raycast.min_y bs.data run data get storage bs:out hitbox[-1][1] 62500
execute store result score #raycast.min_z bs.data run data get storage bs:out hitbox[-1][2] 62500
execute store result score #raycast.max_x bs.data run data get storage bs:out hitbox[-1][3] 62500
execute store result score #raycast.max_y bs.data run data get storage bs:out hitbox[-1][4] 62500
execute store result score #raycast.max_z bs.data run data get storage bs:out hitbox[-1][5] 62500
data remove storage bs:out hitbox[-1]

# offset coordinates if needed
scoreboard players operation #raycast.min_x bs.data += $hitbox.offset.x bs.out
scoreboard players operation #raycast.max_x bs.data += $hitbox.offset.x bs.out
scoreboard players operation #raycast.min_z bs.data += $hitbox.offset.z bs.out
scoreboard players operation #raycast.max_z bs.data += $hitbox.offset.z bs.out

# when step is negative, points are negative so we get the absolute value
scoreboard players operation #raycast.min_x bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.max_x bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.min_y bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.max_y bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.min_z bs.data /= #raycast.uz bs.data
scoreboard players operation #raycast.max_z bs.data /= #raycast.uz bs.data

# when step is negative we need to reverse near and far points
execute if score #raycast.ux bs.data matches ..-1 run scoreboard players operation #raycast.min_x bs.data >< #raycast.max_x bs.data
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players operation #raycast.min_y bs.data >< #raycast.max_y bs.data
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players operation #raycast.min_z bs.data >< #raycast.max_z bs.data

# compute near and far points for AABB collision
execute store result score #raycast.tmin bs.data run scoreboard players operation #raycast.min_x bs.data += #raycast.lx bs.data
execute store result score #raycast.tmax bs.data run scoreboard players operation #raycast.max_x bs.data += #raycast.lx bs.data
scoreboard players operation #raycast.min_y bs.data += #raycast.ly bs.data
scoreboard players operation #raycast.max_y bs.data += #raycast.ly bs.data
scoreboard players operation #raycast.min_z bs.data += #raycast.lz bs.data
scoreboard players operation #raycast.max_z bs.data += #raycast.lz bs.data
scoreboard players operation #raycast.tmin bs.data > #raycast.min_y bs.data
scoreboard players operation #raycast.tmin bs.data > #raycast.min_z bs.data
scoreboard players operation #raycast.tmax bs.data < #raycast.max_y bs.data
scoreboard players operation #raycast.tmax bs.data < #raycast.max_z bs.data

# if tmin <= tmax, ray is intersecting with AABB, if tmax < 0, ray is intersecting AABB, but the whole AABB is behind
execute if score #raycast.tmax bs.data matches 0.. \
  if score #raycast.tmin bs.data <= #raycast.tmax bs.data \
  if score #raycast.tmin bs.data < #raycast.distance bs.data \
  run function bs.raycast:collide/block

execute if data storage bs:out hitbox[0] run function bs.raycast:check/block/shape
