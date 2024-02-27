execute if score $bitwise.bit_length.n bs.in matches 8388608..16777215 run return run scoreboard players set $bitwise.bit_length bs.out 24
execute if score $bitwise.bit_length.n bs.in matches 16777216..33554431 run return run scoreboard players set $bitwise.bit_length bs.out 25
execute if score $bitwise.bit_length.n bs.in matches 33554432..67108863 run return run scoreboard players set $bitwise.bit_length bs.out 26
execute if score $bitwise.bit_length.n bs.in matches 67108864..134217727 run return run scoreboard players set $bitwise.bit_length bs.out 27
execute if score $bitwise.bit_length.n bs.in matches 134217728..268435455 run return run scoreboard players set $bitwise.bit_length bs.out 28
execute if score $bitwise.bit_length.n bs.in matches 268435456..536870911 run return run scoreboard players set $bitwise.bit_length bs.out 29
execute if score $bitwise.bit_length.n bs.in matches 536870912..1073741823 run return run scoreboard players set $bitwise.bit_length bs.out 30
execute if score $bitwise.bit_length.n bs.in matches 1073741824.. run return run scoreboard players set $bitwise.bit_length bs.out 31
