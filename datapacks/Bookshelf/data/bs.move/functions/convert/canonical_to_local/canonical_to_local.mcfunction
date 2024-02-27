# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 25/12/2023 (1.20.4)
# Last modification: 25/12/2023 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/move.html#canonical-to-local
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# sincos(h: Phi) & sincos(v: Theta)
execute as B5-0-0-0-1 run function bs.move:convert/canonical_to_local/sincos

# X' = Z * sin(h) + X * cos(h)
scoreboard players operation #move.canonical_to_local.x bs.data = @s bs.vel.z
scoreboard players operation #move.canonical_to_local.x bs.data *= #move.canonical_to_local.sin.h bs.data
scoreboard players operation #move.canonical_to_local bs.data = @s bs.vel.x
scoreboard players operation #move.canonical_to_local bs.data *= #move.canonical_to_local.cos.h bs.data
scoreboard players operation #move.canonical_to_local.x bs.data += #move.canonical_to_local bs.data
scoreboard players operation #move.canonical_to_local.x bs.data /= 1000 bs.const

# Y' = (z * cos(h) - x * sin(h)) * sin(v) + y * cos(v)
scoreboard players operation #move.canonical_to_local.y bs.data = @s bs.vel.z
scoreboard players operation #move.canonical_to_local.y bs.data *= #move.canonical_to_local.cos.h bs.data
scoreboard players operation #move.canonical_to_local bs.data = @s bs.vel.x
scoreboard players operation #move.canonical_to_local bs.data *= #move.canonical_to_local.sin.h bs.data
scoreboard players operation #move.canonical_to_local.y bs.data -= #move.canonical_to_local bs.data
execute store result score #move.canonical_to_local.z bs.data run scoreboard players operation #move.canonical_to_local.y bs.data /= 1000 bs.const
scoreboard players operation #move.canonical_to_local.y bs.data *= #move.canonical_to_local.sin.v bs.data
scoreboard players operation #move.canonical_to_local bs.data = @s bs.vel.y
scoreboard players operation #move.canonical_to_local bs.data *= #move.canonical_to_local.cos.v bs.data
scoreboard players operation #move.canonical_to_local.y bs.data += #move.canonical_to_local bs.data
scoreboard players operation #move.canonical_to_local.y bs.data /= 1000 bs.const

# Z' = (z * cos(h) - x * sin(h)) * cos(v) - y * sin(v)
scoreboard players operation #move.canonical_to_local.z bs.data *= #move.canonical_to_local.cos.v bs.data
scoreboard players operation #move.canonical_to_local bs.data = @s bs.vel.y
scoreboard players operation #move.canonical_to_local bs.data *= #move.canonical_to_local.sin.v bs.data
scoreboard players operation #move.canonical_to_local.z bs.data -= #move.canonical_to_local bs.data
scoreboard players operation #move.canonical_to_local.z bs.data /= 1000 bs.const

scoreboard players operation @s bs.vel.x = #move.canonical_to_local.x bs.data
scoreboard players operation @s bs.vel.y = #move.canonical_to_local.y bs.data
scoreboard players operation @s bs.vel.z = #move.canonical_to_local.z bs.data
