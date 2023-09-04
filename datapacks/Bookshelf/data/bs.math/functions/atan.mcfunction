scoreboard players operation $math.atan2.x bs.in = $math.atan.value bs.in
scoreboard players set $math.atan2.y bs.in 1000
function #bs.math:atan2
scoreboard players operation $math.atan bs.out = $math.atan2 bs.out
