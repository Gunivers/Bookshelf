# when step is positive we need to remove from length to get near and far points
execute if score #view.raycast.ux bs.data matches 0.. run scoreboard players remove #view.raycast.hitbox.min_x bs.data 1000000
execute if score #view.raycast.uy bs.data matches 0.. run scoreboard players remove #view.raycast.hitbox.min_y bs.data 1000000
execute if score #view.raycast.uz bs.data matches 0.. run scoreboard players remove #view.raycast.hitbox.min_z bs.data 1000000
execute if score #view.raycast.ux bs.data matches 0.. run scoreboard players remove #view.raycast.hitbox.max_x bs.data 1000000
execute if score #view.raycast.uy bs.data matches 0.. run scoreboard players remove #view.raycast.hitbox.max_y bs.data 1000000
execute if score #view.raycast.uz bs.data matches 0.. run scoreboard players remove #view.raycast.hitbox.max_z bs.data 1000000

# when step is negative the unit vector is negative, this way we get the difference between length and near and far points
scoreboard players operation #view.raycast.hitbox.min_x bs.data /= #view.raycast.ux bs.data
scoreboard players operation #view.raycast.hitbox.min_y bs.data /= #view.raycast.uy bs.data
scoreboard players operation #view.raycast.hitbox.min_z bs.data /= #view.raycast.uz bs.data
scoreboard players operation #view.raycast.hitbox.max_x bs.data /= #view.raycast.ux bs.data
scoreboard players operation #view.raycast.hitbox.max_y bs.data /= #view.raycast.uy bs.data
scoreboard players operation #view.raycast.hitbox.max_z bs.data /= #view.raycast.uz bs.data

# compute near and far points for AABB collision
execute store result score #view.raycast.hitbox.tmin bs.data run scoreboard players operation #view.raycast.hitbox.min_x bs.data += #view.raycast.lx bs.data
execute store result score #view.raycast.hitbox.tmax bs.data run scoreboard players operation #view.raycast.hitbox.max_x bs.data += #view.raycast.lx bs.data
execute store result score #view.raycast.hitbox.tmin_y bs.data run scoreboard players operation #view.raycast.hitbox.min_y bs.data += #view.raycast.ly bs.data
execute store result score #view.raycast.hitbox.tmax_y bs.data run scoreboard players operation #view.raycast.hitbox.max_y bs.data += #view.raycast.ly bs.data
execute store result score #view.raycast.hitbox.tmin_z bs.data run scoreboard players operation #view.raycast.hitbox.min_z bs.data += #view.raycast.lz bs.data
execute store result score #view.raycast.hitbox.tmax_z bs.data run scoreboard players operation #view.raycast.hitbox.max_z bs.data += #view.raycast.lz bs.data

# check near distance
scoreboard players operation #view.raycast.hitbox.tmin bs.data < #view.raycast.hitbox.max_x bs.data
scoreboard players operation #view.raycast.hitbox.tmin_y bs.data < #view.raycast.hitbox.max_y bs.data
scoreboard players operation #view.raycast.hitbox.tmin_z bs.data < #view.raycast.hitbox.max_z bs.data
scoreboard players operation #view.raycast.hitbox.tmin bs.data > #view.raycast.hitbox.tmin_y bs.data
scoreboard players operation #view.raycast.hitbox.tmin bs.data > #view.raycast.hitbox.tmin_z bs.data

# check far distance
scoreboard players operation #view.raycast.hitbox.tmax bs.data > #view.raycast.hitbox.min_x bs.data
scoreboard players operation #view.raycast.hitbox.tmax_y bs.data > #view.raycast.hitbox.min_y bs.data
scoreboard players operation #view.raycast.hitbox.tmax_z bs.data > #view.raycast.hitbox.min_z bs.data
scoreboard players operation #view.raycast.hitbox.tmax bs.data < #view.raycast.hitbox.tmax_y bs.data
scoreboard players operation #view.raycast.hitbox.tmax bs.data < #view.raycast.hitbox.tmax_z bs.data

# if tmin > tmax, ray doesn't intersect AABB, if tmax < 0, ray is intersecting AABB, but the whole AABB is behind
execute if score #view.raycast.hitbox.tmax bs.data matches 0.. if score #view.raycast.hitbox.tmin bs.data <= #view.raycast.hitbox.tmax bs.data run scoreboard players operation #view.raycast.distance bs.data < #view.raycast.hitbox.tmin bs.data
execute if score #view.raycast.hitbox.tmin bs.data = #view.raycast.distance bs.data run tag @s add bs.view.raycast.hit
