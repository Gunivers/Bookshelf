execute store result score #health.max bs.data run attribute @s minecraft:generic.max_health get 100000
execute store result score #health.points bs.data store result score #health.check bs.data run data get entity @s Health 100000

execute store result storage bs:data health.max double 0.00001 run scoreboard players operation #health.max bs.data += @s bs.health.max
scoreboard players operation #health.check bs.data += @s bs.health.points
scoreboard players operation #health.check bs.data -= #health.max bs.data
execute if score #health.check bs.data matches 1.. run scoreboard players operation @s bs.health.points -= #health.check bs.data
execute store result storage bs:data health.points double 0.00001 run scoreboard players operation #health.points bs.data += @s bs.health.points

scoreboard players reset @s bs.health.max
execute if score #health.points bs.data matches ..0 run kill @s[gamemode=!creative,gamemode=!spectator,tag=!bs.health.is_immortal]
execute if score @s[tag=!bs.health.skip_tick] bs.health.points matches 1.. run function bs.health:apply/add_health with storage bs:data health
execute if score @s[tag=!bs.health.skip_tick] bs.health.points matches ..-1 run function bs.health:apply/remove_health with storage bs:data health
scoreboard players reset @s[tag=!bs.health.skip_tick] bs.health.points

tag @s remove bs.health.skip_tick
execute unless entity @s[scores={bs.health.max=0..}] run function bs.health:apply/set_max_health with storage bs:data health
execute if entity @s[scores={bs.health.max=0..}] run tag @s add bs.health.skip_tick
