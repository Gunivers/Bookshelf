# Relative pos as to at returns correct values
# @batch bs.position
# @dummy

execute at @s positioned ~-2.7 ~-5.2 ~-3.4 run function #bs.position:get_relative_ata {scale:10}

assert score @s bs.pos.x matches 27
assert score @s bs.pos.y matches 52
assert score @s bs.pos.z matches 34
