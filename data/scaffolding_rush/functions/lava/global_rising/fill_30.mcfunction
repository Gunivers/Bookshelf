execute at @e[tag=fill,scores={fill=31}] run fill ~-30 ~ ~-30 ~-30 ~ ~30 magma_block
execute at @e[tag=fill,scores={fill=31}] run fill ~-30 ~ ~-30 ~30 ~ ~-30 magma_block
execute at @e[tag=fill,scores={fill=31}] run fill ~30 ~ ~30 ~-30 ~ ~30 magma_block
execute at @e[tag=fill,scores={fill=31}] run fill ~30 ~ ~30 ~30 ~ ~-30 magma_block
scoreboard players set @e[tag=fill,scores={fill=31}] fill 30
schedule function scaffolding_rush:lava/global_rising/fill_29 2t
