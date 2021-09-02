execute at @e[tag=fill,scores={fill=43}] run fill ~-42 ~ ~-42 ~-42 ~ ~42 magma_block
execute at @e[tag=fill,scores={fill=43}] run fill ~-42 ~ ~-42 ~42 ~ ~-42 magma_block
execute at @e[tag=fill,scores={fill=43}] run fill ~42 ~ ~42 ~-42 ~ ~42 magma_block
execute at @e[tag=fill,scores={fill=43}] run fill ~42 ~ ~42 ~42 ~ ~-42 magma_block
scoreboard players set @e[tag=fill,scores={fill=43}] fill 42
schedule function scaffolding_rush:lava/global_rising/fill_41 2t
