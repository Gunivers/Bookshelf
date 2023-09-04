# math magic
scoreboard players add #math.combine.n bs.data 1
scoreboard players add #math.combine.i bs.data 1

scoreboard players set #math.combine.max_out_nonoverflow bs.data 2147483647
scoreboard players operation #math.combine.max_out_nonoverflow bs.data /= #math.combine.n bs.data
execute store result score #math.combine.flag bs.data if score $math.combine bs.out <= #math.combine.max_out_nonoverflow bs.data
execute if score #math.combine.flag bs.data matches 1 run function bs.math:combine/normal
execute if score #math.combine.flag bs.data matches 0 run function bs.math:combine/anti_overflow

execute if score #math.combine.i bs.data < #math.combine.m bs.data run function bs.math:combine/loop
