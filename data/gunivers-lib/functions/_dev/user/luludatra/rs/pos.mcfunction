
# TESTFOR DE POSITION
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add xM dummy
scoreboard objectives add yM dummy
scoreboard objectives add zM dummy
scoreboard objectives add Constant dummy
scoreboard objectives add vision dummy
scoreboard objectives add v_Tmp1 dummy

scoreboard players set -1 Constant -1

# ---------------------------------------------------------------------------------------

execute @s ~ ~ ~ /summon Armor_Stand ~ ~-30 ~ {CustomName:"pos_main",NoGravity:1b,Invisible:1b}
execute @s ~ ~ ~ /summon Armor_Stand ~ ~-30 ~ {CustomName:"pos_test",NoGravity:1b,Invisible:1b}

tp @e[name=pos_main] ~ ~30 ~
tp @e[name=pos_test] ~ ~30 ~

tp @e[name=pos_main] @s
tp @e[name=pos_test] @s

scoreboard players set @e[name=pos_main] x -30000000
scoreboard players set @e[name=pos_main] y -4096
scoreboard players set @e[name=pos_main] z -30000000

scoreboard players set @e[name=pos_main] xM 0
scoreboard players set @e[name=pos_main] yM 0
scoreboard players set @e[name=pos_main] zM 0

tp @e[name=pos_test] @e[name=pos_main]

# --- TEST X -----------------------------------------------------------------------------

tp @e[name=pos_main] ~16777216 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 16777216
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~8388608 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 8388608
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~4194304 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 4194304
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~2097152 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 2097152
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~1048576 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 1048576
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~524288 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 524288
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~262144 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 262144
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~131072 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 131072
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~65536 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 65536
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~32768 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 32768
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~16384 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 16384
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~8192 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 8192
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~4096 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 4096
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~2048 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 2048
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~1024 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 1024
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~512 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 512
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~256 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 256
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~128 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 128
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~64 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 64
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~32 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 32
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~16 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 16
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~8 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 8
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~4 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 4
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~2 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 2
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~1 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] x 1
tp @e[name=pos_test] @e[name=pos_main]

# ----------------------

tp @e[name=pos_main] ~0.512 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] xM 512
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~0.256 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] xM 256
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~0.128 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] xM 128
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~0.064 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] xM 64
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~0.032 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] xM 32
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~0.016 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] xM 16
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~0.008 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] xM 8
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~0.004 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] xM 4
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~0.002 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] xM 2
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~0.001 ~ ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] xM 1
tp @e[name=pos_test] @e[name=pos_main]

# --- TEST Y -----------------------------------------------------------------------------

tp @e[name=pos_main] ~ ~2048 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 2048
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~1024 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 1024
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~512 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 512
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~256 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 256
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~128 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 128
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~64 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 64
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~32 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 32
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~16 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 16
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~8 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 8
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~4 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 4
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~2 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 2
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~1 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] y 1
tp @e[name=pos_test] @e[name=pos_main]

# ----------------------

tp @e[name=pos_main] ~ ~0.512 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] yM 512
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~0.256 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] yM 256
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~0.128 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] yM 128
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~0.064 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] yM 64
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~0.032 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] yM 32
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~0.016 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] yM 16
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~0.008 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] yM 8
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~0.004 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] yM 4
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~0.002 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] yM 2
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~0.001 ~
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] yM 1
tp @e[name=pos_test] @e[name=pos_main]

# --- TEST Z -----------------------------------------------------------------------------

tp @e[name=pos_main] ~ ~ ~16777216
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 16777216
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~8388608
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 8388608
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~4194304
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 4194304
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~2097152
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 2097152
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~1048576
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 1048576
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~524288
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 524288
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~262144
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 262144
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~131072
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 131072
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~65536
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 65536
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~32768
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 32768
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~16384
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 16384
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~8192
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 8192
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~4096
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 4096
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~2048
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 2048
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~1024
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 1024
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~512
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 512
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~256
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 256
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~128
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 128
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~64
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 64
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~32
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 32
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~16
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 16
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~8
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 8
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~4
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 4
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~2
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 2
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~1
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] z 1
tp @e[name=pos_test] @e[name=pos_main]

# ----------------------

tp @e[name=pos_main] ~ ~ ~0.512
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] zM 512
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~0.256
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] zM 256
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~0.128
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] zM 128
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~0.064
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] zM 64
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~0.032
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] zM 32
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~0.016
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] zM 16
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~0.008
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] zM 8
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~0.004
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] zM 4
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~0.002
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] zM 2
tp @e[name=pos_test] @e[name=pos_main]

tp @e[name=pos_main] ~ ~ ~0.001
execute @e[name=pos_test] ~ ~ ~ /scoreboard players add @e[name=pos_main,rm=0] zM 1
tp @e[name=pos_test] @e[name=pos_main]

# --- vision ---------------------------------------------------------------------------

scoreboard players set @e[name=pos_main] v_Tmp1 0

scoreboard players add @e[name=pos_main,rym=180,ry=359] v_Tmp1 180
tp @e[name=pos_main,rym=180,ry=359] ~ ~ ~ ~-180 ~

scoreboard players add @e[name=pos_main,rym=90,ry=359] v_Tmp1 90
tp @e[name=pos_main,rym=90,ry=359] ~ ~ ~ ~-90 ~

scoreboard players add @e[name=pos_main,rym=45,ry=359] v_Tmp1 45
tp @e[name=pos_main,rym=45,ry=359] ~ ~ ~ ~-45 ~

scoreboard players add @e[name=pos_main,rym=22,ry=359] v_Tmp1 23
tp @e[name=pos_main,rym=23,ry=359] ~ ~ ~ ~-23 ~

scoreboard players add @e[name=pos_main,rym=12,ry=359] v_Tmp1 12
tp @e[name=pos_main,rym=12,ry=359] ~ ~ ~ ~-12 ~

scoreboard players add @e[name=pos_main,rym=6,ry=359] v_Tmp1 6
tp @e[name=pos_main,rym=6,ry=359] ~ ~ ~ ~-6 ~

scoreboard players add @e[name=pos_main,rym=3,ry=359] v_Tmp1 3
tp @e[name=pos_main,rym=3,ry=359] ~ ~ ~ ~-3 ~

scoreboard players add @e[name=pos_main,rym=2,ry=359] v_Tmp1 2
tp @e[name=pos_main,rym=2,ry=359] ~ ~ ~ ~-2 ~

scoreboard players add @e[name=pos_main,rym=1,ry=359] v_Tmp1 1
tp @e[name=pos_main,rym=1,ry=359] ~ ~ ~ ~-1 ~

# --- FINITION ---------------------------------------------------------------------------

scoreboard players operation @e[name=pos_main] x /= -1 Constant
scoreboard players operation @e[name=pos_main] y /= -1 Constant
scoreboard players operation @e[name=pos_main] z /= -1 Constant
scoreboard players remove @e[name=pos_main,score_x_min=0] x 1
scoreboard players remove @e[name=pos_main] y 1
scoreboard players remove @e[name=pos_main,score_z_min=0] y 1

scoreboard players remove @e[name=pos_main,score_x_min=0] xM 1000
scoreboard players operation @e[name=pos_main,score_x_min=0] xM /= -1 Constant
scoreboard players set @e[name=pos_main,score_xM_min=1000,score_xM=1000] xM 0

scoreboard players remove @e[name=pos_main] yM 1000
scoreboard players operation @e[name=pos_main] yM /= -1 Constant
scoreboard players set @e[name=pos_main,score_yM_min=1000,score_yM=1000] yM 0
scoreboard players add @e[name=pos_main,score_yM_min=0,score_yM=0] y 1

scoreboard players remove @e[name=pos_main,score_z_min=0] zM 1000
scoreboard players operation @e[name=pos_main,score_z_min=0] zM /= -1 Constant

scoreboard players operation @s x = @e[name=pos_main] x
scoreboard players operation @s y = @e[name=pos_main] y
scoreboard players operation @s z = @e[name=pos_main] z

scoreboard players operation @s xM = @e[name=pos_main] xM
scoreboard players operation @s yM = @e[name=pos_main] yM
scoreboard players operation @s zM = @e[name=pos_main] zM

scoreboard players operation @s vision = @e[name=pos_main] v_tmp

kill @e[name=pos_main]
kill @e[name=pos_test]

# --- AFFICHAGE ---------------------------------------------------------------------------

title @s actionbar ["",{"text":"x: ","color":"dark_gray"},{"score":{"name":"@p","objective":"x"},"color":"gold","bold":true},{"text":".","color":"dark_red","bold":true},{"score":{"name":"@p","objective":"xM"},"color":"yellow","bold":true},{"text":" y: ","color":"dark_gray","bold":false},{"score":{"name":"@p","objective":"y"},"color":"gold","bold":true},{"text":".","color":"dark_red","bold":true},{"score":{"name":"@p","objective":"yM"},"color":"yellow","bold":true},{"text":" z: ","color":"dark_gray","bold":false},{"score":{"name":"@p","objective":"z"},"color":"gold","bold":true},{"text":".","color":"dark_red","bold":true},{"score":{"name":"@p","objective":"zM"},"color":"yellow","bold":true}]


