execute if score #bitwise.xor.0 bs.data >= #bitwise.xor.msb bs.data unless score #bitwise.xor.1 bs.data >= #bitwise.xor.msb bs.data run scoreboard players operation $bitwise.xor bs.out += #bitwise.xor.msb bs.data
execute if score #bitwise.xor.1 bs.data >= #bitwise.xor.msb bs.data unless score #bitwise.xor.0 bs.data >= #bitwise.xor.msb bs.data run scoreboard players operation $bitwise.xor bs.out += #bitwise.xor.msb bs.data

execute if score #bitwise.xor.0 bs.data >= #bitwise.xor.msb bs.data run scoreboard players operation #bitwise.xor.0 bs.data -= #bitwise.xor.msb bs.data
execute if score #bitwise.xor.1 bs.data >= #bitwise.xor.msb bs.data run scoreboard players operation #bitwise.xor.1 bs.data -= #bitwise.xor.msb bs.data
scoreboard players operation #bitwise.xor.msb bs.data /= 2 bs.const

execute if score #bitwise.xor.0 bs.data matches 0 if score #bitwise.xor.1 bs.data matches 0 run return 1
function bs.bitwise:xor/loop
