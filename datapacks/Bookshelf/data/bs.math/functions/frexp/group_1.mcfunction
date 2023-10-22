execute if score $bitwise.size bs.out matches 0 run data modify storage bs:out math.frexp.x set from storage bs:in math.frexp.value
execute if score $bitwise.size bs.out matches 1 store result storage bs:out math.frexp.x double .000000005 run data get storage bs:in math.frexp.value 100000000
execute if score $bitwise.size bs.out matches 2 store result storage bs:out math.frexp.x double .0000000025 run data get storage bs:in math.frexp.value 100000000
execute if score $bitwise.size bs.out matches 3 store result storage bs:out math.frexp.x double .00000000125 run data get storage bs:in math.frexp.value 100000000
execute if score $bitwise.size bs.out matches 4 store result storage bs:out math.frexp.x double .000000000625 run data get storage bs:in math.frexp.value 100000000
execute if score $bitwise.size bs.out matches 5 store result storage bs:out math.frexp.x double .000000003125 run data get storage bs:in math.frexp.value 10000000
execute if score $bitwise.size bs.out matches 6 store result storage bs:out math.frexp.x double .0000000015625 run data get storage bs:in math.frexp.value 10000000
execute if score $bitwise.size bs.out matches 7 store result storage bs:out math.frexp.x double .00000000078125 run data get storage bs:in math.frexp.value 10000000
