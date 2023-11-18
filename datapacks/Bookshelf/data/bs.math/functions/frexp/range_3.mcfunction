execute if score #math.frexp bs.data matches 65536..131071 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 16384
execute if score #math.frexp bs.data matches 65536..131071 run return run data modify storage bs:out math.frexp.e set value 17
execute if score #math.frexp bs.data matches 131072..262143 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 8192
execute if score #math.frexp bs.data matches 131072..262143 run return run data modify storage bs:out math.frexp.e set value 18
execute if score #math.frexp bs.data matches 262144..524287 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 4096
execute if score #math.frexp bs.data matches 262144..524287 run return run data modify storage bs:out math.frexp.e set value 19
execute if score #math.frexp bs.data matches 524288..1048575 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 2048
execute if score #math.frexp bs.data matches 524288..1048575 run return run data modify storage bs:out math.frexp.e set value 20
execute if score #math.frexp bs.data matches 1048576..2097151 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 1024
execute if score #math.frexp bs.data matches 1048576..2097151 run return run data modify storage bs:out math.frexp.e set value 21
execute if score #math.frexp bs.data matches 2097152..4194303 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 512
execute if score #math.frexp bs.data matches 2097152..4194303 run return run data modify storage bs:out math.frexp.e set value 22
execute if score #math.frexp bs.data matches 4194304..8388607 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 256
execute if score #math.frexp bs.data matches 4194304..8388607 run return run data modify storage bs:out math.frexp.e set value 23
execute store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:in math.frexp.value 128
return run data modify storage bs:out math.frexp.e set value 24
