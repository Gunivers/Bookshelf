execute at @e[tag=fill,scores={fill=33}] run fill ~-32 ~ ~-32 ~-32 ~ ~32 magma_block
execute at @e[tag=fill,scores={fill=33}] run fill ~-32 ~ ~-32 ~32 ~ ~-32 magma_block
execute at @e[tag=fill,scores={fill=33}] run fill ~32 ~ ~32 ~-32 ~ ~32 magma_block
execute at @e[tag=fill,scores={fill=33}] run fill ~32 ~ ~32 ~32 ~ ~-32 magma_block
scoreboard players set @e[tag=fill,scores={fill=33}] fill 32
schedule function scaffolding_rush:lava/global_rising/fill_31 2t
