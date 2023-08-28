execute if score #bitwise.bit_count bs.data matches 128..255 run scoreboard players set $bitwise.bit_count bs.out 8
execute if score #bitwise.bit_count bs.data matches 256..511 run scoreboard players set $bitwise.bit_count bs.out 9
execute if score #bitwise.bit_count bs.data matches 512..1023 run scoreboard players set $bitwise.bit_count bs.out 10
execute if score #bitwise.bit_count bs.data matches 1024..2047 run scoreboard players set $bitwise.bit_count bs.out 11
execute if score #bitwise.bit_count bs.data matches 2048..4095 run scoreboard players set $bitwise.bit_count bs.out 12
execute if score #bitwise.bit_count bs.data matches 4096..8191 run scoreboard players set $bitwise.bit_count bs.out 13
execute if score #bitwise.bit_count bs.data matches 8192..16383 run scoreboard players set $bitwise.bit_count bs.out 14
execute if score #bitwise.bit_count bs.data matches 16384..32767 run scoreboard players set $bitwise.bit_count bs.out 15
