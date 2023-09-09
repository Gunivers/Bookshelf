scoreboard players remove #math.factorial.i bs.data 1
scoreboard players operation $math.factorial bs.out *= #math.factorial.i bs.data
execute if score #math.factorial.i bs.data matches 3.. run function bs.math:factorial/loop
