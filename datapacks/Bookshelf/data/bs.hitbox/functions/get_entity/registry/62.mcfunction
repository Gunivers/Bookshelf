# warden group
execute at @s positioned ~ ~1.5 ~ store result score #result bs.data unless entity @s[dx=0]
execute if score #result bs.data matches 0 run data modify storage bs:out hitbox set value {width:0.9,height:2.9}
execute if score #result bs.data matches 1 run data modify storage bs:out hitbox set value {width:0.9,height:1.0}
