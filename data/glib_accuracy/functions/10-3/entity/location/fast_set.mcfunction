tp @s 0.5 0.0 0.5

scoreboard players operation glib.accuracy.entity.location.fast_set glib.var0 = @s glib.var0
scoreboard players operation glib.accuracy.entity.location.fast_set glib.var1 = @s glib.var1
scoreboard players operation glib.accuracy.entity.location.fast_set glib.var2 = @s glib.var2

scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var1 /= 1000 glib.const
scoreboard players operation @s glib.var2 /= 1000 glib.const

function glib:entity/location/fast_set
execute at @s align xyz run tp @s ~ ~ ~

scoreboard players operation @s glib.var0 = glib.accuracy.entity.location.fast_set glib.var0
scoreboard players operation @s glib.var1 = glib.accuracy.entity.location.fast_set glib.var1
scoreboard players operation @s glib.var2 = glib.accuracy.entity.location.fast_set glib.var2

scoreboard players operation glib.accuracy.entity.location.fast_set glib.var0 %= 1000 glib.const
scoreboard players operation glib.accuracy.entity.location.fast_set glib.var1 %= 1000 glib.const
scoreboard players operation glib.accuracy.entity.location.fast_set glib.var2 %= 1000 glib.const

# X positive
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches 512.. run tp ~0.512 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches 512.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var0 512
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches 256.. run tp ~0.256 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches 256.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var0 256
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches 128.. run tp ~0.128 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches 128.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var0 128
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches 64.. run tp ~0.064 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches 64.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var0 64
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches 32.. run tp ~0.032 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches 32.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var0 32
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches 16.. run tp ~0.016 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches 16.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var0 16
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches 8.. run tp ~0.008 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches 8.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var0 8
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches 4.. run tp ~0.004 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches 4.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var0 4
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches 2.. run tp ~0.002 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches 2.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var0 2
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches 1.. run tp ~0.001 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches 1.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var0 1

# X negative
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-512 run tp ~-0.512 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-512 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var0 512
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-256 run tp ~-0.256 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-256 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var0 256
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-128 run tp ~-0.128 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-128 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var0 128
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-64 run tp ~-0.064 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-64 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var0 64
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-32 run tp ~-0.032 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-32 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var0 32
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-16 run tp ~-0.016 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-16 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var0 16
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-8 run tp ~-0.008 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-8 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var0 8
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-4 run tp ~-0.004 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-4 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var0 4
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-2 run tp ~-0.002 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-2 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var0 2
execute at @s if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-1 run tp ~-0.001 ~ ~
execute if score glib.accuracy.entity.location.fast_set glib.var0 matches ..-1 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var0 1

# Y positive
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches 512.. run tp ~ ~0.512 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches 512.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var1 512
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches 256.. run tp ~ ~0.256 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches 256.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var1 256
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches 128.. run tp ~ ~0.128 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches 128.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var1 128
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches 64.. run tp ~ ~0.064 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches 64.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var1 64
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches 32.. run tp ~ ~0.032 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches 32.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var1 32
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches 16.. run tp ~ ~0.016 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches 16.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var1 16
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches 8.. run tp ~ ~0.008 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches 8.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var1 8
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches 4.. run tp ~ ~0.004 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches 4.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var1 4
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches 2.. run tp ~ ~0.002 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches 2.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var1 2
execute at @s if score glib.accuracy.entity.location.fast_set glib.var1 matches 1.. run tp ~ ~0.001 ~
execute if score glib.accuracy.entity.location.fast_set glib.var1 matches 1.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var1 1

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

# Z positive
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches 512.. run tp ~ ~ ~0.512
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches 512.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var2 512
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches 256.. run tp ~ ~ ~0.256
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches 256.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var2 256
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches 128.. run tp ~ ~ ~0.128
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches 128.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var2 128
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches 64.. run tp ~ ~ ~0.064
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches 64.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var2 64
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches 32.. run tp ~ ~ ~0.032
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches 32.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var2 32
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches 16.. run tp ~ ~ ~0.016
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches 16.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var2 16
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches 8.. run tp ~ ~ ~0.008
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches 8.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var2 8
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches 4.. run tp ~ ~ ~0.004
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches 4.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var2 4
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches 2.. run tp ~ ~ ~0.002
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches 2.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var2 2
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches 1.. run tp ~ ~ ~0.001
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches 1.. run scoreboard players remove glib.accuracy.entity.location.fast_set glib.var2 1

# Z negative
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-512 run tp ~ ~ ~-0.512
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-512 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var2 512
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-256 run tp ~ ~ ~-0.256
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-256 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var2 256
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-128 run tp ~ ~ ~-0.128
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-128 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var2 128
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-64 run tp ~ ~ ~-0.064
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-64 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var2 64
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-32 run tp ~ ~ ~-0.032
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-32 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var2 32
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-16 run tp ~ ~ ~-0.016
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-16 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var2 16
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-8 run tp ~ ~ ~-0.008
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-8 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var2 8
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-4 run tp ~ ~ ~-0.004
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-4 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var2 4
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-2 run tp ~ ~ ~-0.002
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-2 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var2 2
execute at @s if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-1 run tp ~ ~ ~-0.001
execute if score glib.accuracy.entity.location.fast_set glib.var2 matches ..-1 run scoreboard players add glib.accuracy.entity.location.fast_set glib.var2 1
