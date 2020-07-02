
scoreboard players operation glib.accuracy.entity.location.fast_set glib.var1 %= 1000 glib.const
scoreboard players operation glib.accuracy.entity.location.fast_set glib.var1 -= 1000 glib.const

# Y negative
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-512 run tp ~ ~-0.512 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-512 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var1 512
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-256 run tp ~ ~-0.256 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-256 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var1 256
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-128 run tp ~ ~-0.128 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-128 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var1 128
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-64 run tp ~ ~-0.064 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-64 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var1 64
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-32 run tp ~ ~-0.032 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-32 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var1 32
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-16 run tp ~ ~-0.016 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-16 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var1 16
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-8 run tp ~ ~-0.008 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-8 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var1 8
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-4 run tp ~ ~-0.004 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-4 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var1 4
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-2 run tp ~ ~-0.002 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-2 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var1 2
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-1 run tp ~ ~-0.001 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches ..-1 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var1 1
