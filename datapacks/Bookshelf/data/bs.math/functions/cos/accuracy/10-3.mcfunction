#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: bs.math:cos/accuracy/10-3
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

# Retranscription of bs.in.2 on interval [0;9000[

scoreboard players operation @s bs.in.2 = @s bs.in.0
scoreboard players operation @s bs.in.2 /= 10 bs.const
scoreboard players operation @s[scores={bs.in.0=90000..179999}] bs.in.2 *= Neg bs.const
scoreboard players operation @s[scores={bs.in.0=90000..179999}] bs.in.2 += 18000 bs.const
scoreboard players operation @s[scores={bs.in.0=180000..269999}] bs.in.2 -= 18000 bs.const
scoreboard players operation @s[scores={bs.in.0=270000..}] bs.in.2 *= Neg bs.const
scoreboard players operation @s[scores={bs.in.0=270000..}] bs.in.2 += 36000 bs.const

# Calcul Cos

scoreboard players operation @s bs.out.0 = @s bs.in.2
scoreboard players operation @s bs.out.0 *= @s bs.out.0
scoreboard players operation @s bs.out.0 *= 4 bs.const
scoreboard players operation @s bs.out.0 *= Neg bs.const
scoreboard players operation @s bs.out.0 += 324000000 bs.const
scoreboard players operation @s bs.in.1 = @s bs.in.2
scoreboard players operation @s bs.in.1 *= @s bs.in.1
scoreboard players operation @s bs.in.1 += 324000000 bs.const
scoreboard players operation @s bs.in.1 /= 1000 bs.const
scoreboard players operation @s bs.out.0 /= @s bs.in.1

scoreboard players operation @s[scores={bs.in.0=90000..269999}] bs.out.0 *= Neg bs.const
