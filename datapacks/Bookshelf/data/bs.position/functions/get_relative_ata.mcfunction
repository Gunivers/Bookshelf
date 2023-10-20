# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 3.0
# Created: ??/??/???? (1.13)
# Last modification: 20/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#get-relative
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

tp B5-0-0-0-1 ~ ~ ~
$execute store result score #position.get_relative_ata.x bs.data run data get entity B5-0-0-0-1 Pos[0] $(scale)
$execute store result score #position.get_relative_ata.y bs.data run data get entity B5-0-0-0-1 Pos[1] $(scale)
$execute store result score #position.get_relative_ata.z bs.data run data get entity B5-0-0-0-1 Pos[2] $(scale)
tp B5-0-0-0-1 0 0 0 0 0

$execute store result score @s bs.pos.x run data get entity @s Pos[0] $(scale)
$execute store result score @s bs.pos.y run data get entity @s Pos[1] $(scale)
$execute store result score @s bs.pos.z run data get entity @s Pos[2] $(scale)

scoreboard players operation @s bs.pos.x -= #position.get_relative_ata.x bs.data
scoreboard players operation @s bs.pos.y -= #position.get_relative_ata.y bs.data
scoreboard players operation @s bs.pos.z -= #position.get_relative_ata.z bs.data
