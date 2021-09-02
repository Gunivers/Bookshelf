execute at @e[tag=fill,scores={fill=16}] run fill ~-15 ~ ~-15 ~-15 ~ ~15 magma_block
execute at @e[tag=fill,scores={fill=16}] run fill ~-15 ~ ~-15 ~15 ~ ~-15 magma_block
execute at @e[tag=fill,scores={fill=16}] run fill ~15 ~ ~15 ~-15 ~ ~15 magma_block
execute at @e[tag=fill,scores={fill=16}] run fill ~15 ~ ~15 ~15 ~ ~-15 magma_block
scoreboard players set @e[tag=fill,scores={fill=16}] fill 15
schedule function scaffolding_rush:lava/global_rising/fill_14 2t
