execute if score $bitwise.size.value bs.in matches 32768..65535 run return run scoreboard players set $bitwise.size bs.out 16
execute if score $bitwise.size.value bs.in matches 65536..131071 run return run scoreboard players set $bitwise.size bs.out 17
execute if score $bitwise.size.value bs.in matches 131072..262143 run return run scoreboard players set $bitwise.size bs.out 18
execute if score $bitwise.size.value bs.in matches 262144..524287 run return run scoreboard players set $bitwise.size bs.out 19
execute if score $bitwise.size.value bs.in matches 524288..1048575 run return run scoreboard players set $bitwise.size bs.out 20
execute if score $bitwise.size.value bs.in matches 1048576..2097151 run return run scoreboard players set $bitwise.size bs.out 21
execute if score $bitwise.size.value bs.in matches 2097152..4194303 run return run scoreboard players set $bitwise.size bs.out 22
execute if score $bitwise.size.value bs.in matches 4194304..8388607 run return run scoreboard players set $bitwise.size bs.out 23
