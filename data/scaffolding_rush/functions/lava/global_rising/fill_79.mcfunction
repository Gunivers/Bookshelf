execute at @e[tag=fill,scores={fill=80}] run fill ~-79 ~ ~-79 ~-79 ~ ~79 magma_block
execute at @e[tag=fill,scores={fill=80}] run fill ~-79 ~ ~-79 ~79 ~ ~-79 magma_block
execute at @e[tag=fill,scores={fill=80}] run fill ~79 ~ ~79 ~-79 ~ ~79 magma_block
execute at @e[tag=fill,scores={fill=80}] run fill ~79 ~ ~79 ~79 ~ ~-79 magma_block
scoreboard players set @e[tag=fill,scores={fill=80}] fill 79
schedule function scaffolding_rush:lava/global_rising/fill_78 2t
