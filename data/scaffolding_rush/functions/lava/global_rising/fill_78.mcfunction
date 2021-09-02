execute at @e[tag=fill,scores={fill=79}] run fill ~-78 ~ ~-78 ~-78 ~ ~78 magma_block
execute at @e[tag=fill,scores={fill=79}] run fill ~-78 ~ ~-78 ~78 ~ ~-78 magma_block
execute at @e[tag=fill,scores={fill=79}] run fill ~78 ~ ~78 ~-78 ~ ~78 magma_block
execute at @e[tag=fill,scores={fill=79}] run fill ~78 ~ ~78 ~78 ~ ~-78 magma_block
scoreboard players set @e[tag=fill,scores={fill=79}] fill 78
schedule function scaffolding_rush:lava/global_rising/fill_77 2t
