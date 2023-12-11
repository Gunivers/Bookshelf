execute if score #math.frexp bs.data matches 16777216..33554431 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 64
execute if score #math.frexp bs.data matches 16777216..33554431 run return run data modify storage bs:out math.frexp.e set value 25
execute if score #math.frexp bs.data matches 33554432..67108863 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 32
execute if score #math.frexp bs.data matches 33554432..67108863 run return run data modify storage bs:out math.frexp.e set value 26
execute if score #math.frexp bs.data matches 67108864..134217727 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 16
execute if score #math.frexp bs.data matches 67108864..134217727 run return run data modify storage bs:out math.frexp.e set value 27
execute if score #math.frexp bs.data matches 134217728..268435455 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 8
execute if score #math.frexp bs.data matches 134217728..268435455 run return run data modify storage bs:out math.frexp.e set value 28
execute if score #math.frexp bs.data matches 268435456..536870911 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 4
execute if score #math.frexp bs.data matches 268435456..536870911 run return run data modify storage bs:out math.frexp.e set value 29
execute if score #math.frexp bs.data matches 536870912..1073741823 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 2
execute if score #math.frexp bs.data matches 536870912..1073741823 run return run data modify storage bs:out math.frexp.e set value 30
execute store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 1
data modify storage bs:out math.frexp.e set value 31
