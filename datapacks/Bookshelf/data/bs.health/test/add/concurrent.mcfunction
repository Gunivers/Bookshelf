# Max HP and HP are added or removed correctly in a single tick
# @batch bs.health
# @dummy

function #bs.health:add_health {points:5.0}
function #bs.health:add_max_health {points:10.0}
function #bs.health:add_health {points:5.0}
function #bs.health:add_health {points:-10.0}
execute store result score #r bs.ctx run data get entity @s Health
assert score #r bs.ctx matches 15

function #bs.health:add_health {points:20.0}
await delay 1t
execute store result score #r bs.ctx run data get entity @s Health
assert score #r bs.ctx matches 30
