#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/pow
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

scoreboard players operation @s Res1 = @s Var1
scoreboard players operation @s Var3 = @s Var2

execute if entity @s[scores={Var3=0}] run scoreboard players set @s Res1 1
execute if entity @s[scores={Var3=2..}] run function glib:math/child/pow-loop
