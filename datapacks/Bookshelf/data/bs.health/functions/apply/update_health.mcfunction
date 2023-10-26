execute store result score #health.max bs.data run attribute @s minecraft:generic.max_health get 100000
execute store result score #health.points bs.data run data get entity @s Health 100000

execute store result storage bs:_ max double 0.00001 run scoreboard players operation #health.max bs.data += @s bs.health.max
scoreboard players operation #health.points bs.data += @s bs.health.points
execute store result storage bs:_ points double 0.00001 run scoreboard players operation #health.points bs.data < #health.max bs.data

scoreboard players reset @s bs.health.max
execute if score #health.points bs.data matches ..0 run kill @s[gamemode=!creative,gamemode=!spectator,tag=!bs.health.is_immortal]
execute if score @s bs.health.points matches ..-1 run function bs.health:apply/decrease_health with storage bs:_
execute if score @s[tag=!bs.health.break] bs.health.points matches 1.. run function bs.health:apply/increase_health with storage bs:_

tag @s remove bs.health.break
execute if entity @s[scores={bs.health.max=0..}] run tag @s add bs.health.break
execute unless entity @s[tag=bs.health.break] run function bs.health:apply/set_max_health with storage bs:_
