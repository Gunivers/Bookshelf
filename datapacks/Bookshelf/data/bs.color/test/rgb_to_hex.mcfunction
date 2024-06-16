# Color is converted the right way
# @batch bs.color

function #bs.color:rgb_to_hex {color:[242,106,59]}
assert data storage bs:out color{rgb_to_hex:"#f26a3b"}

function #bs.color:rgb_to_hex {color:[42,200,85]}
assert data storage bs:out color{rgb_to_hex:"#2ac855"}

function #bs.color:rgb_to_hex {color:[89,25,192]}
assert data storage bs:out color{rgb_to_hex:"#5919c0"}
