execute at @e[tag=fill,scores={fill=67}] run fill ~-66 ~ ~-66 ~-66 ~ ~66 magma_block
execute at @e[tag=fill,scores={fill=67}] run fill ~-66 ~ ~-66 ~66 ~ ~-66 magma_block
execute at @e[tag=fill,scores={fill=67}] run fill ~66 ~ ~66 ~-66 ~ ~66 magma_block
execute at @e[tag=fill,scores={fill=67}] run fill ~66 ~ ~66 ~66 ~ ~-66 magma_block
scoreboard players set @e[tag=fill,scores={fill=67}] fill 66
schedule function scaffolding_rush:lava/global_rising/fill_65 2t
