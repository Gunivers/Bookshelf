# compute hitbox coordinates (using bs.width and bs.height)
scoreboard players operation #raycast.w bs.data = @s bs.width
scoreboard players operation #raycast.h bs.data = @s bs.height
scoreboard players operation #raycast.w bs.data *= 500 bs.const
scoreboard players operation #raycast.h bs.data *= 1000 bs.const
scoreboard players operation #raycast.min_x bs.data -= #raycast.w bs.data
scoreboard players operation #raycast.min_z bs.data -= #raycast.w bs.data
scoreboard players operation #raycast.max_x bs.data += #raycast.w bs.data
scoreboard players operation #raycast.max_y bs.data += #raycast.h bs.data
scoreboard players operation #raycast.max_z bs.data += #raycast.w bs.data

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
scoreboard players operation #raycast.tmin bs.data = #raycast.min_x bs.data
scoreboard players operation #raycast.tmax bs.data = #raycast.max_x bs.data
scoreboard players operation #raycast.tmin bs.data > #raycast.min_y bs.data
scoreboard players operation #raycast.tmin bs.data > #raycast.min_z bs.data
scoreboard players operation #raycast.tmax bs.data < #raycast.max_y bs.data
scoreboard players operation #raycast.tmax bs.data < #raycast.max_z bs.data

# if tmin <= tmax, ray is intersecting with AABB, if tmax < 0, ray is intersecting AABB, but the whole AABB is behind
execute if score #raycast.tmax bs.data matches 0.. \
  if score #raycast.tmin bs.data <= #raycast.tmax bs.data \
  if score #raycast.tmin bs.data < #raycast.distance bs.data \
  run function bs.raycast:entity/collide
