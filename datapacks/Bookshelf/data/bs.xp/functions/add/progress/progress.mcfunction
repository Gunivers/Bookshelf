# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Leirof, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.18.2)
# Last modification: 28/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#add
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute unless score #xp.use_macro bs.data matches 1 store success score #xp.storage_changed bs.data run data modify storage bs:data xp.add_progress.check set from storage bs:in xp.add_progress.points
execute unless score #xp.use_macro bs.data matches 1 unless score #xp.storage_changed bs.data matches 1 store result storage bs:in xp.add_progress.points int 1 run scoreboard players get $xp.add_progress.points bs.in
execute unless score #xp.use_macro bs.data matches 1 run function bs.xp:add/progress/macro with storage bs:in xp.add_progress
scoreboard players reset #xp.use_macro bs.data
