# goat group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 at @s positioned ~ ~1 ~ store result score #hitbox.is_long_jumping bs.data unless entity @s[dx=0]
execute if score #success bs.data matches 1 at @s positioned ~ ~.5 ~ store result score #hitbox.is_long_jumping bs.data unless entity @s[dx=0]
execute if score #success bs.data matches 0 if score #hitbox.is_long_jumping bs.data matches 0 run data modify storage bs:out hitbox set value {width:0.9,height:1.3}
execute if score #success bs.data matches 0 if score #hitbox.is_long_jumping bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.63,height:0.90999997}
execute if score #success bs.data matches 1 if score #hitbox.is_long_jumping bs.data matches 0 run data modify storage bs:out hitbox set value {width:0.45,height:0.65}
execute if score #success bs.data matches 1 if score #hitbox.is_long_jumping bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.315,height:0.45499998}
