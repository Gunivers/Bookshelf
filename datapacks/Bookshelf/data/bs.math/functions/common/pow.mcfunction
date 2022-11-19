#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:pow
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

scoreboard players operation @s bs.res0 = @s bs.var0
scoreboard players operation @s bs.var2 = @s bs.var1

execute if entity @s[scores={bs.var2=0}] run scoreboard players set @s bs.res0 1
execute if entity @s[scores={bs.var2=2..}] run function bs.math:common/pow/child/loop
