#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:gcd
# Documentation: https://bs-core.readthedocs.io//math
# Parallelizable: <true/false/global>
# Note: Calculates the Greatest Common Divisor of 2 given numbers.

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT







#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.in.2 = @s bs.in.0
scoreboard players operation @s bs.in.2 -= @s bs.in.1

scoreboard players operation @s[scores={bs.in.2=1..}] bs.out.0 = @s bs.in.1
scoreboard players operation @s[scores={bs.in.2=1..}] bs.in.2 = @s bs.in.0

scoreboard players operation @s[scores={bs.in.2=..-1}] bs.out.0 = @s bs.in.0
scoreboard players operation @s[scores={bs.in.2=..-1}] bs.in.2 = @s bs.in.1

tag @s[scores={bs.in.2=0}] add PGCDfound

execute at @s[tag=!PGCDfound] run function bs.math:gcd/child/loop

tag @s remove PGCDfound
