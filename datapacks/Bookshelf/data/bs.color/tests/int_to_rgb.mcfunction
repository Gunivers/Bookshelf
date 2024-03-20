# Color is converted the right way
# @batch bs.color

function #bs.color:int_to_rgb {color:15886907}
assert score $color.int_to_rgb.r bs.out matches 242
assert score $color.int_to_rgb.g bs.out matches 106
assert score $color.int_to_rgb.b bs.out matches 59
assert data storage bs:out color{int_to_rgb:[242,106,59]}

function #bs.color:int_to_rgb {color:2803797}
assert data storage bs:out color{int_to_rgb:[42,200,85]}

function #bs.color:int_to_rgb {color:5839296}
assert data storage bs:out color{int_to_rgb:[89,25,192]}
