execute at @e[tag=fill,scores={fill=1}] run fill ~-0 ~ ~-0 ~-0 ~ ~0 magma_block
execute at @e[tag=fill,scores={fill=1}] run fill ~-0 ~ ~-0 ~0 ~ ~-0 magma_block
execute at @e[tag=fill,scores={fill=1}] run fill ~0 ~ ~0 ~-0 ~ ~0 magma_block
execute at @e[tag=fill,scores={fill=1}] run fill ~0 ~ ~0 ~0 ~ ~-0 magma_block
scoreboard players set @e[tag=fill,scores={fill=1}] fill 0
kill @e[tag=fill,scores={fill=0},type=!player]
execute if entity @e[tag=fill,type=player] run say Lava rised successfully.
