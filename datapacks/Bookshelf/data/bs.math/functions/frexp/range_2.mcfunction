execute if score #math.frexp bs.data matches 256..511 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 4194304
execute if score #math.frexp bs.data matches 256..511 run return run data modify storage bs:out math.frexp.e set value 9
execute if score #math.frexp bs.data matches 512..1023 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 2097152
execute if score #math.frexp bs.data matches 512..1023 run return run data modify storage bs:out math.frexp.e set value 10
execute if score #math.frexp bs.data matches 1024..2047 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 1048576
execute if score #math.frexp bs.data matches 1024..2047 run return run data modify storage bs:out math.frexp.e set value 11
execute if score #math.frexp bs.data matches 2048..4095 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 524288
execute if score #math.frexp bs.data matches 2048..4095 run return run data modify storage bs:out math.frexp.e set value 12
execute if score #math.frexp bs.data matches 4096..8191 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 262144
execute if score #math.frexp bs.data matches 4096..8191 run return run data modify storage bs:out math.frexp.e set value 13
execute if score #math.frexp bs.data matches 8192..16383 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 131072
execute if score #math.frexp bs.data matches 8192..16383 run return run data modify storage bs:out math.frexp.e set value 14
execute if score #math.frexp bs.data matches 16384..32767 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 65536
execute if score #math.frexp bs.data matches 16384..32767 run return run data modify storage bs:out math.frexp.e set value 15
execute store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 32768
return run data modify storage bs:out math.frexp.e set value 16
