execute if score #bitwise.msb bs.data matches 32768..65535 run scoreboard players set $bitwise.msb bs.out 32768
execute if score #bitwise.msb bs.data matches 65536..131071 run scoreboard players set $bitwise.msb bs.out 65536
execute if score #bitwise.msb bs.data matches 131072..262143 run scoreboard players set $bitwise.msb bs.out 131072
execute if score #bitwise.msb bs.data matches 262144..524287 run scoreboard players set $bitwise.msb bs.out 262144
execute if score #bitwise.msb bs.data matches 524288..1048575 run scoreboard players set $bitwise.msb bs.out 524288
execute if score #bitwise.msb bs.data matches 1048576..2097151 run scoreboard players set $bitwise.msb bs.out 1048576
execute if score #bitwise.msb bs.data matches 2097152..4194303 run scoreboard players set $bitwise.msb bs.out 2097152
execute if score #bitwise.msb bs.data matches 4194304..8388607 run scoreboard players set $bitwise.msb bs.out 4194304
