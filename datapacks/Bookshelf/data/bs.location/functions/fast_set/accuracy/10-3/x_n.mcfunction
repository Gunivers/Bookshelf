
scoreboard players operation bs.accuracy.entity.location.fast_set bs.locX %= 1000 bs.const
scoreboard players operation bs.accuracy.entity.location.fast_set bs.locX -= 1000 bs.const

# X negative
execute at @s if score bs.accuracy.entity.location.fast_set bs.locX matches ..-512 run tp ~-0.512 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.locX matches ..-512 run scoreboard players add bs.accuracy.entity.location.fast_set bs.locX 512
execute at @s if score bs.accuracy.entity.location.fast_set bs.locX matches ..-256 run tp ~-0.256 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.locX matches ..-256 run scoreboard players add bs.accuracy.entity.location.fast_set bs.locX 256
execute at @s if score bs.accuracy.entity.location.fast_set bs.locX matches ..-128 run tp ~-0.128 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.locX matches ..-128 run scoreboard players add bs.accuracy.entity.location.fast_set bs.locX 128
execute at @s if score bs.accuracy.entity.location.fast_set bs.locX matches ..-64 run tp ~-0.064 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.locX matches ..-64 run scoreboard players add bs.accuracy.entity.location.fast_set bs.locX 64
execute at @s if score bs.accuracy.entity.location.fast_set bs.locX matches ..-32 run tp ~-0.032 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.locX matches ..-32 run scoreboard players add bs.accuracy.entity.location.fast_set bs.locX 32
execute at @s if score bs.accuracy.entity.location.fast_set bs.locX matches ..-16 run tp ~-0.016 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.locX matches ..-16 run scoreboard players add bs.accuracy.entity.location.fast_set bs.locX 16
execute at @s if score bs.accuracy.entity.location.fast_set bs.locX matches ..-8 run tp ~-0.008 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.locX matches ..-8 run scoreboard players add bs.accuracy.entity.location.fast_set bs.locX 8
execute at @s if score bs.accuracy.entity.location.fast_set bs.locX matches ..-4 run tp ~-0.004 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.locX matches ..-4 run scoreboard players add bs.accuracy.entity.location.fast_set bs.locX 4
execute at @s if score bs.accuracy.entity.location.fast_set bs.locX matches ..-2 run tp ~-0.002 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.locX matches ..-2 run scoreboard players add bs.accuracy.entity.location.fast_set bs.locX 2
execute at @s if score bs.accuracy.entity.location.fast_set bs.locX matches ..-1 run tp ~-0.001 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.locX matches ..-1 run scoreboard players add bs.accuracy.entity.location.fast_set bs.locX 1
