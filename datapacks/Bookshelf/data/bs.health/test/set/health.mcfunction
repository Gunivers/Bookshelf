# HP are set correctly
# @batch bs.health
# @dummy

function #bs.health:set_health {points:10}
execute store result score #r bs.ctx run data get entity @s Health
assert score #r bs.ctx matches 10

function #bs.health:set_health {points:15}
await delay 1t
execute store result score #r bs.ctx run data get entity @s Health
assert score #r bs.ctx matches 15
