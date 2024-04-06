# compute the collision point and remaining velocity
scoreboard players operation $move.vel_remaining.x bs.data = #move.vx bs.data
scoreboard players operation $move.vel_remaining.y bs.data = #move.vy bs.data
scoreboard players operation $move.vel_remaining.z bs.data = #move.vz bs.data
scoreboard players operation $move.vel_remaining.x bs.data *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.y bs.data *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.z bs.data *= #move.ctime bs.data
scoreboard players operation $move.vel_remaining.x bs.data /= -1000 bs.const
scoreboard players operation $move.vel_remaining.y bs.data /= -1000 bs.const
scoreboard players operation $move.vel_remaining.z bs.data /= -1000 bs.const

# move the entity out of the collision
execute if score $move.hit_face bs.data matches 5 run scoreboard players add #move.x bs.data 1
execute if score $move.hit_face bs.data matches 4 run scoreboard players remove #move.x bs.data 1
execute if score $move.hit_face bs.data matches 3 run scoreboard players add #move.z bs.data 1
execute if score $move.hit_face bs.data matches 2 run scoreboard players remove #move.z bs.data 1
execute if score $move.hit_face bs.data matches 1 run scoreboard players add #move.y bs.data 1
execute if score $move.hit_face bs.data matches 0 run scoreboard players remove #move.y bs.data 1
execute store result storage bs:ctx x double .001 run scoreboard players operation #move.x bs.data -= $move.vel_remaining.x bs.data
execute store result storage bs:ctx y double .001 run scoreboard players operation #move.y bs.data -= $move.vel_remaining.y bs.data
execute store result storage bs:ctx z double .001 run scoreboard players operation #move.z bs.data -= $move.vel_remaining.z bs.data
function bs.move:collision/resolution/teleport with storage bs:ctx
scoreboard players operation $move.vel_remaining.x bs.data += #move.vx bs.data
scoreboard players operation $move.vel_remaining.y bs.data += #move.vy bs.data
scoreboard players operation $move.vel_remaining.z bs.data += #move.vz bs.data

# resolve collision using the on_collision callback (ensure the velocity vector is in canonical space for simpler transformation)
execute if score #move.is_local bs.data matches 1 rotated as @s run function #bs.move:local_to_canonical
$function $(on_collision)
execute store result storage bs:ctx x double .001 run scoreboard players get $move.vel_remaining.x bs.data
execute store result storage bs:ctx y double .001 run scoreboard players get $move.vel_remaining.y bs.data
execute store result storage bs:ctx z double .001 run scoreboard players get $move.vel_remaining.z bs.data
execute unless data storage bs:ctx {x:0d,y:0d,z:0d} at @s run function bs.move:teleport/canonical/run with storage bs:ctx
execute if score #move.is_local bs.data matches 1 rotated as @s run function #bs.move:canonical_to_local
