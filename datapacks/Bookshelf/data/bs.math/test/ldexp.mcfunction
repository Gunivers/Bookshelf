# ldexp returns the correct values
# @batch bs.math

data modify storage bs:in math.ldexp set value {x:.652,e:-3}
function #bs.math:ldexp
execute store result score #result bs.data run data get storage bs:out math.ldexp 10000
assert score #result bs.data matches 814..816

data modify storage bs:in math.ldexp set value {x:-.725,e:3}
function #bs.math:ldexp
execute store result score #result bs.data run data get storage bs:out math.ldexp
assert score #result bs.data matches -6

data modify storage bs:in math.ldexp set value {x:.85,e:11}
function #bs.math:ldexp
execute store result score #result bs.data run data get storage bs:out math.ldexp 10000
assert score #result bs.data matches 17407999..17408001
