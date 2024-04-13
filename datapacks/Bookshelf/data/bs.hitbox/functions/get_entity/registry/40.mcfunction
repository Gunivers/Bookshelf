# phantom group
data modify storage bs:out hitbox set value {}
execute store result score #result bs.data run data get entity @s Size 15
scoreboard players add #result bs.data 100
scoreboard players set #hitbox.width bs.data 9
scoreboard players set #hitbox.height bs.data 5
execute store result storage bs:out hitbox.width double .001 run scoreboard players operation #hitbox.width bs.data *= #result bs.data
execute store result storage bs:out hitbox.height double .001 run scoreboard players operation #hitbox.height bs.data *= #result bs.data
