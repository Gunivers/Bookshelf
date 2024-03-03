# get a vector that represent the remaining distance to travel
execute store result storage bs:ctx x double .001 run scoreboard players get $move.vel_remaining.x bs.out
execute store result storage bs:ctx y double .001 run scoreboard players get $move.vel_remaining.y bs.out
execute store result storage bs:ctx z double .001 run scoreboard players get $move.vel_remaining.z bs.out

# set a component to 0 depending on the surface that was hit
execute if score $move.hit_face bs.out matches 4..5 store result storage bs:ctx x double .001 run scoreboard players set @s bs.vel.x 0
execute if score $move.hit_face bs.out matches 0..1 store result storage bs:ctx y double .001 run scoreboard players set @s bs.vel.y 0
execute if score $move.hit_face bs.out matches 2..3 store result storage bs:ctx z double .001 run scoreboard players set @s bs.vel.z 0

# travel the remaining distance
execute at @s run function #bs.move:on_collision/continue with storage bs:ctx
