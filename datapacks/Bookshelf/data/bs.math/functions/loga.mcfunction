#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:loga
# Documentation: https://bs-core.readthedocs.io//math
# Parallelizable: <true/false/global>
# Note:
# - This function takes inputs in [1; 1 000 000 000] (corresponds to [0.001; 1 000 000]).
# - The output values are scaled by 10 000. The accuracy depends on the base. If the base is close to 1
# - If you input var1 = 0 the function returns log_a(0.001), if you input a negative value it returns log_a(-x)
# - If you input var2 = 0 the function returns log_0.001(x), if you input a negative value it returns log_(-a)(x)
# - The base a must be in interval [1; 1 000 000 000] (corresponds to [0.001; 1 000 000]). If you want log_8(0.5), input var1 = 500, var2 = 8000
# - if you input var2 = 1000 (corresponds to 1), the function will return non sense values because log_1(x) is not definied

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# We save the x to calculate log x later, and calculate log a
scoreboard players operation @s bs.in.8 = @s bs.in.0
scoreboard players operation @s bs.in.0 = @s bs.in.1
scoreboard players operation @s bs.in.0 *= 1000 bs.const
# tellraw @a ["",{"text":"   b  = "},{"score":{"name":"@s","objective":"bs.in.0"}}]
function bs.math:log
# tellraw @a ["",{"text":"ln(b) = "},{"score":{"name":"@s","objective":"bs.out.0"}}]

# We save log a on bs.in.8
scoreboard players operation @s bs.in.0 = @s bs.in.8
scoreboard players operation @s bs.in.8 = @s bs.out.0
# tellraw @a ["",{"text":"   a  = "},{"score":{"name":"@s","objective":"bs.in.0"}}]

# Then we calculate log x
function bs.math:log

# tellraw @a ["",{"text":"ln(a) = "},{"score":{"name":"@s","objective":"bs.out.0"}}]
scoreboard players operation @s bs.out.0 *= 1000 bs.const

# And divide by log a
scoreboard players operation @s bs.out.0 /= @s bs.in.8
# tellraw @a ["",{"text":"  res = "},{"score":{"name":"@s","objective":"bs.out.0"}}]