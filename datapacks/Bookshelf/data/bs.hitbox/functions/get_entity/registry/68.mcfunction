# player group
scoreboard players set $hitbox.width bs.out 600
scoreboard players set $hitbox.height bs.out 1800
execute at @s positioned ~ ~1.6 ~ unless entity @s[dx=0] run scoreboard players set $hitbox.height bs.out 1500
execute at @s positioned ~ ~1 ~ unless entity @s[dx=0] run scoreboard players set $hitbox.height bs.out 600
execute at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run scoreboard players set $hitbox.width bs.out 200
execute at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run scoreboard players set $hitbox.height bs.out 200
