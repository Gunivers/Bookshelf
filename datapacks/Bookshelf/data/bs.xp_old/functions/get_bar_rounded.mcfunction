# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/???? (1.18.2)
# Last verification: 19/03/2023 (1.19.4)
# Last modification: 19/03/2023 (1.19.4)

# Original path : bs.xp:get_bar_rounded
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#get
# Note          :

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

scoreboard players operation #xp.backup.in.0 bs.data = @s bs.in.0
scoreboard players operation #xp.backup.in.1 bs.data = @s bs.in.1

execute store result score #xp.points bs.data run xp query @s points
execute store result score @s bs.in.0 run xp query @s levels

function bs.xp:get_level_points
scoreboard players operation @s bs.in.1 = @s bs.out.0

scoreboard players operation @s bs.in.0 = #xp.points bs.data
scoreboard players operation @s bs.in.0 *= 100 bs.const

function bs.math:divide

scoreboard players operation @s bs.in.0 = #xp.backup.in.0 bs.data


execute store result score #xp.levels bs.data run xp query @s levels
xp set @s 130 levels
execute store result score #xp.points bs.data run xp query @s points

scoreboard players operation @s bs.in.0 = #xp.points bs.data
scoreboard players operation @s bs.in.0 *= 100 bs.const

scoreboard players set @s bs.in.1 1012

function bs.math:divide

scoreboard players operation @s bs.in.0 = #xp.levels bs.data
function bs.xp:set_levels

scoreboard players operation @s bs.in.0 = #xp.backup.in.0 bs.data
scoreboard players operation @s bs.in.1 = #xp.backup.in.1 bs.data