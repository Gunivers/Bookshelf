
# SYSTEME RESET POUR PLACEMENT DE BASE
# Placement des ArmorStands sur leurs positions initiales.
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard objectives add Tmp dummy
scoreboard objectives add Constant dummy

scoreboard players set -1 Constant -1

# --- RESET SUR L'AXE X ------------------------------------------------------------------------------------

scoreboard players operation @s Tmp = @s x

scoreboard players tag @s remove reset_pla_xP
scoreboard players tag @s remove reset_pla_xN

scoreboard players tag @s[score_Tmp_min=0] add reset_pla_xP
scoreboard players tag @s[score_Tmp=-1] add reset_pla_xN

scoreboard players operation @s[score_Tmp=-1] Tmp *= -1 Constant

tp @s 0 ~ ~

tp @s[score_Tmp_min=16777216,tag=reset_pla_xP] ~16777216 ~ ~
tp @s[score_Tmp_min=16777216,tag=reset_pla_xN] ~-16777216 ~ ~
scoreboard players remove @s[score_Tmp_min=16777216] Tmp 16777216
tp @s[score_Tmp_min=8388608,tag=reset_pla_xP] ~8388608 ~ ~
tp @s[score_Tmp_min=8388608,tag=reset_pla_xN] ~-8388608 ~ ~
scoreboard players remove @s[score_Tmp_min=8388608] Tmp 8388608
tp @s[score_Tmp_min=4194304,tag=reset_pla_xP] ~4194304 ~ ~
tp @s[score_Tmp_min=4194304,tag=reset_pla_xN] ~-4194304 ~ ~
scoreboard players remove @s[score_Tmp_min=4194304] Tmp 4194304
tp @s[score_Tmp_min=2097152,tag=reset_pla_xP] ~2097152 ~ ~
tp @s[score_Tmp_min=2097152,tag=reset_pla_xN] ~-2097152 ~ ~
scoreboard players remove @s[score_Tmp_min=2097152] Tmp 2097152
tp @s[score_Tmp_min=1048576,tag=reset_pla_xP] ~1048576 ~ ~
tp @s[score_Tmp_min=1048576,tag=reset_pla_xN] ~-1048576 ~ ~
scoreboard players remove @s[score_Tmp_min=1048576] Tmp 1048576
tp @s[score_Tmp_min=524288,tag=reset_pla_xP] ~524288 ~ ~
tp @s[score_Tmp_min=524288,tag=reset_pla_xN] ~-524288 ~ ~
scoreboard players remove @s[score_Tmp_min=524288] Tmp 524288
tp @s[score_Tmp_min=262144,tag=reset_pla_xP] ~262144 ~ ~
tp @s[score_Tmp_min=262144,tag=reset_pla_xN] ~-262144 ~ ~
scoreboard players remove @s[score_Tmp_min=262144] Tmp 262144
tp @s[score_Tmp_min=131072,tag=reset_pla_xP] ~131072 ~ ~
tp @s[score_Tmp_min=131072,tag=reset_pla_xN] ~-131072 ~ ~
scoreboard players remove @s[score_Tmp_min=131072] Tmp 131072
tp @s[score_Tmp_min=65536,tag=reset_pla_xP] ~65536 ~ ~
tp @s[score_Tmp_min=65536,tag=reset_pla_xN] ~-65536 ~ ~
scoreboard players remove @s[score_Tmp_min=65536] Tmp 65536
tp @s[score_Tmp_min=32768,tag=reset_pla_xP] ~32768 ~ ~
tp @s[score_Tmp_min=32768,tag=reset_pla_xN] ~-32768 ~ ~
scoreboard players remove @s[score_Tmp_min=32768] Tmp 32768
tp @s[score_Tmp_min=16384,tag=reset_pla_xP] ~16384 ~ ~
tp @s[score_Tmp_min=16384,tag=reset_pla_xN] ~-16384 ~ ~
scoreboard players remove @s[score_Tmp_min=16384] Tmp 16384
tp @s[score_Tmp_min=8192,tag=reset_pla_xP] ~8192 ~ ~
tp @s[score_Tmp_min=8192,tag=reset_pla_xN] ~-8192 ~ ~
scoreboard players remove @s[score_Tmp_min=8192] Tmp 8192
tp @s[score_Tmp_min=4096,tag=reset_pla_xP] ~4096 ~ ~
tp @s[score_Tmp_min=4096,tag=reset_pla_xN] ~-4096 ~ ~
scoreboard players remove @s[score_Tmp_min=4096] Tmp 4096
tp @s[score_Tmp_min=2048,tag=reset_pla_xP] ~2048 ~ ~
tp @s[score_Tmp_min=2048,tag=reset_pla_xN] ~-2048 ~ ~
scoreboard players remove @s[score_Tmp_min=2048] Tmp 2048
tp @s[score_Tmp_min=1024,tag=reset_pla_xP] ~1024 ~ ~
tp @s[score_Tmp_min=1024,tag=reset_pla_xN] ~-1024 ~ ~
scoreboard players remove @s[score_Tmp_min=1024] Tmp 1024
tp @s[score_Tmp_min=512,tag=reset_pla_xP] ~512 ~ ~
tp @s[score_Tmp_min=512,tag=reset_pla_xN] ~-512 ~ ~
scoreboard players remove @s[score_Tmp_min=512] Tmp 512
tp @s[score_Tmp_min=256,tag=reset_pla_xP] ~256 ~ ~
tp @s[score_Tmp_min=256,tag=reset_pla_xN] ~-256 ~ ~
scoreboard players remove @s[score_Tmp_min=256] Tmp 256
tp @s[score_Tmp_min=128,tag=reset_pla_xP] ~128 ~ ~
tp @s[score_Tmp_min=128,tag=reset_pla_xN] ~-128 ~ ~
scoreboard players remove @s[score_Tmp_min=128] Tmp 128
tp @s[score_Tmp_min=64,tag=reset_pla_xP] ~64 ~ ~
tp @s[score_Tmp_min=64,tag=reset_pla_xN] ~-64 ~ ~
scoreboard players remove @s[score_Tmp_min=64] Tmp 64
tp @s[score_Tmp_min=32,tag=reset_pla_xP] ~32 ~ ~
tp @s[score_Tmp_min=32,tag=reset_pla_xN] ~-32 ~ ~
scoreboard players remove @s[score_Tmp_min=32] Tmp 32
tp @s[score_Tmp_min=16,tag=reset_pla_xP] ~16 ~ ~
tp @s[score_Tmp_min=16,tag=reset_pla_xN] ~-16 ~ ~
scoreboard players remove @s[score_Tmp_min=16] Tmp 16
tp @s[score_Tmp_min=8,tag=reset_pla_xP] ~8 ~ ~
tp @s[score_Tmp_min=8,tag=reset_pla_xN] ~-8 ~ ~
scoreboard players remove @s[score_Tmp_min=8] Tmp 8
tp @s[score_Tmp_min=4,tag=reset_pla_xP] ~4 ~ ~
tp @s[score_Tmp_min=4,tag=reset_pla_xN] ~-4 ~ ~
scoreboard players remove @s[score_Tmp_min=4] Tmp 4
tp @s[score_Tmp_min=2,tag=reset_pla_xP] ~2 ~ ~
tp @s[score_Tmp_min=2,tag=reset_pla_xN] ~-2 ~ ~
scoreboard players remove @s[score_Tmp_min=2] Tmp 2
tp @s[score_Tmp_min=1,tag=reset_pla_xP] ~1 ~ ~
tp @s[score_Tmp_min=1,tag=reset_pla_xN] ~-1 ~ ~
scoreboard players remove @s[score_Tmp_min=1] Tmp 1

tp @s ~-0.5 ~ ~
scoreboard players operation @s Tmp = @s xM

scoreboard players tag @s remove reset_pla_xMP
scoreboard players tag @s remove reset_pla_xMN

scoreboard players tag @s[score_x_min=0] add reset_pla_xMP
scoreboard players tag @s[score_x=-1] add reset_pla_xMN

tp @s[score_Tmp_min=512,tag=reset_pla_xMP] ~0.512 ~ ~
tp @s[score_Tmp_min=512,tag=reset_pla_xMN] ~-0.512 ~ ~
scoreboard players remove @s[score_Tmp_min=512] Tmp 512
tp @s[score_Tmp_min=256,tag=reset_pla_xMP] ~0.256 ~ ~
tp @s[score_Tmp_min=256,tag=reset_pla_xMN] ~-0.256 ~ ~
scoreboard players remove @s[score_Tmp_min=256] Tmp 256
tp @s[score_Tmp_min=128,tag=reset_pla_xMP] ~0.128 ~ ~
tp @s[score_Tmp_min=128,tag=reset_pla_xMN] ~-0.128 ~ ~
scoreboard players remove @s[score_Tmp_min=128] Tmp 128
tp @s[score_Tmp_min=64,tag=reset_pla_xMP] ~0.064 ~ ~
tp @s[score_Tmp_min=64,tag=reset_pla_xMN] ~-0.064 ~ ~
scoreboard players remove @s[score_Tmp_min=64] Tmp 64
tp @s[score_Tmp_min=32,tag=reset_pla_xMP] ~0.032 ~ ~
tp @s[score_Tmp_min=32,tag=reset_pla_xMN] ~-0.032 ~ ~
scoreboard players remove @s[score_Tmp_min=32] Tmp 32
tp @s[score_Tmp_min=16,tag=reset_pla_xMP] ~0.016 ~ ~
tp @s[score_Tmp_min=16,tag=reset_pla_xMN] ~-0.016 ~ ~
scoreboard players remove @s[score_Tmp_min=16] Tmp 16
tp @s[score_Tmp_min=8,tag=reset_pla_xMP] ~0.008 ~ ~
tp @s[score_Tmp_min=8,tag=reset_pla_xMN] ~-0.008 ~ ~
scoreboard players remove @s[score_Tmp_min=8] Tmp 8
tp @s[score_Tmp_min=4,tag=reset_pla_xMP] ~0.004 ~ ~
tp @s[score_Tmp_min=4,tag=reset_pla_xMN] ~-0.004 ~ ~
scoreboard players remove @s[score_Tmp_min=4] Tmp 4
tp @s[score_Tmp_min=2,tag=reset_pla_xMP] ~0.002 ~ ~
tp @s[score_Tmp_min=2,tag=reset_pla_xMN] ~-0.002 ~ ~
scoreboard players remove @s[score_Tmp_min=2] Tmp 2
tp @s[score_Tmp_min=1,tag=reset_pla_xMP] ~0.001 ~ ~
tp @s[score_Tmp_min=1,tag=reset_pla_xMN] ~-0.001 ~ ~
scoreboard players remove @s[score_Tmp_min=2] Tmp 1

# --- RESET SUR L'AXE Y ------------------------------------------------------------------------------------

tp @s ~ 0 ~

scoreboard players operation @s Tmp = @s y

tp @s[score_Tmp_min=128] ~ ~128 ~
scoreboard players remove @s[score_Tmp_min=128] Tmp 128
tp @s[score_Tmp_min=64] ~ ~64 ~
scoreboard players remove @s[score_Tmp_min=64] Tmp 64
tp @s[score_Tmp_min=32] ~ ~32 ~
scoreboard players remove @s[score_Tmp_min=32] Tmp 32
tp @s[score_Tmp_min=16] ~ ~16 ~
scoreboard players remove @s[score_Tmp_min=16] Tmp 16
tp @s[score_Tmp_min=8] ~ ~8 ~
scoreboard players remove @s[score_Tmp_min=8] Tmp 8
tp @s[score_Tmp_min=4] ~ ~4 ~
scoreboard players remove @s[score_Tmp_min=4] Tmp 4
tp @s[score_Tmp_min=2] ~ ~2 ~
scoreboard players remove @s[score_Tmp_min=2] Tmp 2
tp @s[score_Tmp_min=1] ~ ~1 ~
scoreboard players remove @s[score_Tmp_min=1] Tmp 1

scoreboard players operation @s Tmp = @s yM

tp @s[score_Tmp_min=512] ~ ~0.512 ~
scoreboard players remove @s[score_Tmp_min=512] Tmp 512
tp @s[score_Tmp_min=256] ~ ~0.256 ~
scoreboard players remove @s[score_Tmp_min=256] Tmp 256
tp @s[score_Tmp_min=128] ~ ~0.128 ~
scoreboard players remove @s[score_Tmp_min=128] Tmp 128
tp @s[score_Tmp_min=64] ~ ~0.064 ~
scoreboard players remove @s[score_Tmp_min=64] Tmp 64
tp @s[score_Tmp_min=32] ~ ~0.032 ~
scoreboard players remove @s[score_Tmp_min=32] Tmp 32
tp @s[score_Tmp_min=16] ~ ~0.016 ~
scoreboard players remove @s[score_Tmp_min=16] Tmp 16
tp @s[score_Tmp_min=8] ~ ~0.008 ~
scoreboard players remove @s[score_Tmp_min=8] Tmp 8
tp @s[score_Tmp_min=4] ~ ~0.004 ~
scoreboard players remove @s[score_Tmp_min=4] Tmp 4
tp @s[score_Tmp_min=2] ~ ~0.002 ~
scoreboard players remove @s[score_Tmp_min=2] Tmp 2
tp @s[score_Tmp_min=1] ~ ~0.001 ~
scoreboard players remove @s[score_Tmp_min=1] Tmp 1

# --- RESET SUR L'AXE Z ------------------------------------------------------------------------------------

scoreboard players operation @s Tmp = @s z

scoreboard players tag @s remove reset_pla_zP
scoreboard players tag @s remove reset_pla_zN

scoreboard players tag @s[score_Tmp_min=0] add reset_pla_zP
scoreboard players tag @s[score_Tmp=-1] add reset_pla_zN

scoreboard players operation @s[score_Tmp=-1] Tmp *= -1 Constant

tp @s ~ ~ 0

tp @s[score_Tmp_min=16777216,tag=reset_pla_zP] ~ ~ ~16777216
tp @s[score_Tmp_min=16777216,tag=reset_pla_zN] ~ ~ ~-16777216
scoreboard players remove @s[score_Tmp_min=16777216] Tmp 16777216
tp @s[score_Tmp_min=8388608,tag=reset_pla_zP] ~ ~ ~8388608
tp @s[score_Tmp_min=8388608,tag=reset_pla_zN] ~ ~ ~-8388608
scoreboard players remove @s[score_Tmp_min=8388608] Tmp 8388608
tp @s[score_Tmp_min=4194304,tag=reset_pla_zP] ~ ~ ~4194304
tp @s[score_Tmp_min=4194304,tag=reset_pla_zN] ~ ~ ~-4194304
scoreboard players remove @s[score_Tmp_min=4194304] Tmp 4194304
tp @s[score_Tmp_min=2097152,tag=reset_pla_zP] ~ ~ ~2097152
tp @s[score_Tmp_min=2097152,tag=reset_pla_zN] ~ ~ ~-2097152
scoreboard players remove @s[score_Tmp_min=2097152] Tmp 2097152
tp @s[score_Tmp_min=1048576,tag=reset_pla_zP] ~ ~ ~1048576
tp @s[score_Tmp_min=1048576,tag=reset_pla_zN] ~ ~ ~-1048576
scoreboard players remove @s[score_Tmp_min=1048576] Tmp 1048576
tp @s[score_Tmp_min=524288,tag=reset_pla_zP] ~ ~ ~524288
tp @s[score_Tmp_min=524288,tag=reset_pla_zN] ~ ~ ~-524288
scoreboard players remove @s[score_Tmp_min=524288] Tmp 524288
tp @s[score_Tmp_min=262144,tag=reset_pla_zP] ~ ~ ~262144
tp @s[score_Tmp_min=262144,tag=reset_pla_zN] ~ ~ ~-262144
scoreboard players remove @s[score_Tmp_min=262144] Tmp 262144
tp @s[score_Tmp_min=131072,tag=reset_pla_zP] ~ ~ ~131072
tp @s[score_Tmp_min=131072,tag=reset_pla_zN] ~ ~ ~-131072
scoreboard players remove @s[score_Tmp_min=131072] Tmp 131072
tp @s[score_Tmp_min=65536,tag=reset_pla_zP] ~ ~ ~65536
tp @s[score_Tmp_min=65536,tag=reset_pla_zN] ~ ~ ~-65536
scoreboard players remove @s[score_Tmp_min=65536] Tmp 65536
tp @s[score_Tmp_min=32768,tag=reset_pla_zP] ~ ~ ~32768
tp @s[score_Tmp_min=32768,tag=reset_pla_zN] ~ ~ ~-32768
scoreboard players remove @s[score_Tmp_min=32768] Tmp 32768
tp @s[score_Tmp_min=16384,tag=reset_pla_zP] ~ ~ ~16384
tp @s[score_Tmp_min=16384,tag=reset_pla_zN] ~ ~ ~-16384
scoreboard players remove @s[score_Tmp_min=16384] Tmp 16384
tp @s[score_Tmp_min=8192,tag=reset_pla_zP] ~ ~ ~8192
tp @s[score_Tmp_min=8192,tag=reset_pla_zN] ~ ~ ~-8192
scoreboard players remove @s[score_Tmp_min=8192] Tmp 8192
tp @s[score_Tmp_min=4096,tag=reset_pla_zP] ~ ~ ~4096
tp @s[score_Tmp_min=4096,tag=reset_pla_zN] ~ ~ ~-4096
scoreboard players remove @s[score_Tmp_min=4096] Tmp 4096
tp @s[score_Tmp_min=2048,tag=reset_pla_zP] ~ ~ ~2048
tp @s[score_Tmp_min=2048,tag=reset_pla_zN] ~ ~ ~-2048
scoreboard players remove @s[score_Tmp_min=2048] Tmp 2048
tp @s[score_Tmp_min=1024,tag=reset_pla_zP] ~ ~ ~1024
tp @s[score_Tmp_min=1024,tag=reset_pla_zN] ~ ~ ~-1024
scoreboard players remove @s[score_Tmp_min=1024] Tmp 1024
tp @s[score_Tmp_min=512,tag=reset_pla_zP] ~ ~ ~512
tp @s[score_Tmp_min=512,tag=reset_pla_zN] ~ ~ ~-512
scoreboard players remove @s[score_Tmp_min=512] Tmp 512
tp @s[score_Tmp_min=256,tag=reset_pla_zP] ~ ~ ~256
tp @s[score_Tmp_min=256,tag=reset_pla_zN] ~ ~ ~-256
scoreboard players remove @s[score_Tmp_min=256] Tmp 256
tp @s[score_Tmp_min=128,tag=reset_pla_zP] ~ ~ ~128
tp @s[score_Tmp_min=128,tag=reset_pla_zN] ~ ~ ~-128
scoreboard players remove @s[score_Tmp_min=128] Tmp 128
tp @s[score_Tmp_min=64,tag=reset_pla_zP] ~ ~ ~64
tp @s[score_Tmp_min=64,tag=reset_pla_zN] ~ ~ ~-64
scoreboard players remove @s[score_Tmp_min=64] Tmp 64
tp @s[score_Tmp_min=32,tag=reset_pla_zP] ~ ~ ~32
tp @s[score_Tmp_min=32,tag=reset_pla_zN] ~ ~ ~-32
scoreboard players remove @s[score_Tmp_min=32] Tmp 32
tp @s[score_Tmp_min=16,tag=reset_pla_zP] ~ ~ ~16
tp @s[score_Tmp_min=16,tag=reset_pla_zN] ~ ~ ~-16
scoreboard players remove @s[score_Tmp_min=16] Tmp 16
tp @s[score_Tmp_min=8,tag=reset_pla_zP] ~ ~ ~8
tp @s[score_Tmp_min=8,tag=reset_pla_zN] ~ ~ ~-8
scoreboard players remove @s[score_Tmp_min=8] Tmp 8
tp @s[score_Tmp_min=4,tag=reset_pla_zP] ~ ~ ~4
tp @s[score_Tmp_min=4,tag=reset_pla_zN] ~ ~ ~-4
scoreboard players remove @s[score_Tmp_min=4] Tmp 4
tp @s[score_Tmp_min=2,tag=reset_pla_zP] ~ ~ ~2
tp @s[score_Tmp_min=2,tag=reset_pla_zN] ~ ~ ~-2
scoreboard players remove @s[score_Tmp_min=2] Tmp 2
tp @s[score_Tmp_min=1,tag=reset_pla_zP] ~ ~ ~1
tp @s[score_Tmp_min=1,tag=reset_pla_zN] ~ ~ ~-1
scoreboard players remove @s[score_Tmp_min=1] Tmp 1


tp @s ~ ~ ~-0.5
scoreboard players operation @s Tmp = @s zM

scoreboard players tag @s remove reset_pla_zMP
scoreboard players tag @s remove reset_pla_zMN

scoreboard players tag @s[score_z_min=0] add reset_pla_zMP
scoreboard players tag @s[score_z=-1] add reset_pla_zMN

tp @s[tag=reset_pla_zMP] ~ ~ ~-1

tp @s[score_Tmp_min=512,tag=reset_pla_zMP] ~ ~ ~0.512
tp @s[score_Tmp_min=512,tag=reset_pla_zMN] ~ ~ ~-0.512
scoreboard players remove @s[score_Tmp_min=512] Tmp 512
tp @s[score_Tmp_min=256,tag=reset_pla_zMP] ~ ~ ~0.256
tp @s[score_Tmp_min=256,tag=reset_pla_zMN] ~ ~ ~-0.256
scoreboard players remove @s[score_Tmp_min=256] Tmp 256
tp @s[score_Tmp_min=128,tag=reset_pla_zMP] ~ ~ ~0.128
tp @s[score_Tmp_min=128,tag=reset_pla_zMN] ~ ~ ~-0.128
scoreboard players remove @s[score_Tmp_min=128] Tmp 128
tp @s[score_Tmp_min=64,tag=reset_pla_zMP] ~ ~ ~0.064
tp @s[score_Tmp_min=64,tag=reset_pla_zMN] ~ ~ ~-0.064
scoreboard players remove @s[score_Tmp_min=64] Tmp 64
tp @s[score_Tmp_min=32,tag=reset_pla_zMP] ~ ~ ~0.032
tp @s[score_Tmp_min=32,tag=reset_pla_zMN] ~ ~ ~-0.032
scoreboard players remove @s[score_Tmp_min=32] Tmp 32
tp @s[score_Tmp_min=16,tag=reset_pla_zMP] ~ ~ ~0.016
tp @s[score_Tmp_min=16,tag=reset_pla_zMN] ~ ~ ~-0.016
scoreboard players remove @s[score_Tmp_min=16] Tmp 16
tp @s[score_Tmp_min=8,tag=reset_pla_zMP] ~ ~ ~0.008
tp @s[score_Tmp_min=8,tag=reset_pla_zMN] ~ ~ ~-0.008
scoreboard players remove @s[score_Tmp_min=8] Tmp 8
tp @s[score_Tmp_min=4,tag=reset_pla_zMP] ~ ~ ~0.004
tp @s[score_Tmp_min=4,tag=reset_pla_zMN] ~ ~ ~-0.004
scoreboard players remove @s[score_Tmp_min=4] Tmp 4
tp @s[score_Tmp_min=2,tag=reset_pla_zMP] ~ ~ ~0.002
tp @s[score_Tmp_min=2,tag=reset_pla_zMN] ~ ~ ~-0.002
scoreboard players remove @s[score_Tmp_min=2] Tmp 2
tp @s[score_Tmp_min=1,tag=reset_pla_zMP] ~ ~ ~0.001
tp @s[score_Tmp_min=1,tag=reset_pla_zMN] ~ ~ ~-0.001
scoreboard players remove @s[score_Tmp_min=2] Tmp 1

# --- RESET DE LA VISION ------------------------------------------------------------------------------------

tp @s ~ ~ ~ 0 ~

scoreboard players operation @s Tmp = @s vision

tp @s[score_Tmp_min=180] ~ ~ ~ ~180 ~
scoreboard players remove @s[score_Tmp_min=180] Tmp 180
tp @s[score_Tmp_min=90] ~ ~ ~ ~90 ~
scoreboard players remove @s[score_Tmp_min=90] Tmp 90
tp @s[score_Tmp_min=45] ~ ~ ~ ~45 ~
scoreboard players remove @s[score_Tmp_min=45] Tmp 45
tp @s[score_Tmp_min=23] ~ ~ ~ ~23 ~
scoreboard players remove @s[score_Tmp_min=23] Tmp 23
tp @s[score_Tmp_min=12] ~ ~ ~ ~12 ~
scoreboard players remove @s[score_Tmp_min=12] Tmp 12
tp @s[score_Tmp_min=6] ~ ~ ~ ~6 ~
scoreboard players remove @s[score_Tmp_min=6] Tmp 6
tp @s[score_Tmp_min=3] ~ ~ ~ ~3 ~
scoreboard players remove @s[score_Tmp_min=3] Tmp 3
tp @s[score_Tmp_min=2] ~ ~ ~ ~2 ~
scoreboard players remove @s[score_Tmp_min=2] Tmp 2
tp @s[score_Tmp_min=1] ~ ~ ~ ~1 ~
scoreboard players remove @s[score_Tmp_min=1] Tmp 1





