execute if entity @s[type=!minecraft:player] run return -1
execute unless score #health.set_health.check bs.data = $health.set_health.points bs.in store result storage bs:in health.set_health.points double 1 run scoreboard players operation #health.set_health.check bs.data = $health.set_health.points bs.in
execute store result score @s bs.health.points run data get storage bs:in health.set_health.points 100000
execute if entity @s[tag=!bs.health.skip_tick] store result score #health.points bs.data run data get entity @s Health 100000
execute if entity @s[tag=bs.health.skip_tick] store result score #health.points bs.data run attribute @s minecraft:generic.max_health get 100000
scoreboard players operation @s bs.health.points -= #health.points bs.data
