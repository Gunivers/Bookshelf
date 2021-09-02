execute at @e[tag=fill,scores={fill=58}] run fill ~-57 ~ ~-57 ~-57 ~ ~57 magma_block
execute at @e[tag=fill,scores={fill=58}] run fill ~-57 ~ ~-57 ~57 ~ ~-57 magma_block
execute at @e[tag=fill,scores={fill=58}] run fill ~57 ~ ~57 ~-57 ~ ~57 magma_block
execute at @e[tag=fill,scores={fill=58}] run fill ~57 ~ ~57 ~57 ~ ~-57 magma_block
scoreboard players set @e[tag=fill,scores={fill=58}] fill 57
schedule function scaffolding_rush:lava/global_rising/fill_56 2t
