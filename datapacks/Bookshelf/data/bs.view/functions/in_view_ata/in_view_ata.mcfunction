# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 09/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#in-view-as-to-at
# Dependencies:
# - bs.math
# Note:

# CODE ------------------------------------------------------------------------

execute store result score $math.sin.angle bs.in run data get storage bs:in view.in_view_ata.angle 25
function #bs.math:sin
execute store result storage bs:data _ double 0.002 run scoreboard players get $math.sin bs.out
execute facing entity @s eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 run tp B5-0-0-0-1 ~ ~ ~
execute store result score #view.in_view_ata bs.data run function bs.view:in_view_ata/in_range with storage bs:data
execute if score #view.in_view_ata bs.data matches 1 run function bs.view:in_view_ata/run with storage bs:in view.in_view_ata
tp B5-0-0-0-1 0 0 0
