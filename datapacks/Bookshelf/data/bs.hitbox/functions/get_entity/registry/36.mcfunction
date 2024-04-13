# llama group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 run data modify storage bs:out hitbox set value {width:0.9,height:1.87}
execute if score #success bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.45,height:0.935}
