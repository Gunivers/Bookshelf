execute if score #bitwise.msb bs.data matches 128..255 run return run scoreboard players set $bitwise.msb bs.out 128
execute if score #bitwise.msb bs.data matches 256..511 run return run scoreboard players set $bitwise.msb bs.out 256
execute if score #bitwise.msb bs.data matches 512..1023 run return run scoreboard players set $bitwise.msb bs.out 512
execute if score #bitwise.msb bs.data matches 1024..2047 run return run scoreboard players set $bitwise.msb bs.out 1024
execute if score #bitwise.msb bs.data matches 2048..4095 run return run scoreboard players set $bitwise.msb bs.out 2048
execute if score #bitwise.msb bs.data matches 4096..8191 run return run scoreboard players set $bitwise.msb bs.out 4096
execute if score #bitwise.msb bs.data matches 8192..16383 run return run scoreboard players set $bitwise.msb bs.out 8192
execute if score #bitwise.msb bs.data matches 16384..32767 run return run scoreboard players set $bitwise.msb bs.out 16384
