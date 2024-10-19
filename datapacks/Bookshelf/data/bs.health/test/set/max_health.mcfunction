# Max HP are set correctly
# @batch bs.health
# @dummy

function #bs.health:set_max_health {points:10}
execute store result score #r bs.ctx run attribute @s minecraft:generic.max_health get
assert score #r bs.ctx matches 10

function #bs.health:set_max_health {points:20}
execute store result score #r bs.ctx run attribute @s minecraft:generic.max_health get
assert score #r bs.ctx matches 20
