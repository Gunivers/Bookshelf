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

scoreboard players operation #math.basis_rot.X bs = @s bs.in.0
scoreboard players operation #math.basis_rot.Y bs = @s bs.in.1
scoreboard players operation #math.basis_rot.Z bs = @s bs.in.2

scoreboard players operation #math.basis_rot.H bs = @s bs.in.3
scoreboard players operation #math.basis_rot.V bs = @s bs.in.4

# Debug
# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"------------------------------","color":"dark_gray"}]
# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"VectorX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.in.0"},"color":"gold"},{"text":" VectorY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.in.1"},"color":"gold"},{"text":" VectorZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.in.2"},"color":"gold"}]
# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Angle H: ","color":"dark_gray"},{"score":{"name":"#math.basis_rot.H","objective":"bs"},"color":"gold"},{"text":" Angle V: ","color":"dark_gray"},{"score":{"name":"#math.basis_rot.V","objective":"bs"},"color":"gold"}]

# Cos(Theta)
scoreboard players operation @s bs.in.0 = #math.basis_rot.H bs
function bs.math:trig/cos
scoreboard players operation #math.basis_rot.cos.H bs = @s bs.out.0

# Sin(Theta)
scoreboard players operation @s bs.in.0 = #math.basis_rot.H bs
function bs.math:trig/sin
scoreboard players operation #math.basis_rot.sin.H bs = @s bs.out.0

# Cos(Phi)
scoreboard players operation @s bs.in.0 = #math.basis_rot.V bs
function bs.math:trig/cos
scoreboard players operation #math.basis_rot.cos.V bs = @s bs.out.0

# Sin(Phi)
scoreboard players operation @s bs.in.0 = #math.basis_rot.V bs
function bs.math:trig/sin
scoreboard players operation #math.basis_rot.sin.V bs = @s bs.out.0


# tellraw @a [{"text":"X="},{"score":{"name":"#math.basis_rot.X","objective":"bs"}}]
# tellraw @a [{"text":"Y="},{"score":{"name":"#math.basis_rot.Y","objective":"bs"}}]
# tellraw @a [{"text":"Z="},{"score":{"name":"#math.basis_rot.Z","objective":"bs"}}]
# tellraw @a [{"text":"H="},{"score":{"name":"#math.basis_rot.H","objective":"bs"}}]
# tellraw @a [{"text":"V="},{"score":{"name":"#math.basis_rot.V","objective":"bs"}}]
# tellraw @a [{"text":" "}]
# tellraw @a [{"text":"sin(H)="},{"score":{"name":"#math.basis_rot.sin.H","objective":"bs"}}]
# tellraw @a [{"text":"cos(H)="},{"score":{"name":"#math.basis_rot.cos.H","objective":"bs"}}]
# tellraw @a [{"text":"sin(V)="},{"score":{"name":"#math.basis_rot.sin.V","objective":"bs"}}]
# tellraw @a [{"text":"cos(V)="},{"score":{"name":"#math.basis_rot.cos.V","objective":"bs"}}]
# tellraw @a [{"text":" "}]

# X' = Z*sin(phi) + X*cos(phi)
scoreboard players operation #math.basis_rot bs = #math.basis_rot.Z bs
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.sin.H bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
# tellraw @a [{"text":"Z*sin(H)="},{"score":{"name":"#math.basis_rot","objective":"bs"}}]
scoreboard players operation @s bs.out.0 = #math.basis_rot bs

scoreboard players operation #math.basis_rot bs = #math.basis_rot.X bs
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.cos.H bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
# tellraw @a [{"text":"X*cos(H)="},{"score":{"name":"#math.basis_rot","objective":"bs"}}]
scoreboard players operation @s bs.out.0 += #math.basis_rot bs


# tellraw @a [{"text":"X'="},{"score":{"name":"@s","objective":"bs.out.0"}}]
# tellraw @a [{"text":" "}]

# Y' = -X*sin(phi)*sin(theta) + Y*cos(theta) + Z*cos(phi)*sin(theta) 
scoreboard players operation #math.basis_rot bs = #math.basis_rot.Y bs
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.cos.V bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
# tellraw @a [{"text":"Y*cos(V)="},{"score":{"name":"#math.basis_rot","objective":"bs"}}]
scoreboard players operation @s bs.out.1 = #math.basis_rot bs

scoreboard players operation #math.basis_rot bs = #math.basis_rot.Z bs
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.sin.V bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.cos.H bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
# tellraw @a [{"text":"Z*sin(V)*cos(H)="},{"score":{"name":"#math.basis_rot","objective":"bs"}}]
scoreboard players operation @s bs.out.1 += #math.basis_rot bs

scoreboard players operation #math.basis_rot bs = #math.basis_rot.X bs
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.sin.V bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.sin.H bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
# tellraw @a [{"text":"X*sin(V)*sin(H)="},{"score":{"name":"#math.basis_rot","objective":"bs"}}]
scoreboard players operation @s bs.out.1 -= #math.basis_rot bs

# tellraw @a [{"text":"Y'="},{"score":{"name":"@s","objective":"bs.out.1"}}]
# tellraw @a [{"text":" "}]

# Z' = - X*sin(phi)*cos(theta) - Y*sin(theta) + Z*cos(phi)*cos(theta)
scoreboard players operation #math.basis_rot bs = #math.basis_rot.Z bs
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.cos.V bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.cos.H bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
# tellraw @a [{"text":"Z*cos(V)*cos(H)="},{"score":{"name":"#math.basis_rot","objective":"bs"}}]
scoreboard players operation @s bs.out.2 = #math.basis_rot bs

scoreboard players operation #math.basis_rot bs = #math.basis_rot.X bs
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.cos.V bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.sin.H bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
# tellraw @a [{"text":"X*cos(V)*sin(H)="},{"score":{"name":"#math.basis_rot","objective":"bs"}}]
scoreboard players operation @s bs.out.2 -= #math.basis_rot bs

scoreboard players operation #math.basis_rot bs = #math.basis_rot.Y bs
scoreboard players operation #math.basis_rot bs *= #math.basis_rot.sin.V bs
scoreboard players operation #math.basis_rot bs /= 1000 bs.const
# tellraw @a [{"text":"Y*sin(V)="},{"score":{"name":"#math.basis_rot","objective":"bs"}}]
scoreboard players operation @s bs.out.2 -= #math.basis_rot bs

# tellraw @a [{"text":"Z'="},{"score":{"name":"@s","objective":"bs.out.2"}}]
