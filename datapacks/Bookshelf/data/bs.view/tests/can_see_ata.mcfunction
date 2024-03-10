# Check the whole distance between the executor and the position
# @batch bs.view
# @dummy

setblock ~ ~1 ~1 minecraft:bookshelf
execute at @s positioned ~ ~1 ~.5 if function #bs.view:can_see_ata run fail "Position must be obstructed when reaching a block"
execute at @s positioned ~ ~1 ~.49 unless function #bs.view:can_see_ata run fail "Position must be unobstructed before reaching a block"
