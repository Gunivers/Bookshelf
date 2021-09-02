execute at @e[tag=fill,scores={fill=23}] run fill ~-22 ~ ~-22 ~-22 ~ ~22 magma_block
execute at @e[tag=fill,scores={fill=23}] run fill ~-22 ~ ~-22 ~22 ~ ~-22 magma_block
execute at @e[tag=fill,scores={fill=23}] run fill ~22 ~ ~22 ~-22 ~ ~22 magma_block
execute at @e[tag=fill,scores={fill=23}] run fill ~22 ~ ~22 ~22 ~ ~-22 magma_block
scoreboard players set @e[tag=fill,scores={fill=23}] fill 22
schedule function scaffolding_rush:lava/global_rising/fill_21 2t
