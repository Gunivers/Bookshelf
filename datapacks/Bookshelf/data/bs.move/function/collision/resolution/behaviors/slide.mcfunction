# set a component to 0 depending on the surface that was hit
execute if score $move.hit_face bs.data matches 4..5 store result score $move.vel_remaining.x bs.data run scoreboard players set @s bs.vel.x 0
execute if score $move.hit_face bs.data matches 0..1 store result score $move.vel_remaining.y bs.data run scoreboard players set @s bs.vel.y 0
execute if score $move.hit_face bs.data matches 2..3 store result score $move.vel_remaining.z bs.data run scoreboard players set @s bs.vel.z 0
