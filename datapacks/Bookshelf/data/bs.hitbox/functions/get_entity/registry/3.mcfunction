# armor_stand group
data modify storage bs:ctx _ set from entity @s
scoreboard players set $hitbox.width bs.out 500000
scoreboard players set $hitbox.height bs.out 1975000
execute if data storage bs:ctx _{Small:1b} run scoreboard players set $hitbox.width bs.out 250000
execute if data storage bs:ctx _{Small:1b} run scoreboard players set $hitbox.height bs.out 987500
execute if data storage bs:ctx _{Marker:1b} run scoreboard players set $hitbox.width bs.out 0
execute if data storage bs:ctx _{Marker:1b} run scoreboard players set $hitbox.height bs.out 0
