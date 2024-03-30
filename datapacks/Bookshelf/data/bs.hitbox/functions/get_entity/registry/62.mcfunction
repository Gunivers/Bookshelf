# warden group
execute at @s positioned ~ ~1.5 ~ store result score #result bs.data unless entity @s[dx=0]
execute if score #result bs.data matches 0 run scoreboard players set $hitbox.height bs.out 2900
execute if score #result bs.data matches 1 run scoreboard players set $hitbox.height bs.out 1000
scoreboard players set $hitbox.width bs.out 900
