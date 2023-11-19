# villager group
execute at @s positioned ~ ~1 ~ store result score #view.raycast.entity.is_baby bs.data unless entity @s[dx=0]
execute at @s positioned ~ ~.5 ~ store result score #view.raycast.entity.is_sleeping bs.data unless entity @s[dx=0]
execute if score #view.raycast.entity.is_baby bs.data matches 0 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 300000
execute if score #view.raycast.entity.is_baby bs.data matches 0 run scoreboard players set #view.raycast.hitbox.height bs.data 1950000
execute if score #view.raycast.entity.is_baby bs.data matches 1 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 150000
execute if score #view.raycast.entity.is_baby bs.data matches 1 run scoreboard players set #view.raycast.hitbox.height bs.data 975000
execute if score #view.raycast.entity.is_sleeping bs.data matches 1 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 100000
execute if score #view.raycast.entity.is_sleeping bs.data matches 1 run scoreboard players set #view.raycast.hitbox.height bs.data 200000
