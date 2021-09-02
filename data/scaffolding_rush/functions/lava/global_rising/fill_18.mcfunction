execute at @e[tag=fill,scores={fill=19}] run fill ~-18 ~ ~-18 ~-18 ~ ~18 magma_block
execute at @e[tag=fill,scores={fill=19}] run fill ~-18 ~ ~-18 ~18 ~ ~-18 magma_block
execute at @e[tag=fill,scores={fill=19}] run fill ~18 ~ ~18 ~-18 ~ ~18 magma_block
execute at @e[tag=fill,scores={fill=19}] run fill ~18 ~ ~18 ~18 ~ ~-18 magma_block
scoreboard players set @e[tag=fill,scores={fill=19}] fill 18
schedule function scaffolding_rush:lava/global_rising/fill_17 2t
