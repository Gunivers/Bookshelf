# reverse a component depending on the surface that was hit
execute if score $move.hit_face bs.data matches 4..5 run scoreboard players operation $move.vel_remaining.x bs.data *= -1 bs.const
execute if score $move.hit_face bs.data matches 0..1 run scoreboard players operation $move.vel_remaining.y bs.data *= -1 bs.const
execute if score $move.hit_face bs.data matches 2..3 run scoreboard players operation $move.vel_remaining.z bs.data *= -1 bs.const
execute if score $move.hit_face bs.data matches 4..5 run scoreboard players operation @s bs.vel.x *= -1 bs.const
execute if score $move.hit_face bs.data matches 0..1 run scoreboard players operation @s bs.vel.y *= -1 bs.const
execute if score $move.hit_face bs.data matches 2..3 run scoreboard players operation @s bs.vel.z *= -1 bs.const
