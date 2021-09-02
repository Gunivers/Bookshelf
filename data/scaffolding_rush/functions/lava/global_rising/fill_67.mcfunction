execute at @e[tag=fill,scores={fill=68}] run fill ~-67 ~ ~-67 ~-67 ~ ~67 magma_block
execute at @e[tag=fill,scores={fill=68}] run fill ~-67 ~ ~-67 ~67 ~ ~-67 magma_block
execute at @e[tag=fill,scores={fill=68}] run fill ~67 ~ ~67 ~-67 ~ ~67 magma_block
execute at @e[tag=fill,scores={fill=68}] run fill ~67 ~ ~67 ~67 ~ ~-67 magma_block
scoreboard players set @e[tag=fill,scores={fill=68}] fill 67
schedule function scaffolding_rush:lava/global_rising/fill_66 2t
