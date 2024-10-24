# Max HP are added or removed correctly
# @batch bs.health
# @dummy

function #bs.health:add_max_health {points:10}
execute store result score #r bs.ctx run attribute @s minecraft:max_health get
assert score #r bs.ctx matches 30

function #bs.health:add_max_health {points:-5}
execute store result score #r bs.ctx run attribute @s minecraft:max_health get
assert score #r bs.ctx matches 25
