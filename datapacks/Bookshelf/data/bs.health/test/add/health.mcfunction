# HP are added or removed correctly
# @batch bs.health
# @dummy

function #bs.health:add_health {points:-10}
execute store result score #r bs.ctx run data get entity @s Health
assert score #r bs.ctx matches 10

function #bs.health:add_health {points:5}
await delay 1t
execute store result score #r bs.ctx run data get entity @s Health
assert score #r bs.ctx matches 15
