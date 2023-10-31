# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 09/10/2023 (1.20.2)
# Last modification: 09/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#looking-as-to-at
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players set #view.looking_at.min bs.data 1
scoreboard players set #view.looking_at.max bs.data 0

execute as @e[tag=bs.view.looking_at.candidate] store result score @s bs.data run scoreboard players add #view.looking_at.max bs.data 1
execute if predicate bs.view:looking_at/any run function bs.view:looking_at/loop
execute as @e[predicate=bs.view:looking_at/slice] run function bs.view:looking_at/run with storage bs:in view.looking_at

scoreboard players reset @e[tag=bs.view.looking_at.candidate] bs.data
tag @e[tag=bs.view.looking_at.candidate] remove bs.view.looking_at.candidate
