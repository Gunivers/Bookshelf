# Color is converted the right way
# @batch bs.color

function #bs.color:int_to_hex {color:15886907}
assert data storage bs:out color{int_to_hex:"#f26a3b"}

function #bs.color:int_to_hex {color:2803797}
assert data storage bs:out color{int_to_hex:"#2ac855"}

function #bs.color:int_to_hex {color:5839296}
assert data storage bs:out color{int_to_hex:"#5919c0"}
