# set all components to 0 to cancel the movement
execute store result score $move.vel_remaining.x bs.data run scoreboard players set @s bs.vel.x 0
execute store result score $move.vel_remaining.y bs.data run scoreboard players set @s bs.vel.y 0
execute store result score $move.vel_remaining.z bs.data run scoreboard players set @s bs.vel.z 0
