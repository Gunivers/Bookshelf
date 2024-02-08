# add the relative coordinates to the hitbox
execute store result score #move.max_x bs.data run scoreboard players operation #move.min_x bs.data = #move.rx bs.data
execute store result score #move.max_y bs.data run scoreboard players operation #move.min_y bs.data = #move.ry bs.data
execute store result score #move.max_z bs.data run scoreboard players operation #move.min_z bs.data = #move.rz bs.data

# compute the hitbox using the sizes of the collided entity and the moving entity
scoreboard players operation #move.ew bs.data = @s bs.width
scoreboard players operation #move.eh bs.data = @s bs.height
scoreboard players operation #move.ew bs.data *= 500 bs.const
scoreboard players operation #move.eh bs.data *= 1000 bs.const
scoreboard players operation #move.ew bs.data += #move.w bs.data
scoreboard players operation #move.min_x bs.data -= #move.ew bs.data
scoreboard players operation #move.min_y bs.data -= #move.h bs.data
scoreboard players operation #move.min_z bs.data -= #move.ew bs.data
scoreboard players operation #move.max_x bs.data += #move.ew bs.data
scoreboard players operation #move.max_y bs.data += #move.eh bs.data
scoreboard players operation #move.max_z bs.data += #move.ew bs.data

# when step is negative, points are negative so we get the absolute value
scoreboard players operation #move.min_x bs.data /= #move.vx bs.data
scoreboard players operation #move.max_x bs.data /= #move.vx bs.data
scoreboard players operation #move.min_y bs.data /= #move.vy bs.data
scoreboard players operation #move.max_y bs.data /= #move.vy bs.data
scoreboard players operation #move.min_z bs.data /= #move.vz bs.data
scoreboard players operation #move.max_z bs.data /= #move.vz bs.data

# when step is negative we need to reverse near and far points
execute if score #move.vx bs.data matches ..-1 run scoreboard players operation #move.min_x bs.data >< #move.max_x bs.data
execute if score #move.vy bs.data matches ..-1 run scoreboard players operation #move.min_y bs.data >< #move.max_y bs.data
execute if score #move.vz bs.data matches ..-1 run scoreboard players operation #move.min_z bs.data >< #move.max_z bs.data

# compute near and far points for AABB collision
scoreboard players operation #move.min_x bs.data > #move.min_y bs.data
scoreboard players operation #move.min_x bs.data > #move.min_z bs.data
scoreboard players operation #move.max_x bs.data < #move.max_y bs.data
scoreboard players operation #move.max_x bs.data < #move.max_z bs.data

# if min_x <= max_x, ray is intersecting with AABB, if max_x < 0, ray is intersecting AABB, but the whole AABB is behind
execute if score #move.max_x bs.data matches 0.. \
  if score #move.min_x bs.data matches ..1000 \
  if score #move.min_x bs.data <= #move.max_x bs.data \
  if score #move.ct bs.data > #move.min_x bs.data \
  run function bs.move:collision/collide
