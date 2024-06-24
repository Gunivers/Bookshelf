# Relative pos as to at returns correct values
# @batch bs.position
# @dummy

execute at @s rotated 35 -18 run function #bs.position:get_relative_from_dir {scale:1000}

assert score @s bs.pos.x matches -546..-544
assert score @s bs.pos.y matches 307..309
assert score @s bs.pos.z matches 778..780
