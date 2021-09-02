execute at @e[tag=fill,scores={fill=57}] run fill ~-56 ~ ~-56 ~-56 ~ ~56 magma_block
execute at @e[tag=fill,scores={fill=57}] run fill ~-56 ~ ~-56 ~56 ~ ~-56 magma_block
execute at @e[tag=fill,scores={fill=57}] run fill ~56 ~ ~56 ~-56 ~ ~56 magma_block
execute at @e[tag=fill,scores={fill=57}] run fill ~56 ~ ~56 ~56 ~ ~-56 magma_block
scoreboard players set @e[tag=fill,scores={fill=57}] fill 56
schedule function scaffolding_rush:lava/global_rising/fill_55 2t
