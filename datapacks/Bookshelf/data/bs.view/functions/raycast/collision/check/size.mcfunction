# get starting coordinates for the hitbox
tp B5-0-0-0-1 @s
execute store result score #view.raycast.hitbox.min_x bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #view.raycast.hitbox.min_y bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #view.raycast.hitbox.min_z bs.data run data get entity B5-0-0-0-1 Pos[2] 1000
tp B5-0-0-0-1 ~ ~ ~
execute store result score #view.raycast.hitbox.max_x bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #view.raycast.hitbox.max_y bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #view.raycast.hitbox.max_z bs.data run data get entity B5-0-0-0-1 Pos[2] 1000

# compute min and max from width and height (min and max are reversed since length is one step further)
scoreboard players operation #view.raycast.hitbox.min_x bs.data -= #view.raycast.hitbox.max_x bs.data
scoreboard players operation #view.raycast.hitbox.min_y bs.data -= #view.raycast.hitbox.max_y bs.data
scoreboard players operation #view.raycast.hitbox.min_z bs.data -= #view.raycast.hitbox.max_z bs.data
execute store result score #view.raycast.hitbox.max_x bs.data run scoreboard players operation #view.raycast.hitbox.min_x bs.data *= 1000 bs.const
execute store result score #view.raycast.hitbox.max_y bs.data run scoreboard players operation #view.raycast.hitbox.min_y bs.data *= 1000 bs.const
execute store result score #view.raycast.hitbox.max_z bs.data run scoreboard players operation #view.raycast.hitbox.min_z bs.data *= 1000 bs.const
scoreboard players operation #view.raycast.hitbox.min_x bs.data += #view.raycast.hitbox.hwidth bs.data
scoreboard players operation #view.raycast.hitbox.max_x bs.data -= #view.raycast.hitbox.hwidth bs.data
scoreboard players operation #view.raycast.hitbox.min_z bs.data += #view.raycast.hitbox.hwidth bs.data
scoreboard players operation #view.raycast.hitbox.max_z bs.data -= #view.raycast.hitbox.hwidth bs.data
scoreboard players operation #view.raycast.hitbox.min_y bs.data += #view.raycast.hitbox.height bs.data

function bs.view:raycast/collision/check/aabb
