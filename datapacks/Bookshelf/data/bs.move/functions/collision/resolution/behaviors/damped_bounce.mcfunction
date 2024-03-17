# reverse a component depending on the surface that was hit
execute if score $move.hit_face bs.out matches 4..5 run scoreboard players operation $move.vel_remaining.x bs.out /= -2 bs.const
execute if score $move.hit_face bs.out matches 0..1 run scoreboard players operation $move.vel_remaining.y bs.out /= -2 bs.const
execute if score $move.hit_face bs.out matches 2..3 run scoreboard players operation $move.vel_remaining.z bs.out /= -2 bs.const

# reverse a component and reduce the speed by a factor of 2
execute if score $move.hit_face bs.out matches 4..5 run scoreboard players operation @s bs.vel.x /= -2 bs.const
execute if score $move.hit_face bs.out matches 0..1 run scoreboard players operation @s bs.vel.y /= -2 bs.const
execute if score $move.hit_face bs.out matches 2..3 run scoreboard players operation @s bs.vel.z /= -2 bs.const
execute unless score $move.hit_face bs.out matches 4..5 run scoreboard players operation @s bs.vel.x /= 2 bs.const
execute unless score $move.hit_face bs.out matches 0..1 run scoreboard players operation @s bs.vel.y /= 2 bs.const
execute unless score $move.hit_face bs.out matches 2..3 run scoreboard players operation @s bs.vel.z /= 2 bs.const

# get a vector that represent the remaining distance to travel
execute store result storage bs:ctx x double .001 run scoreboard players get $move.vel_remaining.x bs.out
execute store result storage bs:ctx y double .001 run scoreboard players get $move.vel_remaining.y bs.out
execute store result storage bs:ctx z double .001 run scoreboard players get $move.vel_remaining.z bs.out

# travel the remaining distance
execute at @s run function #bs.move:on_collision/continue with storage bs:ctx
