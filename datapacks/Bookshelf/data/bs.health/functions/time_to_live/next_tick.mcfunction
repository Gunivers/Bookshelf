execute store success score #success bs.data run scoreboard players remove @e[scores={bs.ttl=1..}] bs.ttl 1
execute if score #success bs.data matches 1 as @e[scores={bs.ttl=0}] run function bs.health:time_to_live/time_out with entity @s
execute if score #success bs.data matches 1 run schedule function bs.health:time_to_live/next_tick 1t
