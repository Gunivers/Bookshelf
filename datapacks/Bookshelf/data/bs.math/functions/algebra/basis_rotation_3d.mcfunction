# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers.

# Authors: Leirof
# Contributors:

# Created: ??/??/2018 (1.13)
# Last verification: 23/01/2023 (1.19.2)
# Last modification: 23/01/2023 (1.19.2)

# Original path: bs.math:basis_rotatation_3d
# Documentation: docs/math.md#basis-rotation-3d
# Note:

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

scoreboard players operation BASIS_ROT.X bs = @s bs.var0
scoreboard players operation BASIS_ROT.Y bs = @s bs.var1
scoreboard players operation BASIS_ROT.Z bs = @s bs.var2

scoreboard players operation BASIS_ROT.H bs = @s bs.var3
scoreboard players operation BASIS_ROT.V bs = @s bs.var4

# Debug
# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"------------------------------","color":"dark_gray"}]
# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"VectorX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.var0"},"color":"gold"},{"text":" VectorY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.var1"},"color":"gold"},{"text":" VectorZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.var2"},"color":"gold"}]
# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Angle H: ","color":"dark_gray"},{"score":{"name":"BASIS_ROT.H","objective":"bs"},"color":"gold"},{"text":" Angle V: ","color":"dark_gray"},{"score":{"name":"BASIS_ROT.V","objective":"bs"},"color":"gold"}]

# Cos(Theta)
scoreboard players operation @s bs.var0 = BASIS_ROT.H bs
function bs.math:trig/cos
scoreboard players operation COS.H bs = @s bs.res0

# Sin(Theta)
scoreboard players operation @s bs.var0 = BASIS_ROT.H bs
function bs.math:trig/sin
scoreboard players operation SIN.H bs = @s bs.res0

# Cos(Phi)
scoreboard players operation @s bs.var0 = BASIS_ROT.V bs
function bs.math:trig/cos
scoreboard players operation COS.V bs = @s bs.res0

# Sin(Phi)
scoreboard players operation @s bs.var0 = BASIS_ROT.V bs
function bs.math:trig/sin
scoreboard players operation SIN.V bs = @s bs.res0

# Vector Left
scoreboard players operation BASIS_ROT bs = BASIS_ROT.Z bs
scoreboard players operation BASIS_ROT bs *= SIN.H bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation @s bs.res0 = BASIS_ROT bs

scoreboard players operation BASIS_ROT bs = BASIS_ROT.X bs
scoreboard players operation BASIS_ROT bs *= COS.H bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation BASIS_ROT bs *= Neg bs.const
scoreboard players operation @s bs.res0 -= BASIS_ROT bs

# Vector Up
scoreboard players operation BASIS_ROT bs = BASIS_ROT.Y bs
scoreboard players operation BASIS_ROT bs *= COS.V bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation @s bs.res1 = BASIS_ROT bs

scoreboard players operation BASIS_ROT bs = BASIS_ROT.Z bs
scoreboard players operation BASIS_ROT bs *= SIN.V bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation BASIS_ROT bs *= COS.H bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation @s bs.res1 += BASIS_ROT bs

scoreboard players operation BASIS_ROT bs = BASIS_ROT.X bs
scoreboard players operation BASIS_ROT bs *= SIN.V bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation BASIS_ROT bs *= SIN.H bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation @s bs.res1 -= BASIS_ROT bs

# Vector Front
scoreboard players operation BASIS_ROT bs = BASIS_ROT.Z bs
scoreboard players operation BASIS_ROT bs *= COS.V bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation BASIS_ROT bs *= COS.H bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation @s bs.res2 = BASIS_ROT bs

scoreboard players operation BASIS_ROT bs = BASIS_ROT.X bs
scoreboard players operation BASIS_ROT bs *= COS.V bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation BASIS_ROT bs *= SIN.H bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation @s bs.res2 -= BASIS_ROT bs

scoreboard players operation BASIS_ROT bs = BASIS_ROT.Y bs
scoreboard players operation BASIS_ROT bs *= SIN.V bs
scoreboard players operation BASIS_ROT bs /= 1000 bs.const
scoreboard players operation @s bs.res2 -= BASIS_ROT bs

# Debug
# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"bs.vectorLeft: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"},{"text":" bs.vectorUp: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res1"},"color":"gold"},{"text":" bs.vectorFront: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res2"},"color":"gold"}]