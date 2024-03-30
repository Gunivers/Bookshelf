execute store result score #hitbox.min_x bs.data run data get entity @s Pos[0] 1000
execute store result score #hitbox.min_y bs.data run data get entity @s Pos[1] 1000
execute store result score #hitbox.min_z bs.data run data get entity @s Pos[2] 1000
execute store result score #hitbox.max_x bs.data run data get entity @s Pos[0] 1000
execute store result score #hitbox.max_y bs.data run data get entity @s Pos[1] 1000
execute store result score #hitbox.max_z bs.data run data get entity @s Pos[2] 1000

scoreboard players operation #hitbox.hw bs.data = $hitbox.width bs.out
scoreboard players operation #hitbox.hw bs.data /= 2 bs.const
scoreboard players operation #hitbox.max_x bs.data += #hitbox.hw bs.data
scoreboard players operation #hitbox.max_z bs.data += #hitbox.hw bs.data
scoreboard players operation #hitbox.min_x bs.data -= #hitbox.hw bs.data
scoreboard players operation #hitbox.min_z bs.data -= #hitbox.hw bs.data
scoreboard players operation #hitbox.max_y bs.data += $hitbox.height bs.out

execute \
  if score #hitbox.x bs.data >= #hitbox.min_x bs.data \
  if score #hitbox.x bs.data < #hitbox.max_x bs.data \
  if score #hitbox.y bs.data >= #hitbox.min_y bs.data \
  if score #hitbox.y bs.data < #hitbox.max_y bs.data \
  if score #hitbox.z bs.data >= #hitbox.min_z bs.data \
  if score #hitbox.z bs.data < #hitbox.max_z bs.data \
run return 1
