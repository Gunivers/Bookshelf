# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:entity/location/child/move_by_vector/apply_pos_y

# CHILD OF: gunivers-lib:entity/location/move_by_vector

# CODE:

# Y positive

execute at @s run tp @s[scores={Var2=512..}] ~ ~0.512 ~
scoreboard players remove @s[scores={Var2=512..}] Var2 512
execute at @s run tp @s[scores={Var2=256..}] ~ ~0.256 ~
scoreboard players remove @s[scores={Var2=256..}] Var2 256
execute at @s run tp @s[scores={Var2=128..}] ~ ~0.128 ~
scoreboard players remove @s[scores={Var2=128..}] Var2 128
execute at @s run tp @s[scores={Var2=64..}] ~ ~0.064 ~
scoreboard players remove @s[scores={Var2=64..}] Var2 64
execute at @s run tp @s[scores={Var2=32..}] ~ ~0.032 ~
scoreboard players remove @s[scores={Var2=32..}] Var2 32
execute at @s run tp @s[scores={Var2=16..}] ~ ~0.016 ~
scoreboard players remove @s[scores={Var2=16..}] Var2 16
execute at @s run tp @s[scores={Var2=8..}] ~ ~0.008 ~
scoreboard players remove @s[scores={Var2=8..}] Var2 8
execute at @s run tp @s[scores={Var2=4..}] ~ ~0.004 ~
scoreboard players remove @s[scores={Var2=4..}] Var2 4
execute at @s run tp @s[scores={Var2=2..}] ~ ~0.002 ~
scoreboard players remove @s[scores={Var2=2..}] Var2 2
execute at @s run tp @s[scores={Var2=1..}] ~ ~0.001 ~
