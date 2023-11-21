# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 3.0
# Created: ??/??/???? (1.13)
# Last modification: 31/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#get-distance
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

tp B5-0-0-0-1 ~ ~ ~
$execute store result score #position.get_distance_ata.x1 bs.data run data get entity B5-0-0-0-1 Pos[0] $(scale)
$execute store result score #position.get_distance_ata.y1 bs.data run data get entity B5-0-0-0-1 Pos[1] $(scale)
$execute store result score #position.get_distance_ata.z1 bs.data run data get entity B5-0-0-0-1 Pos[2] $(scale)
tp B5-0-0-0-1 0 0 0 0 0

$execute store result score #position.get_distance_ata.x2 bs.data run data get entity @s Pos[0] $(scale)
$execute store result score #position.get_distance_ata.y2 bs.data run data get entity @s Pos[1] $(scale)
$execute store result score #position.get_distance_ata.z2 bs.data run data get entity @s Pos[2] $(scale)

scoreboard players operation #position.get_distance_ata.x1 bs.data -= #position.get_distance_ata.x2 bs.data
scoreboard players operation #position.get_distance_ata.y1 bs.data -= #position.get_distance_ata.y2 bs.data
scoreboard players operation #position.get_distance_ata.z1 bs.data -= #position.get_distance_ata.z2 bs.data
scoreboard players operation #position.get_distance_ata.x1 bs.data *= #position.get_distance_ata.x1 bs.data
scoreboard players operation #position.get_distance_ata.y1 bs.data *= #position.get_distance_ata.y1 bs.data
scoreboard players operation #position.get_distance_ata.z1 bs.data *= #position.get_distance_ata.z1 bs.data

scoreboard players operation #position.get_distance_ata.x1 bs.data += #position.get_distance_ata.y1 bs.data
execute store result score $position.get_distance_squared_ata bs.out run return run scoreboard players operation #position.get_distance_ata.x1 bs.data += #position.get_distance_ata.z1 bs.data
