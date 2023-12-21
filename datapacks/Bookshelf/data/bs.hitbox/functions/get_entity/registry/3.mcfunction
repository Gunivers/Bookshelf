# armor_stand group
data modify storage bs:ctx _ set from entity @s
scoreboard players set @s bs.width 500
scoreboard players set @s bs.height 1975
execute if data storage bs:ctx _{Small:1b} run scoreboard players set @s bs.width 250
execute if data storage bs:ctx _{Small:1b} run scoreboard players set @s bs.height 987
execute if data storage bs:ctx _{Marker:1b} run scoreboard players set @s bs.width 0
execute if data storage bs:ctx _{Marker:1b} run scoreboard players set @s bs.height 0
