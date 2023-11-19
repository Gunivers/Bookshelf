# warden group
execute at @s positioned ~ ~1.5 ~ store result score #view.raycast.entity.is_digging bs.data unless entity @s[dx=0]
scoreboard players set #view.raycast.hitbox.hwidth bs.data 450000
execute if score #view.raycast.entity.is_digging bs.data matches 0 run scoreboard players set #view.raycast.hitbox.height bs.data 2900000
execute if score #view.raycast.entity.is_digging bs.data matches 1 run scoreboard players set #view.raycast.hitbox.height bs.data 1000000
