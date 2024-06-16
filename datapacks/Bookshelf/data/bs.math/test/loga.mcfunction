# loga returns the correct values
# @batch bs.math

data modify storage bs:in math.loga set value {x:28.0,a:5}
function #bs.math:loga
execute store result score #result bs.data run data get storage bs:out math.loga 10000
assert score #result bs.data matches 20703..20705

data modify storage bs:in math.loga set value {x:123456789.0,a:3}
function #bs.math:loga
execute store result score #result bs.data run data get storage bs:out math.loga 10000
assert score #result bs.data matches 169589..169591

data modify storage bs:in math.loga set value {x:1234.4321,a:9}
function #bs.math:loga
execute store result score #result bs.data run data get storage bs:out math.loga 10000
assert score #result bs.data matches 32396..32398
