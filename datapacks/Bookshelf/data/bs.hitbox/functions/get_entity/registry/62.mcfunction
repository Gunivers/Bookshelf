# warden group
execute at @s positioned ~ ~1.5 ~ store result score #result bs.data unless entity @s[dx=0]
execute if score #result bs.data matches 0 run scoreboard players set @s bs.height 2900
execute if score #result bs.data matches 1 run scoreboard players set @s bs.height 1000
scoreboard players set @s bs.width 900
