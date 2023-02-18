#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: bs.math:trig/cos/accuracy/10-3
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

# Retranscription of bs.var2 on interval [0;9000[

scoreboard players operation @s bs.var2 = @s bs.var0
scoreboard players operation @s bs.var2 /= 10 bs.const
scoreboard players operation @s[scores={bs.var0=90000..179999}] bs.var2 *= Neg bs.const
scoreboard players operation @s[scores={bs.var0=90000..179999}] bs.var2 += 18000 bs.const
scoreboard players operation @s[scores={bs.var0=180000..269999}] bs.var2 -= 18000 bs.const
scoreboard players operation @s[scores={bs.var0=270000..}] bs.var2 *= Neg bs.const
scoreboard players operation @s[scores={bs.var0=270000..}] bs.var2 += 36000 bs.const

# Calcul Cos

scoreboard players operation @s bs.res0 = @s bs.var2
scoreboard players operation @s bs.res0 *= @s bs.res0
scoreboard players operation @s bs.res0 *= 4 bs.const
scoreboard players operation @s bs.res0 *= Neg bs.const
scoreboard players operation @s bs.res0 += 324000000 bs.const
scoreboard players operation @s bs.var1 = @s bs.var2
scoreboard players operation @s bs.var1 *= @s bs.var1
scoreboard players operation @s bs.var1 += 324000000 bs.const
scoreboard players operation @s bs.var1 /= 1000 bs.const
scoreboard players operation @s bs.res0 /= @s bs.var1

scoreboard players operation @s[scores={bs.var0=90000..269999}] bs.res0 *= Neg bs.const
