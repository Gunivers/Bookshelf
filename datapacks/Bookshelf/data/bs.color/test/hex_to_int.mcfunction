# Color is converted the right way
# @batch bs.color

execute store result score #r bs.ctx run function #bs.color:hex_to_int {color:"#F26A3B"}
assert data storage bs:out color{hex_to_int:15886907}
assert score $color.hex_to_int bs.out matches 15886907
assert score #r bs.ctx matches 15886907

execute store result score #r bs.ctx run function #bs.color:hex_to_int {color:"#2AC855"}
assert score #r bs.ctx matches 2803797

execute store result score #r bs.ctx run function #bs.color:hex_to_int {color:"#5919C0"}
assert score #r bs.ctx matches 5839296
