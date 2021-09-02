execute at @e[tag=fill,scores={fill=13}] run fill ~-12 ~ ~-12 ~-12 ~ ~12 magma_block
execute at @e[tag=fill,scores={fill=13}] run fill ~-12 ~ ~-12 ~12 ~ ~-12 magma_block
execute at @e[tag=fill,scores={fill=13}] run fill ~12 ~ ~12 ~-12 ~ ~12 magma_block
execute at @e[tag=fill,scores={fill=13}] run fill ~12 ~ ~12 ~12 ~ ~-12 magma_block
scoreboard players set @e[tag=fill,scores={fill=13}] fill 12
schedule function scaffolding_rush:lava/global_rising/fill_11 2t
