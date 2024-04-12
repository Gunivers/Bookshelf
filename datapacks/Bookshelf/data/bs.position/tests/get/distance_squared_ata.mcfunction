# Squared distance as to at is correct
# @batch bs.position
# @dummy

execute at @s positioned ^ ^ ^7.5 store result score #result bs.data run function #bs.position:get_distance_squared_ata {scale:10}
assert score #result bs.data matches 5624..5626
