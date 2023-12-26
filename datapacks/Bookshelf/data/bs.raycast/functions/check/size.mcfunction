# compute hitbox coordinates (using bs.width and bs.height)
execute store result score #raycast.min_x bs.data run data get entity @s Pos[0] 1000
execute store result score #raycast.min_y bs.data run data get entity @s Pos[1] 1000
execute store result score #raycast.min_z bs.data run data get entity @s Pos[2] 1000
scoreboard players operation #raycast.min_x bs.data -= #raycast.x bs.data
scoreboard players operation #raycast.min_y bs.data -= #raycast.y bs.data
scoreboard players operation #raycast.min_z bs.data -= #raycast.z bs.data
execute store result score #raycast.max_x bs.data run scoreboard players operation #raycast.min_x bs.data *= 1000 bs.const
execute store result score #raycast.max_y bs.data run scoreboard players operation #raycast.min_y bs.data *= 1000 bs.const
execute store result score #raycast.max_z bs.data run scoreboard players operation #raycast.min_z bs.data *= 1000 bs.const
scoreboard players operation #raycast.w bs.data = @s bs.width
scoreboard players operation #raycast.h bs.data = @s bs.height
scoreboard players operation #raycast.w bs.data *= 500 bs.const
scoreboard players operation #raycast.h bs.data *= 1000 bs.const
scoreboard players operation #raycast.min_x bs.data -= #raycast.w bs.data
scoreboard players operation #raycast.min_y bs.data -= #raycast.h bs.data
scoreboard players operation #raycast.min_z bs.data -= #raycast.w bs.data
scoreboard players operation #raycast.max_x bs.data += #raycast.w bs.data
scoreboard players operation #raycast.max_z bs.data += #raycast.w bs.data

# when step is negative, points are negative so we get the absolute value
scoreboard players operation #raycast.min_x bs.data /= #raycast.vx bs.data
scoreboard players operation #raycast.max_x bs.data /= #raycast.vx bs.data
scoreboard players operation #raycast.min_y bs.data /= #raycast.vy bs.data
scoreboard players operation #raycast.max_y bs.data /= #raycast.vy bs.data
scoreboard players operation #raycast.min_z bs.data /= #raycast.vz bs.data
scoreboard players operation #raycast.max_z bs.data /= #raycast.vz bs.data

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
  run function bs.raycast:collide/aabb
