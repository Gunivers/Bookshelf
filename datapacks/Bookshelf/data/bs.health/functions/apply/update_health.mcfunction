execute store result score #health.points bs.data run data get entity @s Health 100000
execute store result score #health.max bs.data run attribute @s minecraft:generic.max_health get 100000

scoreboard players operation #health.points bs.data += @s bs.health.x
execute store result storage bs:ctx x double 0.00001 run scoreboard players operation #health.points bs.data < #health.max bs.data
execute store result storage bs:ctx y double 0.00001 run scoreboard players operation #health.max bs.data += @s bs.health.y
execute if score #health.points bs.data matches ..0 run kill @s[gamemode=!creative,gamemode=!spectator,tag=!bs.health.is_immortal]

execute if score @s[tag=!bs.health.break] bs.health.x matches 1.. run return run function bs.health:apply/increase_health with storage bs:ctx
execute if score @s bs.health.x matches ..-1 run function bs.health:apply/decrease_health with storage bs:ctx

function bs.health:apply/set_max_health with storage bs:ctx
