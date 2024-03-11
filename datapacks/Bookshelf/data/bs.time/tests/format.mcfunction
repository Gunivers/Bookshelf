# Time format is valid
# @batch bs.time

scoreboard players set $time.hours bs.out -1
scoreboard players set $time.minutes bs.out -1
scoreboard players set $time.seconds bs.out -1
function #bs.time:get
assert score $time.hours bs.out matches 0..
assert score $time.minutes bs.out matches 0..
assert score $time.seconds bs.out matches 0..
