# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Leirof, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.18.2)
# Last modification: 28/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#remove
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score #xp.remove_levels.levels bs.data run xp query @s levels
execute store success score #xp.storage_changed bs.data run data modify storage bs:data xp.remove_levels.check set from storage bs:in xp.remove_levels.levels
execute if score #xp.storage_changed bs.data matches 1 store result score $xp.remove_levels.levels bs.in run data get storage bs:in xp.remove_levels.levels
execute store result storage bs:data xp.remove_levels.levels int 1 run scoreboard players operation #xp.remove_levels.levels bs.data -= $xp.remove_levels.levels bs.in
function bs.xp:set/levels/macro with storage bs:data xp.remove_levels
scoreboard players reset #xp.use_macro bs.data
