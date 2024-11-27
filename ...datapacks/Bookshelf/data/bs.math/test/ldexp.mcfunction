# ldexp returns the correct values
# @batch bs.math

data modify storage bs:in math.ldexp set value {x:.652,e:-3}
function #bs.math:ldexp
execute store result score #r bs.ctx run data get storage bs:out math.ldexp 10000
assert score #r bs.ctx matches 814..816

data modify storage bs:in math.ldexp set value {x:-.725,e:3}
function #bs.math:ldexp
execute store result score #r bs.ctx run data get storage bs:out math.ldexp
assert score #r bs.ctx matches -6

data modify storage bs:in math.ldexp set value {x:.85,e:11}
function #bs.math:ldexp
execute store result score #r bs.ctx run data get storage bs:out math.ldexp 10000
assert score #r bs.ctx matches 17407999..17408001
