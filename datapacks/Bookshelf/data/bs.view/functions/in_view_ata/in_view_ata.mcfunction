# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.1
# Created: ??/??/???? (1.13)
# Last modification: 01/12/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#in-view-as-to-at
# Dependencies:
# - bs.math
# Note:

# CODE ------------------------------------------------------------------------

execute store result entity B5-0-0-0-1 Rotation[0] float -0.001 run data get storage bs:in view.in_view_ata.angle 250
execute at B5-0-0-0-1 positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp B5-0-0-0-1 ^ ^ ^10.0
execute store result storage bs:ctx x double .0002 run data get entity B5-0-0-0-1 Pos[0] 10000
execute facing entity @s eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 run tp B5-0-0-0-1 ~ ~ ~
execute store result score #view.in_view_ata bs.data run function bs.view:in_view_ata/check with storage bs:ctx
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600
return run scoreboard players get #view.in_view_ata bs.data
