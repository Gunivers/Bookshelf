scoreboard players set $math.pow bs.out 1
execute if score $math.pow.exp bs.in matches 1.. store result score #math.pow.2 bs.data run scoreboard players operation #math.pow.1 bs.data = $math.pow.base bs.in
execute if score $math.pow.exp bs.in matches 2.. store result score #math.pow.4 bs.data run scoreboard players operation #math.pow.2 bs.data *= #math.pow.2 bs.data
execute if score $math.pow.exp bs.in matches 4.. store result score #math.pow.8 bs.data run scoreboard players operation #math.pow.4 bs.data *= #math.pow.4 bs.data
execute if score $math.pow.exp bs.in matches 8.. store result score #math.pow.16 bs.data run scoreboard players operation #math.pow.8 bs.data *= #math.pow.8 bs.data
execute if score $math.pow.exp bs.in matches 16.. run scoreboard players operation #math.pow.16 bs.data *= #math.pow.16 bs.data

scoreboard players operation #math.pow.exp bs.data = $math.pow.exp bs.in
execute if score #math.pow.exp bs.data matches 16.. run scoreboard players operation $math.pow bs.out *= #math.pow.16 bs.data
execute if score #math.pow.exp bs.data matches 16.. run scoreboard players remove #math.pow.exp bs.data 16
execute if score #math.pow.exp bs.data matches 8.. run scoreboard players operation $math.pow bs.out *= #math.pow.8 bs.data
execute if score #math.pow.exp bs.data matches 8.. run scoreboard players remove #math.pow.exp bs.data 8
execute if score #math.pow.exp bs.data matches 4.. run scoreboard players operation $math.pow bs.out *= #math.pow.4 bs.data
execute if score #math.pow.exp bs.data matches 4.. run scoreboard players remove #math.pow.exp bs.data 4
execute if score #math.pow.exp bs.data matches 2.. run scoreboard players operation $math.pow bs.out *= #math.pow.2 bs.data
execute if score #math.pow.exp bs.data matches 2.. run scoreboard players remove #math.pow.exp bs.data 2
execute if score #math.pow.exp bs.data matches 1.. run scoreboard players operation $math.pow bs.out *= #math.pow.1 bs.data
