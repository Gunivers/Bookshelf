execute at @e[tag=fill,scores={fill=39}] run fill ~-38 ~ ~-38 ~-38 ~ ~38 magma_block
execute at @e[tag=fill,scores={fill=39}] run fill ~-38 ~ ~-38 ~38 ~ ~-38 magma_block
execute at @e[tag=fill,scores={fill=39}] run fill ~38 ~ ~38 ~-38 ~ ~38 magma_block
execute at @e[tag=fill,scores={fill=39}] run fill ~38 ~ ~38 ~38 ~ ~-38 magma_block
scoreboard players set @e[tag=fill,scores={fill=39}] fill 38
schedule function scaffolding_rush:lava/global_rising/fill_37 2t
