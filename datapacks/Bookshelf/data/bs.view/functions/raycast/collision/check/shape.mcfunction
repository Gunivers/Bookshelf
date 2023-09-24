# get hitbox in reverse order since length is one step further
execute store result score #view.raycast.hitbox.max_x bs.data run data get storage bs:data _[-1][0] 62500
execute store result score #view.raycast.hitbox.max_y bs.data run data get storage bs:data _[-1][1] 62500
execute store result score #view.raycast.hitbox.max_z bs.data run data get storage bs:data _[-1][2] 62500
execute store result score #view.raycast.hitbox.min_x bs.data run data get storage bs:data _[-1][3] 62500
execute store result score #view.raycast.hitbox.min_y bs.data run data get storage bs:data _[-1][4] 62500
execute store result score #view.raycast.hitbox.min_z bs.data run data get storage bs:data _[-1][5] 62500
data remove storage bs:data _[-1]

# offset the coordinates if needed
scoreboard players operation #view.raycast.hitbox.min_x bs.data += #view.raycast.hitbox.offset_x bs.data
scoreboard players operation #view.raycast.hitbox.min_z bs.data += #view.raycast.hitbox.offset_z bs.data
scoreboard players operation #view.raycast.hitbox.max_x bs.data += #view.raycast.hitbox.offset_x bs.data
scoreboard players operation #view.raycast.hitbox.max_z bs.data += #view.raycast.hitbox.offset_z bs.data

function bs.view:raycast/collision/check/aabb
execute if data storage bs:data _[0] run function bs.view:raycast/collision/check/shape
