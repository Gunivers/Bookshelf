# hoglin group
execute at @s positioned ~ ~1 ~ store result score #hitbox.get_entity.is_baby bs.data unless entity @s[dx=0]
execute if score #hitbox.get_entity.is_baby bs.data matches 0 run scoreboard players set $hitbox.width bs.out 1396484
execute if score #hitbox.get_entity.is_baby bs.data matches 0 run scoreboard players set $hitbox.height bs.out 1400000
execute if score #hitbox.get_entity.is_baby bs.data matches 1 run scoreboard players set $hitbox.width bs.out 698242
execute if score #hitbox.get_entity.is_baby bs.data matches 1 run scoreboard players set $hitbox.height bs.out 700000
