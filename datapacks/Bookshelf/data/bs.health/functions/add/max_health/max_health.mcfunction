execute if entity @s[type=!minecraft:player] run return -1
execute unless score #health.add_max_health.check bs.data = $health.add_max_health.points bs.in store result storage bs:in health.add_max_health.points double 1 run scoreboard players operation #health.add_max_health.check bs.data = $health.add_max_health.points bs.in
execute store result score #health.max bs.data run data get storage bs:in health.add_max_health.points 100000
scoreboard players operation @s bs.health.max += #health.max bs.data
