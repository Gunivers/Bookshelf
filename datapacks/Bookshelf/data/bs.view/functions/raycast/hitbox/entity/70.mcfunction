# goat group
execute at @s positioned ~ ~.8 ~ store result score #view.raycast.entity.is_baby bs.data unless entity @s[dx=0]
execute if score #view.raycast.entity.is_baby bs.data matches 0 at @s positioned ~ ~1 ~ store result score #view.raycast.entity.is_long_jumping bs.data unless entity @s[dx=0]
execute if score #view.raycast.entity.is_baby bs.data matches 1 at @s positioned ~ ~.5 ~ store result score #view.raycast.entity.is_long_jumping bs.data unless entity @s[dx=0]
execute if score #view.raycast.entity.is_long_jumping bs.data matches 0 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 450000
execute if score #view.raycast.entity.is_long_jumping bs.data matches 0 run scoreboard players set #view.raycast.hitbox.height bs.data 1300000
execute if score #view.raycast.entity.is_long_jumping bs.data matches 1 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 315000
execute if score #view.raycast.entity.is_long_jumping bs.data matches 1 run scoreboard players set #view.raycast.hitbox.height bs.data 910000
execute if score #view.raycast.entity.is_baby bs.data matches 1 run scoreboard players operation #view.raycast.hitbox.hwidth bs.data /= 2 bs.const
execute if score #view.raycast.entity.is_baby bs.data matches 1 run scoreboard players operation #view.raycast.hitbox.height bs.data /= 2 bs.const
