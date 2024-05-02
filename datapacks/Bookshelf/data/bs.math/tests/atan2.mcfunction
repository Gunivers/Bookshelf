# atan2 returns the correct values
# @batch bs.math

scoreboard players set $math.atan2.y bs.in 420
scoreboard players set $math.atan2.x bs.in -700
function #bs.math:atan2
assert score $math.atan2 bs.out matches 14902..14904

scoreboard players set $math.atan2.y bs.in -826
scoreboard players set $math.atan2.x bs.in 200
function #bs.math:atan2
assert score $math.atan2 bs.out matches -7639..-7637
