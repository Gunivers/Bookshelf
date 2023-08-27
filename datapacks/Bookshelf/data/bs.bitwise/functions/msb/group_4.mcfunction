execute if score #bitwise.msb bs.data matches 8388608..16777215 run scoreboard players set $bitwise.msb bs.out 8388608
execute if score #bitwise.msb bs.data matches 16777216..33554431 run scoreboard players set $bitwise.msb bs.out 16777216
execute if score #bitwise.msb bs.data matches 33554432..67108863 run scoreboard players set $bitwise.msb bs.out 33554432
execute if score #bitwise.msb bs.data matches 67108864..134217727 run scoreboard players set $bitwise.msb bs.out 67108864
execute if score #bitwise.msb bs.data matches 134217728..268435455 run scoreboard players set $bitwise.msb bs.out 134217728
execute if score #bitwise.msb bs.data matches 268435456..536870911 run scoreboard players set $bitwise.msb bs.out 268435456
execute if score #bitwise.msb bs.data matches 536870912..1073741823 run scoreboard players set $bitwise.msb bs.out 536870912
execute if score #bitwise.msb bs.data matches 1073741824.. run scoreboard players set $bitwise.msb bs.out 1073741824
