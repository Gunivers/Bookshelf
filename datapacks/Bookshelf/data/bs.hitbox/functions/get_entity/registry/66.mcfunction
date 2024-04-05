# wolf group
execute store success score #success bs.data if predicate bs.hitbox:is_baby
execute if score #success bs.data matches 0 run data modify storage bs:out hitbox set value {width:0.6,height:0.85}
execute if score #success bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.3,height:0.425}
