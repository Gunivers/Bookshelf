execute at @e[tag=fill,scores={fill=74}] run fill ~-73 ~ ~-73 ~-73 ~ ~73 magma_block
execute at @e[tag=fill,scores={fill=74}] run fill ~-73 ~ ~-73 ~73 ~ ~-73 magma_block
execute at @e[tag=fill,scores={fill=74}] run fill ~73 ~ ~73 ~-73 ~ ~73 magma_block
execute at @e[tag=fill,scores={fill=74}] run fill ~73 ~ ~73 ~73 ~ ~-73 magma_block
scoreboard players set @e[tag=fill,scores={fill=74}] fill 73
schedule function scaffolding_rush:lava/global_rising/fill_72 2t
