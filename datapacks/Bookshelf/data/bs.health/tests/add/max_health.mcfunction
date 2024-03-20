# Max HP are added or removed correctly
# @batch bs.health
# @dummy

function #bs.health:add_max_health {points:10}
execute store result score #result bs.data run attribute @s minecraft:generic.max_health get
assert score #result bs.data matches 30

function #bs.health:add_max_health {points:-5}
execute store result score #result bs.data run attribute @s minecraft:generic.max_health get
assert score #result bs.data matches 25
