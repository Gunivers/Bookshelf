execute at @e[tag=fill,scores={fill=62}] run fill ~-61 ~ ~-61 ~-61 ~ ~61 magma_block
execute at @e[tag=fill,scores={fill=62}] run fill ~-61 ~ ~-61 ~61 ~ ~-61 magma_block
execute at @e[tag=fill,scores={fill=62}] run fill ~61 ~ ~61 ~-61 ~ ~61 magma_block
execute at @e[tag=fill,scores={fill=62}] run fill ~61 ~ ~61 ~61 ~ ~-61 magma_block
scoreboard players set @e[tag=fill,scores={fill=62}] fill 61
schedule function scaffolding_rush:lava/global_rising/fill_60 2t
