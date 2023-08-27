execute if score #bitwise.and.0 bs.data >= #bitwise.and.msb bs.data if score #bitwise.and.1 bs.data >= #bitwise.and.msb bs.data run scoreboard players operation $bitwise.and bs.out += #bitwise.and.msb bs.data

execute if score #bitwise.and.0 bs.data >= #bitwise.and.msb bs.data run scoreboard players operation #bitwise.and.0 bs.data -= #bitwise.and.msb bs.data
execute if score #bitwise.and.1 bs.data >= #bitwise.and.msb bs.data run scoreboard players operation #bitwise.and.1 bs.data -= #bitwise.and.msb bs.data
scoreboard players operation #bitwise.and.msb bs.data /= 2 bs.const

execute if score #bitwise.and.0 bs.data matches 1.. if score #bitwise.and.1 bs.data matches 1.. run function bs.bitwise:and/loop
