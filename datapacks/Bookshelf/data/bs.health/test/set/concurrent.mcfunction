# Max HP and HP are set correctly in a single tick
# @batch bs.health
# @dummy

function #bs.health:set_health {points:10.0}
function #bs.health:set_max_health {points:30.0}
execute store result score #result bs.data run data get entity @s Health
assert score #result bs.data matches 10

function #bs.health:set_max_health {points:20.0}
function #bs.health:set_health {points:30.0}
await delay 1t
execute store result score #result bs.data run data get entity @s Health
assert score #result bs.data matches 20
