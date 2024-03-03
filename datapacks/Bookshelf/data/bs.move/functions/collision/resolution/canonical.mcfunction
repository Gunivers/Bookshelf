# compute the collision point and remaining velocity
scoreboard players operation $move.vel_remaining.x bs.out = #move.vx bs.data
scoreboard players operation $move.vel_remaining.y bs.out = #move.vy bs.data
scoreboard players operation $move.vel_remaining.z bs.out = #move.vz bs.data
scoreboard players operation $move.vel_remaining.x bs.out *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.y bs.out *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.z bs.out *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.x bs.out /= -1000 bs.const
scoreboard players operation $move.vel_remaining.y bs.out /= -1000 bs.const
scoreboard players operation $move.vel_remaining.z bs.out /= -1000 bs.const

# move the entity out of the collision
execute if score $move.hit_face bs.out matches 5 run scoreboard players add #move.x bs.data 1
execute if score $move.hit_face bs.out matches 4 run scoreboard players remove #move.x bs.data 1
execute if score $move.hit_face bs.out matches 3 run scoreboard players add #move.z bs.data 1
execute if score $move.hit_face bs.out matches 2 run scoreboard players remove #move.z bs.data 1
execute if score $move.hit_face bs.out matches 1 run scoreboard players add #move.y bs.data 1
execute if score $move.hit_face bs.out matches 0 run scoreboard players remove #move.y bs.data 1
execute store result storage bs:ctx x double .001 run scoreboard players operation #move.x bs.data -= $move.vel_remaining.x bs.out
execute store result storage bs:ctx y double .001 run scoreboard players operation #move.y bs.data -= $move.vel_remaining.y bs.out
execute store result storage bs:ctx z double .001 run scoreboard players operation #move.z bs.data -= $move.vel_remaining.z bs.out
function bs.move:collision/resolution/tp with storage bs:ctx
scoreboard players operation $move.vel_remaining.x bs.out += #move.vx bs.data
scoreboard players operation $move.vel_remaining.y bs.out += #move.vy bs.data
scoreboard players operation $move.vel_remaining.z bs.out += #move.vz bs.data

# resolve the collision using the on_collision callback
$function $(on_collision)
