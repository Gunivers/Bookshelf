# NAME: GCD
# PATH: gunivers-lib:math/gcd

# AUTHOR: LeiRoF

# VERSION: 1.1
# MINECRAFT: 1.13.X

# INPUT:
# - Var1 (score dummy)
# - Var2 (score dummy)

# OUTPUT:
# - Res (score dummy)

# Note:
# - Calculates the Greatest Common Divisor of 2 given numbers.

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var4 dummy
scoreboard objectives add Res dummy

# CODE:
scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 -= @s Var2

scoreboard players operation @s[scores={Var3=1..}] Res = @s Var2
scoreboard players operation @s[scores={Var3=1..}] Var3 = @s Var1

scoreboard players operation @s[scores={Var3=..-1}] Res = @s Var1
scoreboard players operation @s[scores={Var3=..-1}] Var3 = @s Var2

tag @s[scores={Var3=0}] add PGCDfound

execute at @s[tag=!PGCDfound] run function gunivers-lib:math/child/gcd-loop

tag @s remove PGCDfound
