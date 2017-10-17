#Get Location
#@Author: LeiRoF

#Version: 1.0
#Minecraft Version: 1.12

#Import:
# - Location

#Input values:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

#Output values:
# - None

tp @s -100000 0 -100000
scoreboard players operation @s Tmp = @s LocX
scoreboard players operation @s Tmp2 = @s LocY
scoreboard players operation @s Tmp3 = @s LocZ

tp @s[score_Tmp_min=131072] ~131072 ~ ~
scoreboard players remove @s[score_Tmp_min=131072] Tmp 131072
tp @s[score_Tmp_min=65536] ~65536 ~ ~
scoreboard players remove @s[score_Tmp_min=65536] Tmp 65536
tp @s[score_Tmp_min=32768] ~32768 ~ ~
scoreboard players remove @s[score_Tmp_min=32768] Tmp 32768
tp @s[score_Tmp_min=16384] ~16384 ~ ~
scoreboard players remove @s[score_Tmp_min=16384] Tmp 16384
tp @s[score_Tmp_min=8192] ~8192 ~ ~
scoreboard players remove @s[score_Tmp_min=8192] Tmp 8192
tp @s[score_Tmp_min=4096] ~4096 ~ ~
scoreboard players remove @s[score_Tmp_min=4096] Tmp 4096
tp @s[score_Tmp_min=2048] ~2048 ~ ~
scoreboard players remove @s[score_Tmp_min=2048] Tmp 2048
tp @s[score_Tmp_min=1024] ~1024 ~ ~
scoreboard players remove @s[score_Tmp_min=1024] Tmp 1024
tp @s[score_Tmp_min=512] ~512 ~ ~
scoreboard players remove @s[score_Tmp_min=512] Tmp 512
tp @s[score_Tmp_min=256] ~256 ~ ~
scoreboard players remove @s[score_Tmp_min=256] Tmp 256
tp @s[score_Tmp_min=128] ~128 ~ ~
scoreboard players remove @s[score_Tmp_min=128] Tmp 128
tp @s[score_Tmp_min=64] ~64 ~ ~
scoreboard players remove @s[score_Tmp_min=64] Tmp 64
tp @s[score_Tmp_min=32] ~32 ~ ~
scoreboard players remove @s[score_Tmp_min=32] Tmp 32
tp @s[score_Tmp_min=16] ~16 ~ ~
scoreboard players remove @s[score_Tmp_min=16] Tmp 16
tp @s[score_Tmp_min=8] ~8 ~ ~
scoreboard players remove @s[score_Tmp_min=8] Tmp 8
tp @s[score_Tmp_min=4] ~4 ~ ~
scoreboard players remove @s[score_Tmp_min=4] Tmp 4
tp @s[score_Tmp_min=2] ~2 ~ ~
scoreboard players remove @s[score_Tmp_min=2] Tmp 2
tp @s[score_Tmp_min=1] ~1 ~ ~
scoreboard players remove @s[score_Tmp_min=1] Tmp 1 


tp @s[score_Tmp2_min=131072] ~ ~131072 ~
scoreboard players remove @s[score_Tmp2_min=131072] Tmp2 131072
tp @s[score_Tmp2_min=65536] ~ ~65536 ~
scoreboard players remove @s[score_Tmp2_min=65536] Tmp2 65536
tp @s[score_Tmp2_min=32768] ~ ~32768 ~
scoreboard players remove @s[score_Tmp2_min=32768] Tmp2 32768
tp @s[score_Tmp2_min=16384] ~ ~16384 ~
scoreboard players remove @s[score_Tmp2_min=16384] Tmp2 16384
tp @s[score_Tmp2_min=8192] ~ ~8192 ~
scoreboard players remove @s[score_Tmp2_min=8192] Tmp2 8192
tp @s[score_Tmp2_min=4096] ~ ~4096 ~
scoreboard players remove @s[score_Tmp2_min=4096] Tmp2 4096
tp @s[score_Tmp2_min=2048] ~ ~2048 ~
scoreboard players remove @s[score_Tmp2_min=2048] Tmp2 2048
tp @s[score_Tmp2_min=1024] ~ ~1024 ~
scoreboard players remove @s[score_Tmp2_min=1024] Tmp2 1024
tp @s[score_Tmp2_min=512] ~ ~512 ~
scoreboard players remove @s[score_Tmp2_min=512] Tmp2 512
tp @s[score_Tmp2_min=256] ~ ~256 ~
scoreboard players remove @s[score_Tmp2_min=256] Tmp2 256
tp @s[score_Tmp2_min=128] ~ ~128 ~
scoreboard players remove @s[score_Tmp2_min=128] Tmp2 128
tp @s[score_Tmp2_min=64] ~ ~64 ~
scoreboard players remove @s[score_Tmp2_min=64] Tmp2 64
tp @s[score_Tmp2_min=32] ~ ~32 ~
scoreboard players remove @s[score_Tmp2_min=32] Tmp2 32
tp @s[score_Tmp2_min=16] ~ ~16 ~
scoreboard players remove @s[score_Tmp2_min=16] Tmp2 16
tp @s[score_Tmp2_min=8] ~ ~8 ~
scoreboard players remove @s[score_Tmp2_min=8] Tmp2 8
tp @s[score_Tmp2_min=4] ~ ~4 ~
scoreboard players remove @s[score_Tmp2_min=4] Tmp2 4
tp @s[score_Tmp2_min=2] ~ ~2 ~
scoreboard players remove @s[score_Tmp2_min=2] Tmp2 2
tp @s[score_Tmp2_min=1] ~ ~1 ~
scoreboard players remove @s[score_Tmp2_min=1] Tmp2 1 


tp @s[score_Tmp3_min=131072] ~ ~ ~131072
scoreboard players remove @s[score_Tmp3_min=131072] Tmp3 131072
tp @s[score_Tmp3_min=65536] ~ ~ ~65536
scoreboard players remove @s[score_Tmp3_min=65536] Tmp3 65536
tp @s[score_Tmp3_min=32768] ~ ~ ~32768
scoreboard players remove @s[score_Tmp3_min=32768] Tmp3 32768
tp @s[score_Tmp3_min=16384] ~ ~ ~16384
scoreboard players remove @s[score_Tmp3_min=16384] Tmp3 16384
tp @s[score_Tmp3_min=8192] ~ ~ ~8192
scoreboard players remove @s[score_Tmp3_min=8192] Tmp3 8192
tp @s[score_Tmp3_min=4096] ~ ~ ~4096
scoreboard players remove @s[score_Tmp3_min=4096] Tmp3 4096
tp @s[score_Tmp3_min=2048] ~ ~ ~2048
scoreboard players remove @s[score_Tmp3_min=2048] Tmp3 2048
tp @s[score_Tmp3_min=1024] ~ ~ ~1024
scoreboard players remove @s[score_Tmp3_min=1024] Tmp3 1024
tp @s[score_Tmp3_min=512] ~ ~ ~512
scoreboard players remove @s[score_Tmp3_min=512] Tmp3 512
tp @s[score_Tmp3_min=256] ~ ~ ~256
scoreboard players remove @s[score_Tmp3_min=256] Tmp3 256
tp @s[score_Tmp3_min=128] ~ ~ ~128
scoreboard players remove @s[score_Tmp3_min=128] Tmp3 128
tp @s[score_Tmp3_min=64] ~ ~ ~64
scoreboard players remove @s[score_Tmp3_min=64] Tmp3 64
tp @s[score_Tmp3_min=32] ~ ~ ~32
scoreboard players remove @s[score_Tmp3_min=32] Tmp3 32
tp @s[score_Tmp3_min=16] ~ ~ ~16
scoreboard players remove @s[score_Tmp3_min=16] Tmp3 16
tp @s[score_Tmp3_min=8] ~ ~ ~8
scoreboard players remove @s[score_Tmp3_min=8] Tmp3 8
tp @s[score_Tmp3_min=4] ~ ~ ~4
scoreboard players remove @s[score_Tmp3_min=4] Tmp3 4
tp @s[score_Tmp3_min=2] ~ ~ ~2
scoreboard players remove @s[score_Tmp3_min=2] Tmp3 2
tp @s[score_Tmp3_min=1] ~ ~ ~1
scoreboard players remove @s[score_Tmp3_min=1] Tmp3 1 