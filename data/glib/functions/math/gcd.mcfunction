#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/gcd
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note: Calculates the Greatest Common Divisor of 2 given numbers.

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var4 dummy
scoreboard objectives add Res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 -= @s Var2

scoreboard players operation @s[scores={Var3=1..}] Res = @s Var2
scoreboard players operation @s[scores={Var3=1..}] Var3 = @s Var1

scoreboard players operation @s[scores={Var3=..-1}] Res = @s Var1
scoreboard players operation @s[scores={Var3=..-1}] Var3 = @s Var2

tag @s[scores={Var3=0}] add PGCDfound

execute at @s[tag=!PGCDfound] run function glib:math/child/gcd-loop

tag @s remove PGCDfound
