# get the entity relative coordinates
execute store result score #move.min_x bs.data run data get entity @s Pos[0] 1000
execute store result score #move.min_y bs.data run data get entity @s Pos[1] 1000
execute store result score #move.min_z bs.data run data get entity @s Pos[2] 1000
scoreboard players operation #move.min_x bs.data -= #move.x bs.data
scoreboard players operation #move.min_y bs.data -= #move.y bs.data
scoreboard players operation #move.min_z bs.data -= #move.z bs.data
execute store result score #move.max_x bs.data run scoreboard players operation #move.min_x bs.data *= 1000 bs.const
execute store result score #move.max_y bs.data run scoreboard players operation #move.min_y bs.data *= 1000 bs.const
execute store result score #move.max_z bs.data run scoreboard players operation #move.min_z bs.data *= 1000 bs.const

# compute the hitbox using the sizes of the collided entity and the moving entity
execute store result score #move.eh bs.data run data get storage bs:out hitbox.height 1000
execute store result score #move.ew bs.data run data get storage bs:out hitbox.width 500
execute store result score #move.es bs.data run data get storage bs:out hitbox.scale 1000
scoreboard players operation #move.eh bs.data *= #move.es bs.data
scoreboard players operation #move.ew bs.data *= #move.es bs.data
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
  if score #move.min_x bs.data <= #move.max_x bs.data \
  if score #move.ctime bs.data > #move.min_x bs.data \
  run function bs.move:collision/collide
