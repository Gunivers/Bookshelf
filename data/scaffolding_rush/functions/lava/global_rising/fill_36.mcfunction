execute at @e[tag=fill,scores={fill=37}] run fill ~-36 ~ ~-36 ~-36 ~ ~36 magma_block
execute at @e[tag=fill,scores={fill=37}] run fill ~-36 ~ ~-36 ~36 ~ ~-36 magma_block
execute at @e[tag=fill,scores={fill=37}] run fill ~36 ~ ~36 ~-36 ~ ~36 magma_block
execute at @e[tag=fill,scores={fill=37}] run fill ~36 ~ ~36 ~36 ~ ~-36 magma_block
scoreboard players set @e[tag=fill,scores={fill=37}] fill 36
schedule function scaffolding_rush:lava/global_rising/fill_35 2t
