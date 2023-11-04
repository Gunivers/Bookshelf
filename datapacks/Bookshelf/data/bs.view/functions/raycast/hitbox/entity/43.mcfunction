# pufferfish group
execute store result score #view.raycast.entity.state bs.data run data get entity @s PuffState
execute if score #view.raycast.entity.state bs.data matches 0 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 175000
execute if score #view.raycast.entity.state bs.data matches 0 run scoreboard players set #view.raycast.hitbox.height bs.data 350000
execute if score #view.raycast.entity.state bs.data matches 1 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 245000
execute if score #view.raycast.entity.state bs.data matches 1 run scoreboard players set #view.raycast.hitbox.height bs.data 490000
execute if score #view.raycast.entity.state bs.data matches 2 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 350000
execute if score #view.raycast.entity.state bs.data matches 2 run scoreboard players set #view.raycast.hitbox.height bs.data 700000
