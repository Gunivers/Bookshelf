execute at @e[tag=fill,scores={fill=83}] run fill ~-82 ~ ~-82 ~-82 ~ ~82 magma_block
execute at @e[tag=fill,scores={fill=83}] run fill ~-82 ~ ~-82 ~82 ~ ~-82 magma_block
execute at @e[tag=fill,scores={fill=83}] run fill ~82 ~ ~82 ~-82 ~ ~82 magma_block
execute at @e[tag=fill,scores={fill=83}] run fill ~82 ~ ~82 ~82 ~ ~-82 magma_block
scoreboard players set @e[tag=fill,scores={fill=83}] fill 82
schedule function scaffolding_rush:lava/global_rising/fill_81 2t
