# compute hitbox coordinates


# TODO: use origin coordinates directly to check hitbox instead of adding dx dy dz?
execute store result score #raycast.min_x bs.data run data get entity @s Pos[0] 1000
execute store result score #raycast.min_y bs.data run data get entity @s Pos[1] 1000
execute store result score #raycast.min_z bs.data run data get entity @s Pos[2] 1000
tp B5-0-0-0-1 ~ ~ ~
execute store result score #raycast.max_x bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #raycast.max_y bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #raycast.max_z bs.data run data get entity B5-0-0-0-1 Pos[2] 1000
scoreboard players operation #raycast.min_x bs.data -= #raycast.max_x bs.data
scoreboard players operation #raycast.min_y bs.data -= #raycast.max_y bs.data
scoreboard players operation #raycast.min_z bs.data -= #raycast.max_z bs.data
execute if score #raycast.ux bs.data matches ..-1 run scoreboard players remove #raycast.min_x bs.data 1000
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players remove #raycast.min_y bs.data 1000
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players remove #raycast.min_z bs.data 1000
execute store result score #raycast.max_x bs.data run scoreboard players operation #raycast.min_x bs.data *= 1000 bs.const
execute store result score #raycast.max_y bs.data run scoreboard players operation #raycast.min_y bs.data *= 1000 bs.const
execute store result score #raycast.max_z bs.data run scoreboard players operation #raycast.min_z bs.data *= 1000 bs.const
scoreboard players operation $hitbox.width bs.out /= 2 bs.const
scoreboard players operation #raycast.min_x bs.data -= $hitbox.width bs.out
scoreboard players operation #raycast.min_z bs.data -= $hitbox.width bs.out
scoreboard players operation #raycast.max_x bs.data += $hitbox.width bs.out
scoreboard players operation #raycast.max_y bs.data += $hitbox.height bs.out
scoreboard players operation #raycast.max_z bs.data += $hitbox.width bs.out
execute if score #raycast.ux bs.data matches ..-1 run scoreboard players operation #raycast.min_x bs.data >< #raycast.max_x bs.data
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players operation #raycast.min_y bs.data >< #raycast.max_y bs.data
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players operation #raycast.min_z bs.data >< #raycast.max_z bs.data

# when step is negative, points are negative so we get the absolute value
scoreboard players operation #raycast.min_x bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.max_x bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.min_y bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.max_y bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.min_z bs.data /= #raycast.uz bs.data
scoreboard players operation #raycast.max_z bs.data /= #raycast.uz bs.data

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
execute if score #raycast.tmax bs.data matches 0.. if score #raycast.tmin bs.data <= #raycast.tmax bs.data if score #raycast.distance bs.data > #raycast.tmin bs.data run function bs.raycast:collide/aabb
