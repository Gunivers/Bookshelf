# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, theogiraudet
# Contributors:

# Version: 1.0
# Created: 15/01/2024 (1.20.4)
# Last modification: 15/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#get
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players set #block.id bs.data 0
execute if block ~ ~ ~ #bs.block:type/group_1 run scoreboard players add #block.id bs.data 1
execute if block ~ ~ ~ #bs.block:type/group_2 run scoreboard players add #block.id bs.data 2
execute if block ~ ~ ~ #bs.block:type/group_4 run scoreboard players add #block.id bs.data 4
execute if block ~ ~ ~ #bs.block:type/group_8 run scoreboard players add #block.id bs.data 8
execute if block ~ ~ ~ #bs.block:type/group_16 run scoreboard players add #block.id bs.data 16
execute if block ~ ~ ~ #bs.block:type/group_32 run scoreboard players add #block.id bs.data 32
execute if block ~ ~ ~ #bs.block:type/group_64 run scoreboard players add #block.id bs.data 64
execute if block ~ ~ ~ #bs.block:type/group_128 run scoreboard players add #block.id bs.data 128
execute if block ~ ~ ~ #bs.block:type/group_256 run scoreboard players add #block.id bs.data 256
execute if block ~ ~ ~ #bs.block:type/group_512 run scoreboard players add #block.id bs.data 512
execute if block ~ ~ ~ #bs.block:type/group_1024 run scoreboard players add #block.id bs.data 1024

execute store result storage bs:ctx y short 1 run scoreboard players remove #block.id bs.data 1
execute unless score #block.id bs.data matches -1 run function bs.block:get/lookup with storage bs:ctx
execute store result storage bs:ctx y int 1 run data get storage bs:out block.group
execute unless data storage bs:ctx {y:0} run function bs.block:get/dispatch with storage bs:ctx
data modify storage bs:out block.nbt set from block ~ ~ ~ {}
