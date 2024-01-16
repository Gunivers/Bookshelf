execute if score #math.frexp bs.data matches ..-1 run scoreboard players operation #math.frexp bs.data *= -1 bs.const

execute if score #math.frexp bs.data matches 1..255 run return run function bs.math:frexp/range_1
execute if score #math.frexp bs.data matches 256..65535 run return run function bs.math:frexp/range_2
execute if score #math.frexp bs.data matches 65536..16777215 run return run function bs.math:frexp/range_3
execute if score #math.frexp bs.data matches 16777216..2147483647 run return run function bs.math:frexp/range_4
