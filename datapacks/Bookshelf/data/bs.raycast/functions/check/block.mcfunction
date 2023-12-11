scoreboard players operation #raycast.lx bs.data -= #raycast.dx bs.data
scoreboard players operation #raycast.ly bs.data -= #raycast.dy bs.data
scoreboard players operation #raycast.lz bs.data -= #raycast.dz bs.data

execute unless block ~ ~ ~ #bs.hitbox:is_shaped run return run function bs.raycast:collide/cube
function #bs.hitbox:get_block
function bs.raycast:check/shape

scoreboard players operation #raycast.lx bs.data += #raycast.dx bs.data
scoreboard players operation #raycast.ly bs.data += #raycast.dy bs.data
scoreboard players operation #raycast.lz bs.data += #raycast.dz bs.data
