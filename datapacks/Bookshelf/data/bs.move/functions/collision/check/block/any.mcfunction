execute unless block ~ ~ ~ #bs.hitbox:is_composite run return run function bs.move:collision/check/block/cube

function #bs.hitbox:get_block
execute store result score #move.ox bs.data run data get storage bs:out hitbox.offset.x 1000000
execute store result score #move.oz bs.data run data get storage bs:out hitbox.offset.z 1000000
scoreboard players operation #move.ox bs.data += #move.rx bs.data
scoreboard players operation #move.oz bs.data += #move.rz bs.data
function bs.move:collision/check/block/shape
