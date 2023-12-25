execute unless score #move.cf bs.data matches 4..5 store result storage bs:ctx x double .001 run scoreboard players operation #move.vx bs.data -= #move.rx bs.data
execute unless score #move.cf bs.data matches 2..3 store result storage bs:ctx z double .001 run scoreboard players operation #move.vz bs.data -= #move.rz bs.data
execute unless score #move.cf bs.data matches 0..1 store result storage bs:ctx y double .001 run scoreboard players operation #move.vy bs.data -= #move.ry bs.data

execute if score #move.cf bs.data matches 4..5 store result storage bs:ctx x double .001 run scoreboard players set @s bs.vel.x 0
execute if score #move.cf bs.data matches 2..3 store result storage bs:ctx z double .001 run scoreboard players set @s bs.vel.z 0
execute if score #move.cf bs.data matches 0..1 store result storage bs:ctx y double .001 run scoreboard players set @s bs.vel.y 0

execute at @s run function bs.move:tp_by_vel/apply with storage bs:ctx
