# Get HP returns correct value
# @batch bs.health
# @dummy

execute store result score #result bs.data run function #bs.health:get_health {scale:1}
assert score #result bs.data matches 20

attribute @s minecraft:generic.max_health modifier add 68f0b501-5dca-4abb-8b69-057945a9583d "bs.health" -5 add
execute store result score #result bs.data run function #bs.health:get_health {scale:1}
assert score #result bs.data matches 15
