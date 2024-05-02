# horse_like group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 run data modify storage bs:out hitbox set value {width:1.3964844,height:1.6}
execute if score #success bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.6982422,height:0.8}
