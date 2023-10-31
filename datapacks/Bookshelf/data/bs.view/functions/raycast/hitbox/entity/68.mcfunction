# player group
scoreboard players set #view.raycast.hitbox.hwidth bs.data 300000
scoreboard players set #view.raycast.hitbox.height bs.data 1800000
execute at @s positioned ~ ~1.6 ~ unless entity @s[dx=0] run scoreboard players set #view.raycast.hitbox.height bs.data 1500000
execute at @s positioned ~ ~1 ~ unless entity @s[dx=0] run scoreboard players set #view.raycast.hitbox.height bs.data 600000
execute at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run scoreboard players set #view.raycast.hitbox.hwidth bs.data 100000
execute at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run scoreboard players set #view.raycast.hitbox.height bs.data 200000
