scoreboard players add #k bs.random 1

execute store result score #tmp bs.random run random value 0..65536
scoreboard players operation #p bs.random /= #65536 bs.const
scoreboard players operation #p bs.random *= #tmp bs.random

execute if score #p bs.random > #L bs.random run function bs.random:poisson/loop