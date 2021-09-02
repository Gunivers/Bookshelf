execute at @e[tag=fill,scores={fill=49}] run fill ~-48 ~ ~-48 ~-48 ~ ~48 magma_block
execute at @e[tag=fill,scores={fill=49}] run fill ~-48 ~ ~-48 ~48 ~ ~-48 magma_block
execute at @e[tag=fill,scores={fill=49}] run fill ~48 ~ ~48 ~-48 ~ ~48 magma_block
execute at @e[tag=fill,scores={fill=49}] run fill ~48 ~ ~48 ~48 ~ ~-48 magma_block
scoreboard players set @e[tag=fill,scores={fill=49}] fill 48
schedule function scaffolding_rush:lava/global_rising/fill_47 2t
