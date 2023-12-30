# get a vector that represent the remaining distance to travel
execute store result storage bs:ctx x double .001 run scoreboard players operation #move.vx bs.data -= #move.rx bs.data
execute store result storage bs:ctx z double .001 run scoreboard players operation #move.vz bs.data -= #move.rz bs.data
execute store result storage bs:ctx y double .001 run scoreboard players operation #move.vy bs.data -= #move.ry bs.data

# reverse a component depending on the surface that was hit
execute if score #move.cf bs.data matches 4..5 store result storage bs:ctx x double .001 run scoreboard players operation #move.vx bs.data *= -1 bs.const
execute if score #move.cf bs.data matches 2..3 store result storage bs:ctx z double .001 run scoreboard players operation #move.vz bs.data *= -1 bs.const
execute if score #move.cf bs.data matches 0..1 store result storage bs:ctx y double .001 run scoreboard players operation #move.vy bs.data *= -1 bs.const
execute if score #move.cf bs.data matches 4..5 run scoreboard players operation @s bs.vel.x *= -1 bs.const
execute if score #move.cf bs.data matches 2..3 run scoreboard players operation @s bs.vel.z *= -1 bs.const
execute if score #move.cf bs.data matches 0..1 run scoreboard players operation @s bs.vel.y *= -1 bs.const

# travel the remaining distance
execute at @s run function bs.move:tp_by_vel/apply with storage bs:ctx
