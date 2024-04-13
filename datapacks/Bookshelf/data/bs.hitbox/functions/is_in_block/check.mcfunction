execute store result score #hitbox.min_x bs.data run data get storage bs:out hitbox.shape[-1][0] 62.5
execute store result score #hitbox.min_y bs.data run data get storage bs:out hitbox.shape[-1][1] 62.5
execute store result score #hitbox.min_z bs.data run data get storage bs:out hitbox.shape[-1][2] 62.5
execute store result score #hitbox.max_x bs.data run data get storage bs:out hitbox.shape[-1][3] 62.5
execute store result score #hitbox.max_y bs.data run data get storage bs:out hitbox.shape[-1][4] 62.5
execute store result score #hitbox.max_z bs.data run data get storage bs:out hitbox.shape[-1][5] 62.5

# offset coordinates if needed
scoreboard players operation #hitbox.min_x bs.data += #hitbox.offset.x bs.data
scoreboard players operation #hitbox.max_x bs.data += #hitbox.offset.x bs.data
scoreboard players operation #hitbox.min_z bs.data += #hitbox.offset.z bs.data
scoreboard players operation #hitbox.max_z bs.data += #hitbox.offset.z bs.data

execute \
  if score #hitbox.x bs.data >= #hitbox.min_x bs.data \
  if score #hitbox.x bs.data < #hitbox.max_x bs.data \
  if score #hitbox.y bs.data >= #hitbox.min_y bs.data \
  if score #hitbox.y bs.data < #hitbox.max_y bs.data \
  if score #hitbox.z bs.data >= #hitbox.min_z bs.data \
  if score #hitbox.z bs.data < #hitbox.max_z bs.data \
run return 1

data remove storage bs:out hitbox.shape[-1]
execute if data storage bs:out hitbox.shape[0] run return run function bs.hitbox:is_in_block/check
