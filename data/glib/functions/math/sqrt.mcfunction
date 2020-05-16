#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/sqrt
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Res1 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s[scores={Var1=..1}] Var2 1
execute if entity @s[scores={Var1=2..}] run function glib:math/get_next_pow2
scoreboard players operation @s Var2 = @s Res1

scoreboard players set @s Res1 1
scoreboard players operation @s Var3 = @s Res1
scoreboard players operation @s Var3 *= @s Res1

execute if entity @s[scores={Var2=2..}] unless score @s Var3 = @s Var1 run function glib:math/child/sqrt_loop

scoreboard players operation @s Var3 = @s Res1
scoreboard players operation @s Var3 *= @s Res1

execute if score @s Var3 > @s Var1 run scoreboard players remove Res1 1
