# camel group
execute at @s positioned ~ ~1 ~ store result score #view.raycast.entity.is_sitting bs.data unless entity @s[dx=0]
execute if score #view.raycast.entity.is_sitting bs.data matches 0 at @s positioned ~ ~2 ~ store result score #view.raycast.entity.is_baby bs.data unless entity @s[dx=0]
execute if score #view.raycast.entity.is_sitting bs.data matches 1 at @s positioned ~ ~.5 ~ store result score #view.raycast.entity.is_baby bs.data unless entity @s[dx=0]
execute if score #view.raycast.entity.is_baby bs.data matches 0 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 850000
execute if score #view.raycast.entity.is_baby bs.data matches 0 run scoreboard players set #view.raycast.hitbox.height bs.data 2375000
execute if score #view.raycast.entity.is_baby bs.data matches 1 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 382500
execute if score #view.raycast.entity.is_baby bs.data matches 1 run scoreboard players set #view.raycast.hitbox.height bs.data 1068750
execute if score #view.raycast.entity.is_sitting bs.data matches 1 if score #view.raycast.entity.is_baby bs.data matches 0 run scoreboard players remove #view.raycast.hitbox.height bs.data 1430000
execute if score #view.raycast.entity.is_sitting bs.data matches 1 if score #view.raycast.entity.is_baby bs.data matches 1 run scoreboard players remove #view.raycast.hitbox.height bs.data 643500
