
scoreboard players operation bs.accuracy.entity.location.fast_set bs.loc.z %= 1000 bs.const

# Z positive
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.z matches 512.. run tp ~ ~ ~0.512
execute if score bs.accuracy.entity.location.fast_set bs.loc.z matches 512.. run scoreboard players remove bs.accuracy.entity.location.fast_set bs.loc.z 512
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.z matches 256.. run tp ~ ~ ~0.256
execute if score bs.accuracy.entity.location.fast_set bs.loc.z matches 256.. run scoreboard players remove bs.accuracy.entity.location.fast_set bs.loc.z 256
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.z matches 128.. run tp ~ ~ ~0.128
execute if score bs.accuracy.entity.location.fast_set bs.loc.z matches 128.. run scoreboard players remove bs.accuracy.entity.location.fast_set bs.loc.z 128
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.z matches 64.. run tp ~ ~ ~0.064
execute if score bs.accuracy.entity.location.fast_set bs.loc.z matches 64.. run scoreboard players remove bs.accuracy.entity.location.fast_set bs.loc.z 64
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.z matches 32.. run tp ~ ~ ~0.032
execute if score bs.accuracy.entity.location.fast_set bs.loc.z matches 32.. run scoreboard players remove bs.accuracy.entity.location.fast_set bs.loc.z 32
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.z matches 16.. run tp ~ ~ ~0.016
execute if score bs.accuracy.entity.location.fast_set bs.loc.z matches 16.. run scoreboard players remove bs.accuracy.entity.location.fast_set bs.loc.z 16
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.z matches 8.. run tp ~ ~ ~0.008
execute if score bs.accuracy.entity.location.fast_set bs.loc.z matches 8.. run scoreboard players remove bs.accuracy.entity.location.fast_set bs.loc.z 8
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.z matches 4.. run tp ~ ~ ~0.004
execute if score bs.accuracy.entity.location.fast_set bs.loc.z matches 4.. run scoreboard players remove bs.accuracy.entity.location.fast_set bs.loc.z 4
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.z matches 2.. run tp ~ ~ ~0.002
execute if score bs.accuracy.entity.location.fast_set bs.loc.z matches 2.. run scoreboard players remove bs.accuracy.entity.location.fast_set bs.loc.z 2
execute at @s if score bs.accuracy.entity.location.fast_set bs.loc.z matches 1.. run tp ~ ~ ~0.001
execute if score bs.accuracy.entity.location.fast_set bs.loc.z matches 1.. run scoreboard players remove bs.accuracy.entity.location.fast_set bs.loc.z 1
