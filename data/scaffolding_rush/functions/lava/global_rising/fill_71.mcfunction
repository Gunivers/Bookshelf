execute at @e[tag=fill,scores={fill=72}] run fill ~-71 ~ ~-71 ~-71 ~ ~71 magma_block
execute at @e[tag=fill,scores={fill=72}] run fill ~-71 ~ ~-71 ~71 ~ ~-71 magma_block
execute at @e[tag=fill,scores={fill=72}] run fill ~71 ~ ~71 ~-71 ~ ~71 magma_block
execute at @e[tag=fill,scores={fill=72}] run fill ~71 ~ ~71 ~71 ~ ~-71 magma_block
scoreboard players set @e[tag=fill,scores={fill=72}] fill 71
schedule function scaffolding_rush:lava/global_rising/fill_70 2t
