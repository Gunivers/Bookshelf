# armor_stand group
data modify storage bs:ctx _ set from entity @s
data modify storage bs:out hitbox set value {width:0.5,height:1.975}
execute if data storage bs:ctx _{Small:1b} run data modify storage bs:out hitbox set value {width:0.25,height:0.9875}
execute if data storage bs:ctx _{Marker:1b} run data modify storage bs:out hitbox set value {width:0.0,height:0.0}
