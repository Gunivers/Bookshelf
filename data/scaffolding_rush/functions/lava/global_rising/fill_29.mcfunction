execute at @e[tag=fill,scores={fill=30}] run fill ~-29 ~ ~-29 ~-29 ~ ~29 magma_block
execute at @e[tag=fill,scores={fill=30}] run fill ~-29 ~ ~-29 ~29 ~ ~-29 magma_block
execute at @e[tag=fill,scores={fill=30}] run fill ~29 ~ ~29 ~-29 ~ ~29 magma_block
execute at @e[tag=fill,scores={fill=30}] run fill ~29 ~ ~29 ~29 ~ ~-29 magma_block
scoreboard players set @e[tag=fill,scores={fill=30}] fill 29
schedule function scaffolding_rush:lava/global_rising/fill_28 2t
