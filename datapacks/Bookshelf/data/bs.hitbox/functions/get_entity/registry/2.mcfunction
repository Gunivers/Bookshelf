# area_effect_cloud group
data modify storage bs:out hitbox set value {width:0,height:0.5}
execute store result score #hitbox.width bs.data run data get entity @s Radius 20000000
execute store result storage bs:out hitbox.width double .0000001 run scoreboard players operation #hitbox.width bs.data *= #hitbox.scale bs.data
