execute unless block ~ ~ ~ #bs.hitbox:is_composite run return run function bs.raycast:block/collide/cube

function #bs.hitbox:get_block
execute if score #raycast.ux bs.data matches 0.. run scoreboard players operation #raycast.lx bs.data -= #raycast.dx bs.data
execute if score #raycast.uy bs.data matches 0.. run scoreboard players operation #raycast.ly bs.data -= #raycast.dy bs.data
execute if score #raycast.uz bs.data matches 0.. run scoreboard players operation #raycast.lz bs.data -= #raycast.dz bs.data
scoreboard players operation $hitbox.offset.x bs.out *= 1000 bs.const
scoreboard players operation $hitbox.offset.z bs.out *= 1000 bs.const
function bs.raycast:block/check/shape
execute if score #raycast.ux bs.data matches 0.. run scoreboard players operation #raycast.lx bs.data += #raycast.dx bs.data
execute if score #raycast.uy bs.data matches 0.. run scoreboard players operation #raycast.ly bs.data += #raycast.dy bs.data
execute if score #raycast.uz bs.data matches 0.. run scoreboard players operation #raycast.lz bs.data += #raycast.dz bs.data
