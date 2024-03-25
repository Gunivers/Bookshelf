# Color is converted the right way
# @batch bs.color

execute store result score #result bs.data run function #bs.color:rgb_to_int {color:[242,106,59]}
assert data storage bs:out color{rgb_to_int:15886907}
assert score $color.rgb_to_int bs.out matches 15886907
assert score #result bs.data matches 15886907

execute store result score #result bs.data run function #bs.color:rgb_to_int {color:[42,200,85]}
assert score #result bs.data matches 2803797

execute store result score #result bs.data run function #bs.color:rgb_to_int {color:[89,25,192]}
assert score #result bs.data matches 5839296
