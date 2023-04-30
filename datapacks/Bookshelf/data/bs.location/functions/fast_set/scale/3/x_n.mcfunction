
scoreboard players operation bs.accuracy.entity.location.fast_set bs.loc.x %= 1000 bs.const
scoreboard players operation bs.accuracy.entity.location.fast_set bs.loc.x -= 1000 bs.const

# X negative
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-512 run tp ~-0.512 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-512 run scoreboard players add bs.accuracy.entity.location.fast_set bs.loc.x 512
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-256 run tp ~-0.256 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-256 run scoreboard players add bs.accuracy.entity.location.fast_set bs.loc.x 256
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-128 run tp ~-0.128 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-128 run scoreboard players add bs.accuracy.entity.location.fast_set bs.loc.x 128
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-64 run tp ~-0.064 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-64 run scoreboard players add bs.accuracy.entity.location.fast_set bs.loc.x 64
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-32 run tp ~-0.032 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-32 run scoreboard players add bs.accuracy.entity.location.fast_set bs.loc.x 32
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-16 run tp ~-0.016 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-16 run scoreboard players add bs.accuracy.entity.location.fast_set bs.loc.x 16
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-8 run tp ~-0.008 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-8 run scoreboard players add bs.accuracy.entity.location.fast_set bs.loc.x 8
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-4 run tp ~-0.004 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-4 run scoreboard players add bs.accuracy.entity.location.fast_set bs.loc.x 4
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-2 run tp ~-0.002 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-2 run scoreboard players add bs.accuracy.entity.location.fast_set bs.loc.x 2
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-1 run tp ~-0.001 ~ ~
execute if score bs.accuracy.entity.location.fast_set bs.loc.x matches ..-1 run scoreboard players add bs.accuracy.entity.location.fast_set bs.loc.x 1
