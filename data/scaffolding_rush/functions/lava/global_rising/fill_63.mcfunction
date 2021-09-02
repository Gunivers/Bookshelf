execute at @e[tag=fill,scores={fill=64}] run fill ~-63 ~ ~-63 ~-63 ~ ~63 magma_block
execute at @e[tag=fill,scores={fill=64}] run fill ~-63 ~ ~-63 ~63 ~ ~-63 magma_block
execute at @e[tag=fill,scores={fill=64}] run fill ~63 ~ ~63 ~-63 ~ ~63 magma_block
execute at @e[tag=fill,scores={fill=64}] run fill ~63 ~ ~63 ~63 ~ ~-63 magma_block
scoreboard players set @e[tag=fill,scores={fill=64}] fill 63
schedule function scaffolding_rush:lava/global_rising/fill_62 2t
