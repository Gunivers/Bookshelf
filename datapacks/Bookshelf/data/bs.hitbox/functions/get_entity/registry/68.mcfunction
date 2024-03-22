# player group
scoreboard players set @s bs.width 600
scoreboard players set @s bs.height 1800
execute at @s positioned ~ ~1.6 ~ unless entity @s[dx=0] run scoreboard players set @s bs.height 1500
execute at @s positioned ~ ~1 ~ unless entity @s[dx=0] run scoreboard players set @s bs.height 600
execute at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run scoreboard players set @s bs.width 200
execute at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run scoreboard players set @s bs.height 200
