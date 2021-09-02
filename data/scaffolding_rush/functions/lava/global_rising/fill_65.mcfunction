execute at @e[tag=fill,scores={fill=66}] run fill ~-65 ~ ~-65 ~-65 ~ ~65 magma_block
execute at @e[tag=fill,scores={fill=66}] run fill ~-65 ~ ~-65 ~65 ~ ~-65 magma_block
execute at @e[tag=fill,scores={fill=66}] run fill ~65 ~ ~65 ~-65 ~ ~65 magma_block
execute at @e[tag=fill,scores={fill=66}] run fill ~65 ~ ~65 ~65 ~ ~-65 magma_block
scoreboard players set @e[tag=fill,scores={fill=66}] fill 65
schedule function scaffolding_rush:lava/global_rising/fill_64 2t
