execute if score #bitwise.bit_length bs.data matches 128..255 run return run scoreboard players set $bitwise.bit_length bs.out 8
execute if score #bitwise.bit_length bs.data matches 256..511 run return run scoreboard players set $bitwise.bit_length bs.out 9
execute if score #bitwise.bit_length bs.data matches 512..1023 run return run scoreboard players set $bitwise.bit_length bs.out 10
execute if score #bitwise.bit_length bs.data matches 1024..2047 run return run scoreboard players set $bitwise.bit_length bs.out 11
execute if score #bitwise.bit_length bs.data matches 2048..4095 run return run scoreboard players set $bitwise.bit_length bs.out 12
execute if score #bitwise.bit_length bs.data matches 4096..8191 run return run scoreboard players set $bitwise.bit_length bs.out 13
execute if score #bitwise.bit_length bs.data matches 8192..16383 run return run scoreboard players set $bitwise.bit_length bs.out 14
execute if score #bitwise.bit_length bs.data matches 16384..32767 run return run scoreboard players set $bitwise.bit_length bs.out 15
