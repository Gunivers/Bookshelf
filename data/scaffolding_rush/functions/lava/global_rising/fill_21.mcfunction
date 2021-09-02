execute at @e[tag=fill,scores={fill=22}] run fill ~-21 ~ ~-21 ~-21 ~ ~21 magma_block
execute at @e[tag=fill,scores={fill=22}] run fill ~-21 ~ ~-21 ~21 ~ ~-21 magma_block
execute at @e[tag=fill,scores={fill=22}] run fill ~21 ~ ~21 ~-21 ~ ~21 magma_block
execute at @e[tag=fill,scores={fill=22}] run fill ~21 ~ ~21 ~21 ~ ~-21 magma_block
scoreboard players set @e[tag=fill,scores={fill=22}] fill 21
schedule function scaffolding_rush:lava/global_rising/fill_20 2t
