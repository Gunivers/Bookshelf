execute at @e[tag=fill,scores={fill=29}] run fill ~-28 ~ ~-28 ~-28 ~ ~28 magma_block
execute at @e[tag=fill,scores={fill=29}] run fill ~-28 ~ ~-28 ~28 ~ ~-28 magma_block
execute at @e[tag=fill,scores={fill=29}] run fill ~28 ~ ~28 ~-28 ~ ~28 magma_block
execute at @e[tag=fill,scores={fill=29}] run fill ~28 ~ ~28 ~28 ~ ~-28 magma_block
scoreboard players set @e[tag=fill,scores={fill=29}] fill 28
schedule function scaffolding_rush:lava/global_rising/fill_27 2t
