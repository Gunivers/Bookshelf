execute unless block ~ ~ ~ #bs.hitbox:is_shaped run return run function bs.move:collision/check/cube
function #bs.hitbox:get_block
scoreboard players operation $hitbox.offset.x bs.out *= 1000 bs.const
scoreboard players operation $hitbox.offset.z bs.out *= 1000 bs.const
scoreboard players operation #move.x1 bs.data += $hitbox.offset.x bs.out
scoreboard players operation #move.z1 bs.data += $hitbox.offset.z bs.out
function bs.move:collision/check/shape
