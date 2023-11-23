execute store result score #hitbox.min_x bs.data run data get storage bs:out hitbox[-1][0] 62.5
execute store result score #hitbox.min_y bs.data run data get storage bs:out hitbox[-1][1] 62.5
execute store result score #hitbox.min_z bs.data run data get storage bs:out hitbox[-1][2] 62.5
execute store result score #hitbox.max_x bs.data run data get storage bs:out hitbox[-1][3] 62.5
execute store result score #hitbox.max_y bs.data run data get storage bs:out hitbox[-1][4] 62.5
execute store result score #hitbox.max_z bs.data run data get storage bs:out hitbox[-1][5] 62.5

execute \
  if score #hitbox.x bs.data > #hitbox.min_x bs.data \
  if score #hitbox.x bs.data < #hitbox.max_x bs.data \
  if score #hitbox.y bs.data >= #hitbox.min_y bs.data \
  if score #hitbox.y bs.data < #hitbox.max_y bs.data \
  if score #hitbox.z bs.data > #hitbox.min_z bs.data \
  if score #hitbox.z bs.data < #hitbox.max_z bs.data \
run return 1

data remove storage bs:out hitbox[-1]
execute if data storage bs:out hitbox[0] run return run function bs.hitbox:is_in_block/check
