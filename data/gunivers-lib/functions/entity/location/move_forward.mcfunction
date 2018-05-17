# NAME: Move Forward
# PATH: gunivers-lib:entity/location/moveforward

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Var1 (score dummy)

# INPUT:
# - Var1 (score dummy)

# NOTE:
# The source entity will be teleported forward (following its orientation) by Var1 milliblocks.
# The input value must be less than 1 048 576 (less than 1000 blocks)
# This function must be executed at the source's location (execute as Source at @s run function)

# CODE:

tp @s[scores={Var1=524288..}] ^ ^ ^524.288
scoreboard players remove @s[scores={Var1=524288..}] Var1 524288

tp @s[scores={Var1=262144..}] ^ ^ ^262.144
scoreboard players remove @s[scores={Var1=262144..}] Var1 262144

tp @s[scores={Var1=131072..}] ^ ^ ^131.072
scoreboard players remove @s[scores={Var1=131072..}] Var1 131072

tp @s[scores={Var1=65536..}] ^ ^ ^65.536
scoreboard players remove @s[scores={Var1=65536..}] Var1 65536

tp @s[scores={Var1=32768..}] ^ ^ ^32.768
scoreboard players remove @s[scores={Var1=32768..}] Var1 32768

tp @s[scores={Var1=16384..}] ^ ^ ^16.384
scoreboard players remove @s[scores={Var1=16384..}] Var1 16384

tp @s[scores={Var1=8192..}] ^ ^ ^8.192
scoreboard players remove @s[scores={Var1=8192..}] Var1 8192

tp @s[scores={Var1=4096..}] ^ ^ ^4.096
scoreboard players remove @s[scores={Var1=4096..}] Var1 4096

tp @s[scores={Var1=2048..}] ^ ^ ^2.048
scoreboard players remove @s[scores={Var1=2048..}] Var1 2048

tp @s[scores={Var1=1024..}] ^ ^ ^1.024
scoreboard players remove @s[scores={Var1=1024..}] Var1 1024

tp @s[scores={Var1=512..}] ^ ^ ^0.512
scoreboard players remove @s[scores={Var1=512..}] Var1 512

tp @s[scores={Var1=256..}] ^ ^ ^0.256
scoreboard players remove @s[scores={Var1=256..}] Var1 256

tp @s[scores={Var1=128..}] ^ ^ ^0.128
scoreboard players remove @s[scores={Var1=128..}] Var1 128

tp @s[scores={Var1=64..}] ^ ^ ^0.064
scoreboard players remove @s[scores={Var1=64..}] Var1 64

tp @s[scores={Var1=32..}] ^ ^ ^0.032
scoreboard players remove @s[scores={Var1=32..}] Var1 32

tp @s[scores={Var1=16..}] ^ ^ ^0.016
scoreboard players remove @s[scores={Var1=16..}] Var1 16

tp @s[scores={Var1=8..}] ^ ^ ^0.008
scoreboard players remove @s[scores={Var1=8..}] Var1 8

tp @s[scores={Var1=4..}] ^ ^ ^0.004
scoreboard players remove @s[scores={Var1=4..}] Var1 4

tp @s[scores={Var1=2..}] ^ ^ ^0.002
scoreboard players remove @s[scores={Var1=2..}] Var1 2

tp @s[scores={Var1=1..}] ^ ^ ^0.001
scoreboard players remove @s[scores={Var1=1..}] Var1 1


