# Get Max HP returns correct value
# @batch bs.health
# @dummy

execute store result score #r bs.ctx run function #bs.health:get_max_health {scale:1}
assert score #r bs.ctx matches 20

attribute @s minecraft:generic.max_health modifier add bs.health:limit -10 add_value
execute store result score #r bs.ctx run function #bs.health:get_max_health {scale:1}
assert score #r bs.ctx matches 20
