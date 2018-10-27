# NAME: Move Entity By Local Vector
# PATH: gunivers-lib:entity/move/child/by_local_vector/apply

# CHILD OF: gunivers-lib:entity/move/by_local_vector

# CODE:

# Front positive

execute at @s run tp @s[scores={Var3=512..}] ^ ^ ^0.512
scoreboard players remove @s[scores={Var3=512..}] Var3 512
execute at @s run tp @s[scores={Var3=256..}] ^ ^ ^0.256
scoreboard players remove @s[scores={Var3=256..}] Var3 256
execute at @s run tp @s[scores={Var3=128..}] ^ ^ ^0.128
scoreboard players remove @s[scores={Var3=128..}] Var3 128
execute at @s run tp @s[scores={Var3=64..}] ^ ^ ^0.064
scoreboard players remove @s[scores={Var3=64..}] Var3 64
execute at @s run tp @s[scores={Var3=32..}] ^ ^ ^0.032
scoreboard players remove @s[scores={Var3=32..}] Var3 32
execute at @s run tp @s[scores={Var3=16..}] ^ ^ ^0.016
scoreboard players remove @s[scores={Var3=16..}] Var3 16
execute at @s run tp @s[scores={Var3=8..}] ^ ^ ^0.008
scoreboard players remove @s[scores={Var3=8..}] Var3 8
execute at @s run tp @s[scores={Var3=4..}] ^ ^ ^0.004
scoreboard players remove @s[scores={Var3=4..}] Var3 4
execute at @s run tp @s[scores={Var3=2..}] ^ ^ ^0.002
scoreboard players remove @s[scores={Var3=2..}] Var3 2
execute at @s run tp @s[scores={Var3=1..}] ^ ^ ^0.001
