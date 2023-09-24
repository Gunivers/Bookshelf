# ensure that the position is clipped into the block
execute store result score #view.raycast.x_min bs.data store result score #view.raycast.x_max bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #view.raycast.y_min bs.data store result score #view.raycast.y_max bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #view.raycast.z_min bs.data store result score #view.raycast.z_max bs.data run data get entity B5-0-0-0-1 Pos[2] 1000
scoreboard players add #view.raycast.x_max bs.data 999
scoreboard players add #view.raycast.y_max bs.data 999
scoreboard players add #view.raycast.z_max bs.data 999
scoreboard players operation #view.raycast.x bs.data > #view.raycast.x_min bs.data
scoreboard players operation #view.raycast.y bs.data > #view.raycast.y_min bs.data
scoreboard players operation #view.raycast.z bs.data > #view.raycast.z_min bs.data
scoreboard players operation #view.raycast.x bs.data < #view.raycast.x_max bs.data
scoreboard players operation #view.raycast.y bs.data < #view.raycast.y_max bs.data
scoreboard players operation #view.raycast.z bs.data < #view.raycast.z_max bs.data
