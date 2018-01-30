# Rotate Orientation Advanced

# Author: KubbyDev

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Tmp1 (score dummy)
# - Tmp2 (score dummy)
# - VectorPhi (score dummy)
# - VectorTheta (score dummy)

#Input values:
# - VectorPhi (score dummy)
# - VectorTheta (score dummy)

#Output values: None

# Note
# The VectorPhi value must be in range -511000 to 511000 and the VectorTheta must be in range -255000 to 255000

#Initialization

scoreboard players operation @s Tmp1 = @s VectorPhi
scoreboard players operation @s Tmp2 = @s VectorTheta

#Phi (horizontal) positive

tp @s[score_Tmp1_min=262144] ~ ~ ~ ~262.144 ~
scoreboard players remove @s[score_Tmp1_min=262144] Tmp1 262144
tp @s[score_Tmp1_min=131072] ~ ~ ~ ~131.072 ~
scoreboard players remove @s[score_Tmp1_min=131072] Tmp1 131072
tp @s[score_Tmp1_min=65536] ~ ~ ~ ~65.536 ~
scoreboard players remove @s[score_Tmp1_min=65536] Tmp1 65536
tp @s[score_Tmp1_min=32768] ~ ~ ~ ~32.768 ~
scoreboard players remove @s[score_Tmp1_min=32768] Tmp1 32768
tp @s[score_Tmp1_min=16384] ~ ~ ~ ~16.384 ~
scoreboard players remove @s[score_Tmp1_min=16384] Tmp1 16384
tp @s[score_Tmp1_min=8192] ~ ~ ~ ~8.192 ~
scoreboard players remove @s[score_Tmp1_min=8192] Tmp1 8192
tp @s[score_Tmp1_min=4096] ~ ~ ~ ~4.096 ~
scoreboard players remove @s[score_Tmp1_min=4096] Tmp1 4096
tp @s[score_Tmp1_min=2048] ~ ~ ~ ~2.048 ~
scoreboard players remove @s[score_Tmp1_min=2048] Tmp1 2048
tp @s[score_Tmp1_min=1024] ~ ~ ~ ~1.024 ~
scoreboard players remove @s[score_Tmp1_min=1024] Tmp1 1024
tp @s[score_Tmp1_min=512] ~ ~ ~ ~0.512 ~
scoreboard players remove @s[score_Tmp1_min=512] Tmp1 512
tp @s[score_Tmp1_min=256] ~ ~ ~ ~0.256 ~
scoreboard players remove @s[score_Tmp1_min=256] Tmp1 256
tp @s[score_Tmp1_min=128] ~ ~ ~ ~0.128 ~
scoreboard players remove @s[score_Tmp1_min=128] Tmp1 128
tp @s[score_Tmp1_min=64] ~ ~ ~ ~0.064 ~
scoreboard players remove @s[score_Tmp1_min=64] Tmp1 64
tp @s[score_Tmp1_min=32] ~ ~ ~ ~0.032 ~
scoreboard players remove @s[score_Tmp1_min=32] Tmp1 32
tp @s[score_Tmp1_min=16] ~ ~ ~ ~0.016 ~
scoreboard players remove @s[score_Tmp1_min=16] Tmp1 16
tp @s[score_Tmp1_min=8] ~ ~ ~ ~0.008 ~
scoreboard players remove @s[score_Tmp1_min=8] Tmp1 8
tp @s[score_Tmp1_min=4] ~ ~ ~ ~0.004 ~
scoreboard players remove @s[score_Tmp1_min=4] Tmp1 4
tp @s[score_Tmp1_min=2] ~ ~ ~ ~0.002 ~
scoreboard players remove @s[score_Tmp1_min=2] Tmp1 2
tp @s[score_Tmp1_min=1] ~ ~ ~ ~0.001 ~
scoreboard players remove @s[score_Tmp1_min=1] Tmp1 1

#Phi (horizontal) negative

tp @s[score_Tmp1=-262144] ~ ~ ~ ~-262.144 ~
scoreboard players add @s[score_Tmp1=-262144] Tmp1 262144
tp @s[score_Tmp1=-131072] ~ ~ ~ ~-131.072 ~
scoreboard players add @s[score_Tmp1=-131072] Tmp1 131072
tp @s[score_Tmp1=-65536] ~ ~ ~ ~-65.536 ~
scoreboard players add @s[score_Tmp1=-65536] Tmp1 65536
tp @s[score_Tmp1=-32768] ~ ~ ~ ~-32.768 ~
scoreboard players add @s[score_Tmp1=-32768] Tmp1 32768
tp @s[score_Tmp1=-16384] ~ ~ ~ ~-16.384 ~
scoreboard players add @s[score_Tmp1=-16384] Tmp1 16384
tp @s[score_Tmp1=-8192] ~ ~ ~ ~-8.192 ~
scoreboard players add @s[score_Tmp1=-8192] Tmp1 8192
tp @s[score_Tmp1=-4096] ~ ~ ~ ~-4.096 ~
scoreboard players add @s[score_Tmp1=-4096] Tmp1 4096
tp @s[score_Tmp1=-2048] ~ ~ ~ ~-2.048 ~
scoreboard players add @s[score_Tmp1=-2048] Tmp1 2048
tp @s[score_Tmp1=-1024] ~ ~ ~ ~-1.024 ~
scoreboard players add @s[score_Tmp1=-1024] Tmp1 1024
tp @s[score_Tmp1=-512] ~ ~ ~ ~-0.512 ~
scoreboard players add @s[score_Tmp1=-12] Tmp1 512
tp @s[score_Tmp1=-256] ~ ~ ~ ~-0.256 ~
scoreboard players add @s[score_Tmp1=-256] Tmp1 256
tp @s[score_Tmp1=-128] ~ ~ ~ ~-0.128 ~
scoreboard players add @s[score_Tmp1=-128] Tmp1 128
tp @s[score_Tmp1=-64] ~ ~ ~ ~-0.064 ~
scoreboard players add @s[score_Tmp1=-64] Tmp1 64
tp @s[score_Tmp1=-32] ~ ~ ~ ~-0.032 ~
scoreboard players add @s[score_Tmp1=-32] Tmp1 32
tp @s[score_Tmp1=-16] ~ ~ ~ ~-0.016 ~
scoreboard players add @s[score_Tmp1=-16] Tmp1 16
tp @s[score_Tmp1=-8] ~ ~ ~ ~-0.008 ~
scoreboard players add @s[score_Tmp1=-8] Tmp1 8
tp @s[score_Tmp1=-4] ~ ~ ~ ~-0.004 ~
scoreboard players add @s[score_Tmp1=-4] Tmp1 4
tp @s[score_Tmp1=-2] ~ ~ ~ ~-0.002 ~
scoreboard players add @s[score_Tmp1=-2] Tmp1 2
tp @s[score_Tmp1=-1] ~ ~ ~ ~-0.001 ~
scoreboard players add @s[score_Tmp1=-1] Tmp1 1

#Theta (vertical) positive

tp @s[score_Tmp2_min=131072] ~ ~ ~ ~ ~131.072
scoreboard players remove @s[score_Tmp2_min=131072] Tmp2 131072
tp @s[score_Tmp2_min=65536] ~ ~ ~ ~ ~65.536
scoreboard players remove @s[score_Tmp2_min=65536] Tmp2 65536
tp @s[score_Tmp2_min=32768] ~ ~ ~ ~ ~32.768
scoreboard players remove @s[score_Tmp2_min=32768] Tmp2 32768
tp @s[score_Tmp2_min=16384] ~ ~ ~ ~ ~16.384
scoreboard players remove @s[score_Tmp2_min=16384] Tmp2 16384
tp @s[score_Tmp2_min=8192] ~ ~ ~ ~ ~8.192
scoreboard players remove @s[score_Tmp2_min=8192] Tmp2 8192
tp @s[score_Tmp2_min=4096] ~ ~ ~ ~ ~4.096
scoreboard players remove @s[score_Tmp2_min=4096] Tmp2 4096
tp @s[score_Tmp2_min=2048] ~ ~ ~ ~ ~2.048
scoreboard players remove @s[score_Tmp2_min=2048] Tmp2 2048
tp @s[score_Tmp2_min=1024] ~ ~ ~ ~ ~1.024
scoreboard players remove @s[score_Tmp2_min=1024] Tmp2 1024
tp @s[score_Tmp2_min=512] ~ ~ ~ ~ ~0.512
scoreboard players remove @s[score_Tmp2_min=512] Tmp2 512
tp @s[score_Tmp2_min=256] ~ ~ ~ ~ ~0.256
scoreboard players remove @s[score_Tmp2_min=256] Tmp2 256
tp @s[score_Tmp2_min=128] ~ ~ ~ ~ ~0.128
scoreboard players remove @s[score_Tmp2_min=128] Tmp2 128
tp @s[score_Tmp2_min=64] ~ ~ ~ ~ ~0.064
scoreboard players remove @s[score_Tmp2_min=64] Tmp2 64
tp @s[score_Tmp2_min=32] ~ ~ ~ ~ ~0.032
scoreboard players remove @s[score_Tmp2_min=32] Tmp2 32
tp @s[score_Tmp2_min=16] ~ ~ ~ ~ ~0.016
scoreboard players remove @s[score_Tmp2_min=16] Tmp2 16
tp @s[score_Tmp2_min=8] ~ ~ ~ ~ ~0.008
scoreboard players remove @s[score_Tmp2_min=8] Tmp2 8
tp @s[score_Tmp2_min=4] ~ ~ ~ ~ ~0.004
scoreboard players remove @s[score_Tmp2_min=4] Tmp2 4
tp @s[score_Tmp2_min=2] ~ ~ ~ ~ ~0.002
scoreboard players remove @s[score_Tmp2_min=2] Tmp2 2
tp @s[score_Tmp2_min=1] ~ ~ ~ ~ ~0.001
scoreboard players remove @s[score_Tmp2_min=1] Tmp2 1

#Theta (vertical) negative

tp @s[score_Tmp2=-131072] ~ ~ ~ ~ ~-131.072
scoreboard players add @s[score_Tmp2=-131072] Tmp2 131072
tp @s[score_Tmp2=-65536] ~ ~ ~ ~ ~-65.536
scoreboard players add @s[score_Tmp2=-65536] Tmp2 65536
tp @s[score_Tmp2=-32768] ~ ~ ~ ~ ~-32.768
scoreboard players add @s[score_Tmp2=-32768] Tmp2 32768
tp @s[score_Tmp2=-16384] ~ ~ ~ ~ ~-16.384
scoreboard players add @s[score_Tmp2=-16384] Tmp2 16384
tp @s[score_Tmp2=-8192] ~ ~ ~ ~ ~-8.192
scoreboard players add @s[score_Tmp2=-8192] Tmp2 8192
tp @s[score_Tmp2=-4096] ~ ~ ~ ~ ~-4.096
scoreboard players add @s[score_Tmp2=-4096] Tmp2 4096
tp @s[score_Tmp2=-2048] ~ ~ ~ ~ ~-2.048
scoreboard players add @s[score_Tmp2=-2048] Tmp2 2048
tp @s[score_Tmp2=-1024] ~ ~ ~ ~ ~-1.024
scoreboard players add @s[score_Tmp2=-1024] Tmp2 1024
tp @s[score_Tmp2=-512] ~ ~ ~ ~ ~-0.512
scoreboard players add @s[score_Tmp2=-512] Tmp2 512
tp @s[score_Tmp2=-256] ~ ~ ~ ~ ~-0.256
scoreboard players add @s[score_Tmp2=-256] Tmp2 256
tp @s[score_Tmp2=-128] ~ ~ ~ ~ ~-0.128
scoreboard players add @s[score_Tmp2=-128] Tmp2 128
tp @s[score_Tmp2=-64] ~ ~ ~ ~ ~-0.064
scoreboard players add @s[score_Tmp2=-64] Tmp2 64
tp @s[score_Tmp2=-32] ~ ~ ~ ~ ~-0.032
scoreboard players add @s[score_Tmp2=-32] Tmp2 32
tp @s[score_Tmp2=-16] ~ ~ ~ ~ ~-0.016
scoreboard players add @s[score_Tmp2=-16] Tmp2 16
tp @s[score_Tmp2=-8] ~ ~ ~ ~ ~-0.008
scoreboard players add @s[score_Tmp2=-8] Tmp2 8
tp @s[score_Tmp2=-4] ~ ~ ~ ~ ~-0.004
scoreboard players add @s[score_Tmp2=-4] Tmp2 4
tp @s[score_Tmp2=-2] ~ ~ ~ ~ ~-0.002
scoreboard players add @s[score_Tmp2=-2] Tmp2 2
tp @s[score_Tmp2=-1] ~ ~ ~ ~ ~-0.001
scoreboard players add @s[score_Tmp2=-1] Tmp2 1
