execute if score #math.frexp bs.data matches 1 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 1073741824
execute if score #math.frexp bs.data matches 1 run return run data modify storage bs:out math.frexp.e set value 1
execute if score #math.frexp bs.data matches 2..3 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 536870912
execute if score #math.frexp bs.data matches 2..3 run return run data modify storage bs:out math.frexp.e set value 2
execute if score #math.frexp bs.data matches 4..7 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 268435456
execute if score #math.frexp bs.data matches 4..7 run return run data modify storage bs:out math.frexp.e set value 3
execute if score #math.frexp bs.data matches 8..15 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 134217728
execute if score #math.frexp bs.data matches 8..15 run return run data modify storage bs:out math.frexp.e set value 4
execute if score #math.frexp bs.data matches 16..31 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 67108864
execute if score #math.frexp bs.data matches 16..31 run return run data modify storage bs:out math.frexp.e set value 5
execute if score #math.frexp bs.data matches 32..63 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 33554432
execute if score #math.frexp bs.data matches 32..63 run return run data modify storage bs:out math.frexp.e set value 6
execute if score #math.frexp bs.data matches 64..127 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 16777216
execute if score #math.frexp bs.data matches 64..127 run return run data modify storage bs:out math.frexp.e set value 7
execute store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 8388608
return run data modify storage bs:out math.frexp.e set value 8
