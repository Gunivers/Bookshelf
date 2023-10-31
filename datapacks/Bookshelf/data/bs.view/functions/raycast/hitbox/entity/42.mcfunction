# polar_bear group
execute at @s positioned ~ ~1 ~ store result score #view.raycast.entity.is_baby bs.data unless entity @s[dx=0]
execute if score #view.raycast.entity.is_baby bs.data matches 0 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 700000
execute if score #view.raycast.entity.is_baby bs.data matches 0 run scoreboard players set #view.raycast.hitbox.height bs.data 1400000
execute if score #view.raycast.entity.is_baby bs.data matches 1 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 350000
execute if score #view.raycast.entity.is_baby bs.data matches 1 run scoreboard players set #view.raycast.hitbox.height bs.data 700000
