# sniffer group
execute at @s positioned ~ ~1 ~ store result score #view.raycast.entity.is_baby bs.data unless entity @s[dx=0]
execute if score #view.raycast.entity.is_baby bs.data matches 0 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 950000
execute if score #view.raycast.entity.is_baby bs.data matches 0 run scoreboard players set #view.raycast.hitbox.height bs.data 1750000
execute if score #view.raycast.entity.is_baby bs.data matches 1 run scoreboard players set #view.raycast.hitbox.hwidth bs.data 475000
execute if score #view.raycast.entity.is_baby bs.data matches 1 run scoreboard players set #view.raycast.hitbox.height bs.data 875000
execute if score #view.raycast.entity.is_baby bs.data matches 0 at @s positioned ~ ~1.5 ~ unless entity @s[dx=0] run scoreboard players remove #view.raycast.hitbox.height bs.data 400000
execute if score #view.raycast.entity.is_baby bs.data matches 1 at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run scoreboard players remove #view.raycast.hitbox.height bs.data 400000
