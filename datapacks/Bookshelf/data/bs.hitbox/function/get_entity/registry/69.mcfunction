# villager group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute at @s positioned ~ ~.5 ~ store result score #hitbox.is_sleeping bs.data unless entity @s[dx=0]
execute if score #hitbox.is_sleeping bs.data matches 0 if score #success bs.data matches 0 run data modify storage bs:out hitbox set value {width:0.6,height:1.95}
execute if score #hitbox.is_sleeping bs.data matches 0 if score #success bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.3,height:0.975}
execute if score #hitbox.is_sleeping bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.2,height:0.2}
