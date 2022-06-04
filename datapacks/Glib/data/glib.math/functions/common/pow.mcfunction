#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib.math:pow
# Documentation: https://glib-core.readthedocs.io//math
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT






#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.res0 = @s glib.var0
scoreboard players operation @s glib.var2 = @s glib.var1

execute if entity @s[scores={glib.var2=0}] run scoreboard players set @s glib.res0 1
execute if entity @s[scores={glib.var2=2..}] run function glib.math:common/pow/child/loop
