execute at @e[tag=fill,scores={fill=10}] run fill ~-9 ~ ~-9 ~-9 ~ ~9 magma_block
execute at @e[tag=fill,scores={fill=10}] run fill ~-9 ~ ~-9 ~9 ~ ~-9 magma_block
execute at @e[tag=fill,scores={fill=10}] run fill ~9 ~ ~9 ~-9 ~ ~9 magma_block
execute at @e[tag=fill,scores={fill=10}] run fill ~9 ~ ~9 ~9 ~ ~-9 magma_block
scoreboard players set @e[tag=fill,scores={fill=10}] fill 9
schedule function scaffolding_rush:lava/global_rising/fill_8 2t
