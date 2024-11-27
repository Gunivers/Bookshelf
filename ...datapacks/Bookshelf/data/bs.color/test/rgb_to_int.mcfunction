# Color is converted the right way
# @batch bs.color

execute store result score #r bs.ctx run function #bs.color:rgb_to_int {color:[242,106,59]}
assert data storage bs:out color{rgb_to_int:15886907}
assert score $color.rgb_to_int bs.out matches 15886907
assert score #r bs.ctx matches 15886907

execute store result score #r bs.ctx run function #bs.color:rgb_to_int {color:[42,200,85]}
assert score #r bs.ctx matches 2803797

execute store result score #r bs.ctx run function #bs.color:rgb_to_int {color:[89,25,192]}
assert score #r bs.ctx matches 5839296
