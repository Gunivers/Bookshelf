# camel group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute at @s positioned ~ ~1 ~ store result score #hitbox.is_sitting bs.data unless entity @s[dx=0]
execute if score #success bs.data matches 0 if score #hitbox.is_sitting bs.data matches 0 run data modify storage bs:out hitbox set value {width:1.7,height:2.375}
execute if score #success bs.data matches 0 if score #hitbox.is_sitting bs.data matches 1 run data modify storage bs:out hitbox set value {width:1.7,height:0.945}
execute if score #success bs.data matches 1 if score #hitbox.is_sitting bs.data matches 0 run data modify storage bs:out hitbox set value {width:0.765,height:1.06875}
execute if score #success bs.data matches 1 if score #hitbox.is_sitting bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.765,height:0.42525}
