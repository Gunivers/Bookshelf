# sniffer group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 run data modify storage bs:out hitbox set value {width:1.9,height:1.75}
execute if score #success bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.95,height:0.875}
execute if score #success bs.data matches 0 at @s positioned ~ ~1.5 ~ unless entity @s[dx=0] run data modify storage bs:out hitbox.height set value 0.4
execute if score #success bs.data matches 1 at @s positioned ~ ~.5 ~ unless entity @s[dx=0] run data modify storage bs:out hitbox.height set value 0.4
