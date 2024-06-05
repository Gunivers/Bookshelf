execute unless block ~ ~ ~ #bs.hitbox:is_composite run return run function bs.raycast:collide/cube

function #bs.hitbox:get_block
execute store result score #raycast.ox bs.data run data get storage bs:out hitbox.offset.x 10000000
execute store result score #raycast.oz bs.data run data get storage bs:out hitbox.offset.z 10000000

execute if score #raycast.ux bs.data matches 0.. run scoreboard players operation #raycast.lx bs.data -= #raycast.dx bs.data
execute if score #raycast.uy bs.data matches 0.. run scoreboard players operation #raycast.ly bs.data -= #raycast.dy bs.data
execute if score #raycast.uz bs.data matches 0.. run scoreboard players operation #raycast.lz bs.data -= #raycast.dz bs.data
function bs.raycast:check/block/shape
execute if score #raycast.ux bs.data matches 0.. run scoreboard players operation #raycast.lx bs.data += #raycast.dx bs.data
execute if score #raycast.uy bs.data matches 0.. run scoreboard players operation #raycast.ly bs.data += #raycast.dy bs.data
execute if score #raycast.uz bs.data matches 0.. run scoreboard players operation #raycast.lz bs.data += #raycast.dz bs.data
