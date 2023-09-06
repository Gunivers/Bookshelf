execute store result score #math.sqrt.temp_0 bs.data store result score #math.sqrt.temp_1 bs.data run scoreboard players operation #math.sqrt.temp_2 bs.data = @s bs.in.0
scoreboard players set @s bs.out.0 -79782985
scoreboard players add #math.sqrt.temp_0 bs.data 109000
scoreboard players operation @s bs.out.0 /= #math.sqrt.temp_0 bs.data
scoreboard players add @s bs.out.0 743