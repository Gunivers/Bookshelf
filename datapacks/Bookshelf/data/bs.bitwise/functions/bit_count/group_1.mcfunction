execute if score #bitwise.bit_count bs.data matches 0 run scoreboard players set $bitwise.bit_count bs.out 0
execute if score #bitwise.bit_count bs.data matches 1 run scoreboard players set $bitwise.bit_count bs.out 1
execute if score #bitwise.bit_count bs.data matches 2..3 run scoreboard players set $bitwise.bit_count bs.out 2
execute if score #bitwise.bit_count bs.data matches 4..7 run scoreboard players set $bitwise.bit_count bs.out 3
execute if score #bitwise.bit_count bs.data matches 8..15 run scoreboard players set $bitwise.bit_count bs.out 4
execute if score #bitwise.bit_count bs.data matches 16..31 run scoreboard players set $bitwise.bit_count bs.out 5
execute if score #bitwise.bit_count bs.data matches 32..63 run scoreboard players set $bitwise.bit_count bs.out 6
execute if score #bitwise.bit_count bs.data matches 64..127 run scoreboard players set $bitwise.bit_count bs.out 7
