# goat group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 at @s positioned ~ ~1 ~ store result score #hitbox.is_long_jumping bs.data unless entity @s[dx=0]
execute if score #success bs.data matches 1 at @s positioned ~ ~.5 ~ store result score #hitbox.is_long_jumping bs.data unless entity @s[dx=0]
execute if score #hitbox.is_long_jumping bs.data matches 0 run scoreboard players set @s bs.width 900
execute if score #hitbox.is_long_jumping bs.data matches 0 run scoreboard players set @s bs.height 1300
execute if score #hitbox.is_long_jumping bs.data matches 1 run scoreboard players set @s bs.width 630
execute if score #hitbox.is_long_jumping bs.data matches 1 run scoreboard players set @s bs.height 910
execute if score #success bs.data matches 1 run scoreboard players operation @s bs.width /= 2 bs.const
execute if score #success bs.data matches 1 run scoreboard players operation @s bs.height /= 2 bs.const
