execute at @e[tag=fill,scores={fill=69}] run fill ~-68 ~ ~-68 ~-68 ~ ~68 magma_block
execute at @e[tag=fill,scores={fill=69}] run fill ~-68 ~ ~-68 ~68 ~ ~-68 magma_block
execute at @e[tag=fill,scores={fill=69}] run fill ~68 ~ ~68 ~-68 ~ ~68 magma_block
execute at @e[tag=fill,scores={fill=69}] run fill ~68 ~ ~68 ~68 ~ ~-68 magma_block
scoreboard players set @e[tag=fill,scores={fill=69}] fill 68
schedule function scaffolding_rush:lava/global_rising/fill_67 2t
