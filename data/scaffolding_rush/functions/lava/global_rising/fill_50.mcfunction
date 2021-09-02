execute at @e[tag=fill,scores={fill=51}] run fill ~-50 ~ ~-50 ~-50 ~ ~50 magma_block
execute at @e[tag=fill,scores={fill=51}] run fill ~-50 ~ ~-50 ~50 ~ ~-50 magma_block
execute at @e[tag=fill,scores={fill=51}] run fill ~50 ~ ~50 ~-50 ~ ~50 magma_block
execute at @e[tag=fill,scores={fill=51}] run fill ~50 ~ ~50 ~50 ~ ~-50 magma_block
scoreboard players set @e[tag=fill,scores={fill=51}] fill 50
schedule function scaffolding_rush:lava/global_rising/fill_49 2t
