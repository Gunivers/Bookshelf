execute at @e[tag=fill,scores={fill=48}] run fill ~-47 ~ ~-47 ~-47 ~ ~47 magma_block
execute at @e[tag=fill,scores={fill=48}] run fill ~-47 ~ ~-47 ~47 ~ ~-47 magma_block
execute at @e[tag=fill,scores={fill=48}] run fill ~47 ~ ~47 ~-47 ~ ~47 magma_block
execute at @e[tag=fill,scores={fill=48}] run fill ~47 ~ ~47 ~47 ~ ~-47 magma_block
scoreboard players set @e[tag=fill,scores={fill=48}] fill 47
schedule function scaffolding_rush:lava/global_rising/fill_46 2t
