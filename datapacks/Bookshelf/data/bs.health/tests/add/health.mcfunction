# HP are added or removed correctly
# @batch bs.health
# @dummy

function #bs.health:add_health {points:-10}
execute store result score #result bs.data run data get entity @s Health
assert score #result bs.data matches 10

function #bs.health:add_health {points:5}
await delay 1t
execute store result score #result bs.data run data get entity @s Health
assert score #result bs.data matches 15
