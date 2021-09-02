execute at @e[tag=fill,scores={fill=41}] run fill ~-40 ~ ~-40 ~-40 ~ ~40 magma_block
execute at @e[tag=fill,scores={fill=41}] run fill ~-40 ~ ~-40 ~40 ~ ~-40 magma_block
execute at @e[tag=fill,scores={fill=41}] run fill ~40 ~ ~40 ~-40 ~ ~40 magma_block
execute at @e[tag=fill,scores={fill=41}] run fill ~40 ~ ~40 ~40 ~ ~-40 magma_block
scoreboard players set @e[tag=fill,scores={fill=41}] fill 40
schedule function scaffolding_rush:lava/global_rising/fill_39 2t
