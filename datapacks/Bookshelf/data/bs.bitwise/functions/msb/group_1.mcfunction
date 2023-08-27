execute if score #bitwise.msb bs.data matches 0 run scoreboard players set $bitwise.msb bs.out 0
execute if score #bitwise.msb bs.data matches 1 run scoreboard players set $bitwise.msb bs.out 1
execute if score #bitwise.msb bs.data matches 2..3 run scoreboard players set $bitwise.msb bs.out 2
execute if score #bitwise.msb bs.data matches 4..7 run scoreboard players set $bitwise.msb bs.out 4
execute if score #bitwise.msb bs.data matches 8..15 run scoreboard players set $bitwise.msb bs.out 8
execute if score #bitwise.msb bs.data matches 16..31 run scoreboard players set $bitwise.msb bs.out 16
execute if score #bitwise.msb bs.data matches 32..63 run scoreboard players set $bitwise.msb bs.out 32
execute if score #bitwise.msb bs.data matches 64..127 run scoreboard players set $bitwise.msb bs.out 64
