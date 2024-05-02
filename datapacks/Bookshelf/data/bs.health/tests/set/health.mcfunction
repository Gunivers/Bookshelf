# HP are set correctly
# @batch bs.health
# @dummy

function #bs.health:set_health {points:10}
execute store result score #result bs.data run data get entity @s Health
assert score #result bs.data matches 10

function #bs.health:set_health {points:15}
await delay 1t
execute store result score #result bs.data run data get entity @s Health
assert score #result bs.data matches 15
