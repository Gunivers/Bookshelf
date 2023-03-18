#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:pow
# Documentation: https://bs-core.readthedocs.io//math
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

scoreboard players operation @s bs.out.0 = @s bs.in.0
scoreboard players operation @s bs.in.2 = @s bs.in.1

execute if entity @s[scores={bs.in.2=0}] run scoreboard players set @s bs.out.0 1
execute if entity @s[scores={bs.in.2=2..}] run function bs.math:pow/child/loop
