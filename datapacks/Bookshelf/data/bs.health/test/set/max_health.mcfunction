# Max HP are set correctly
# @batch bs.health
# @dummy

function #bs.health:set_max_health {points:10}
execute store result score #result bs.data run attribute @s minecraft:generic.max_health get
assert score #result bs.data matches 10

function #bs.health:set_max_health {points:20}
execute store result score #result bs.data run attribute @s minecraft:generic.max_health get
assert score #result bs.data matches 20
