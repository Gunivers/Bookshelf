scoreboard players operation #raycast.lx bs.data -= #raycast.dx bs.data
scoreboard players operation #raycast.ly bs.data -= #raycast.dy bs.data
scoreboard players operation #raycast.lz bs.data -= #raycast.dz bs.data

function #bs.hitbox:get_entity
execute if entity @s[type=#bs.hitbox:is_shaped] run return run function bs.raycast:check/shape
function bs.raycast:check/size

scoreboard players operation #raycast.lx bs.data += #raycast.dx bs.data
scoreboard players operation #raycast.ly bs.data += #raycast.dy bs.data
scoreboard players operation #raycast.lz bs.data += #raycast.dz bs.data
