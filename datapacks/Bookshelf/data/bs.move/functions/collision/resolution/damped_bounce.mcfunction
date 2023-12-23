function bs.move:collision/resolution/resolve

execute store result storage bs:ctx x double .001 run scoreboard players operation #move.vx bs.data -= #move.rx bs.data
execute store result storage bs:ctx z double .001 run scoreboard players operation #move.vz bs.data -= #move.rz bs.data
execute store result storage bs:ctx y double .001 run scoreboard players operation #move.vy bs.data -= #move.ry bs.data
execute if score #move.cf bs.data matches 4..5 store result storage bs:ctx x double .001 run scoreboard players operation #move.vx bs.data *= -1 bs.const
execute if score #move.cf bs.data matches 2..3 store result storage bs:ctx z double .001 run scoreboard players operation #move.vz bs.data *= -1 bs.const
execute if score #move.cf bs.data matches 0..1 store result storage bs:ctx y double .001 run scoreboard players operation #move.vy bs.data *= -1 bs.const

execute if score #move.cf bs.data matches 4..5 run scoreboard players operation @s bs.vel.x /= -2 bs.const
execute if score #move.cf bs.data matches 2..3 run scoreboard players operation @s bs.vel.z /= -2 bs.const
execute if score #move.cf bs.data matches 0..1 run scoreboard players operation @s bs.vel.y /= -2 bs.const
execute unless score #move.cf bs.data matches 4..5 run scoreboard players operation @s bs.vel.x /= 2 bs.const
execute unless score #move.cf bs.data matches 2..3 run scoreboard players operation @s bs.vel.z /= 2 bs.const
execute unless score #move.cf bs.data matches 0..1 run scoreboard players operation @s bs.vel.y /= 2 bs.const

execute at @s run function bs.move:tp_by_vel/apply with storage bs:ctx
