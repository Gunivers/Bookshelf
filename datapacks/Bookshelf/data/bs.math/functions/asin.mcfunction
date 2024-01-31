# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, KubbyDev
# Contributors:

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 05/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#inverse-trigonometry
# Dependencies:
# Note: This algorithm is taken from the Handbook of Mathematical Functions (M. Abramowitz and I.A. Stegun, Ed.)

# CODE ------------------------------------------------------------------------

scoreboard players operation #math.asin.x bs.data = $math.asin.x bs.in
execute if score $math.asin.x bs.in matches ..-1 run scoreboard players operation #math.asin.x bs.data *= -1 bs.const

scoreboard players set $math.asin bs.out 107311
scoreboard players operation $math.asin bs.out *= #math.asin.x bs.data
scoreboard players operation $math.asin bs.out /= 1000 bs.const
scoreboard players remove $math.asin bs.out 425484
scoreboard players operation $math.asin bs.out *= #math.asin.x bs.data
scoreboard players operation $math.asin bs.out /= 1000 bs.const
scoreboard players add $math.asin bs.out 1215325
scoreboard players operation $math.asin bs.out *= #math.asin.x bs.data
scoreboard players operation $math.asin bs.out /= 1000 bs.const
scoreboard players remove $math.asin bs.out 9000000
scoreboard players operation $math.asin bs.out /= 100 bs.const

scoreboard players operation $math.isqrt.x bs.in >< #math.asin.x bs.data
scoreboard players operation $math.isqrt.x bs.in *= -100000 bs.const
scoreboard players add $math.isqrt.x bs.in 100000000
function #bs.math:isqrt
scoreboard players operation $math.isqrt.x bs.in >< #math.asin.x bs.data
scoreboard players operation $math.asin bs.out *= $math.isqrt bs.out
scoreboard players operation $math.asin bs.out /= 100000 bs.const

scoreboard players add $math.asin bs.out 9000
execute if score $math.asin.x bs.in matches ..-1 run scoreboard players operation $math.asin bs.out *= -1 bs.const

return run scoreboard players get $math.asin bs.out
