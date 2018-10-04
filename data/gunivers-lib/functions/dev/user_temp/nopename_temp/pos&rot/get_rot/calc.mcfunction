#Function by Koder
#Edited by NOPEname

# Get horizontal rotation
scoreboard players set @s ry 0

scoreboard players add @s[rym=256] ry 256
tp @s[rym=256] ~ ~ ~ ~-256 ~
scoreboard players add @s[rym=128] ry 128
tp @s[rym=128] ~ ~ ~ ~-128 ~
scoreboard players add @s[rym=64] ry 64
tp @s[rym=64] ~ ~ ~ ~-64 ~
scoreboard players add @s[rym=32] ry 32
tp @s[rym=32] ~ ~ ~ ~-32 ~
scoreboard players add @s[rym=16] ry 16
tp @s[rym=16] ~ ~ ~ ~-16 ~
scoreboard players add @s[rym=8] ry 8
tp @s[rym=8] ~ ~ ~ ~-8 ~
scoreboard players add @s[rym=4] ry 4
tp @s[rym=4] ~ ~ ~ ~-4 ~
scoreboard players add @s[rym=2] ry 2
tp @s[rym=2] ~ ~ ~ ~-2 ~
scoreboard players add @s[rym=1] ry 1


# Get vertical rotation
scoreboard players set @s rx 0

# Positive (down)
scoreboard players add @s[rx=90,rxm=64] rx 64
tp @s[rx=90,rxm=64] ~ ~ ~ ~ ~-64
scoreboard players add @s[rx=90,rxm=32] rx 32
tp @s[rx=90,rxm=32] ~ ~ ~ ~ ~-32
scoreboard players add @s[rx=90,rxm=16] rx 16
tp @s[rx=90,rxm=16] ~ ~ ~ ~ ~-16
scoreboard players add @s[rx=90,rxm=8] rx 8
tp @s[rx=90,rxm=8] ~ ~ ~ ~ ~-8
scoreboard players add @s[rx=90,rxm=4] rx 4
tp @s[rx=90,rxm=4] ~ ~ ~ ~ ~-4
scoreboard players add @s[rx=90,rxm=2] rx 2
tp @s[rx=90,rxm=2] ~ ~ ~ ~ ~-2
scoreboard players add @s[rx=90,rxm=1] rx 1

# Negative (up)
scoreboard players remove @s[rx=-64,rxm=-90] rx 64
tp @s[rx=-64,rxm=-90] ~ ~ ~ ~ ~64
scoreboard players remove @s[rx=-32,rxm=-90] rx 32
tp @s[rx=-32,rxm=-90] ~ ~ ~ ~ ~32
scoreboard players remove @s[rx=-16,rxm=-90] rx 16
tp @s[rx=-16,rxm=-90] ~ ~ ~ ~ ~16
scoreboard players remove @s[rx=-8,rxm=-90] rx 8
tp @s[rx=-8,rxm=-90] ~ ~ ~ ~ ~8
scoreboard players remove @s[rx=-4,rxm=-90] rx 4
tp @s[rx=-4,rxm=-90] ~ ~ ~ ~ ~4
scoreboard players remove @s[rx=-2,rxm=-90] rx 2
tp @s[rx=-2,rxm=-90] ~ ~ ~ ~ ~2
scoreboard players remove @s[rx=-1,rxm=-90] rx 1