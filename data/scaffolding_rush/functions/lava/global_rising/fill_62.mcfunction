execute at @e[tag=fill,scores={fill=63}] run fill ~-62 ~ ~-62 ~-62 ~ ~62 magma_block
execute at @e[tag=fill,scores={fill=63}] run fill ~-62 ~ ~-62 ~62 ~ ~-62 magma_block
execute at @e[tag=fill,scores={fill=63}] run fill ~62 ~ ~62 ~-62 ~ ~62 magma_block
execute at @e[tag=fill,scores={fill=63}] run fill ~62 ~ ~62 ~62 ~ ~-62 magma_block
scoreboard players set @e[tag=fill,scores={fill=63}] fill 62
schedule function scaffolding_rush:lava/global_rising/fill_61 2t
