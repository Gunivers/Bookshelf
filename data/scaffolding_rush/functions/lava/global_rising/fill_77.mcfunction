execute at @e[tag=fill,scores={fill=78}] run fill ~-77 ~ ~-77 ~-77 ~ ~77 magma_block
execute at @e[tag=fill,scores={fill=78}] run fill ~-77 ~ ~-77 ~77 ~ ~-77 magma_block
execute at @e[tag=fill,scores={fill=78}] run fill ~77 ~ ~77 ~-77 ~ ~77 magma_block
execute at @e[tag=fill,scores={fill=78}] run fill ~77 ~ ~77 ~77 ~ ~-77 magma_block
scoreboard players set @e[tag=fill,scores={fill=78}] fill 77
schedule function scaffolding_rush:lava/global_rising/fill_76 2t
