# pufferfish group
execute store result score #result bs.data run data get entity @s PuffState
execute if score #result bs.data matches 0 run data modify storage bs:out hitbox set value {width:0.35,height:0.35}
execute if score #result bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.48999998,height:0.48999998}
execute if score #result bs.data matches 2 run data modify storage bs:out hitbox set value {width:0.7,height:0.7}
