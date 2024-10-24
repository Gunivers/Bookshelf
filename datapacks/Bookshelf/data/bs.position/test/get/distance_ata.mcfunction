# Distance as to at is correct
# @batch bs.position
# @dummy

execute at @s positioned ^ ^ ^7.5 store result score #r bs.ctx run function #bs.position:get_distance_ata {scale:10}
assert score #r bs.ctx matches 74..76
