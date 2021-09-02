execute at @e[tag=fill,scores={fill=28}] run fill ~-27 ~ ~-27 ~-27 ~ ~27 magma_block
execute at @e[tag=fill,scores={fill=28}] run fill ~-27 ~ ~-27 ~27 ~ ~-27 magma_block
execute at @e[tag=fill,scores={fill=28}] run fill ~27 ~ ~27 ~-27 ~ ~27 magma_block
execute at @e[tag=fill,scores={fill=28}] run fill ~27 ~ ~27 ~27 ~ ~-27 magma_block
scoreboard players set @e[tag=fill,scores={fill=28}] fill 27
schedule function scaffolding_rush:lava/global_rising/fill_26 2t
