scoreboard objectives add fill dummy
scoreboard players add @e[tag=fill] fill 0
scoreboard players add @e[tag=fill,scores={fill=0}] fill 91
execute at @e[tag=fill,scores={fill=91}] run fill ~-90 ~ ~-90 ~-90 ~ ~90 magma_block
execute at @e[tag=fill,scores={fill=91}] run fill ~-90 ~ ~-90 ~90 ~ ~-90 magma_block
execute at @e[tag=fill,scores={fill=91}] run fill ~90 ~ ~90 ~-90 ~ ~90 magma_block
execute at @e[tag=fill,scores={fill=91}] run fill ~90 ~ ~90 ~90 ~ ~-90 magma_block
scoreboard players set @e[tag=fill,scores={fill=91}] fill 90
schedule function scaffolding_rush:lava/global_rising/fill_89 2t
