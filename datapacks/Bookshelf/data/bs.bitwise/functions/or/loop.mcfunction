execute if score #bitwise.or.0 bs.data >= #bitwise.or.msb bs.data run scoreboard players operation $bitwise.or bs.out += #bitwise.or.msb bs.data
execute if score #bitwise.or.1 bs.data >= #bitwise.or.msb bs.data unless score #bitwise.or.0 bs.data >= #bitwise.or.msb bs.data run scoreboard players operation $bitwise.or bs.out += #bitwise.or.msb bs.data

execute if score #bitwise.or.0 bs.data >= #bitwise.or.msb bs.data run scoreboard players operation #bitwise.or.0 bs.data -= #bitwise.or.msb bs.data
execute if score #bitwise.or.1 bs.data >= #bitwise.or.msb bs.data run scoreboard players operation #bitwise.or.1 bs.data -= #bitwise.or.msb bs.data
scoreboard players operation #bitwise.or.msb bs.data /= 2 bs.const

execute if score #bitwise.or.0 bs.data matches 0 if score #bitwise.or.1 bs.data matches 0 run return 1
function bs.bitwise:or/loop
