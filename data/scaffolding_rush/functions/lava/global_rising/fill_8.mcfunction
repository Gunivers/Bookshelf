execute at @e[tag=fill,scores={fill=9}] run fill ~-8 ~ ~-8 ~-8 ~ ~8 magma_block
execute at @e[tag=fill,scores={fill=9}] run fill ~-8 ~ ~-8 ~8 ~ ~-8 magma_block
execute at @e[tag=fill,scores={fill=9}] run fill ~8 ~ ~8 ~-8 ~ ~8 magma_block
execute at @e[tag=fill,scores={fill=9}] run fill ~8 ~ ~8 ~8 ~ ~-8 magma_block
scoreboard players set @e[tag=fill,scores={fill=9}] fill 8
schedule function scaffolding_rush:lava/global_rising/fill_7 2t
