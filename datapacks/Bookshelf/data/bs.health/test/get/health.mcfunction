# Get HP returns correct value
# @batch bs.health
# @dummy

execute store result score #r bs.ctx run function #bs.health:get_health {scale:1}
assert score #r bs.ctx matches 20

attribute @s minecraft:max_health modifier add bs.health:limit -5 add_value
execute store result score #r bs.ctx run function #bs.health:get_health {scale:1}
assert score #r bs.ctx matches 15
