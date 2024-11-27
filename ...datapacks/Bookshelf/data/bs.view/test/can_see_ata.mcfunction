# Check the whole distance between the executor and the position
# @batch bs.view
# @dummy

fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air
setblock ~ ~1 ~1 minecraft:bookshelf

execute at @s positioned ~ ~1 ~.5 store result score #success bs.data run function #bs.view:can_see_ata {with:{}}
execute if score #success bs.data matches 1 run fail "Position must be obstructed when reaching a block"

execute at @s positioned ~ ~1 ~.49 store result score #success bs.data run function #bs.view:can_see_ata {with:{}}
execute if score #success bs.data matches 0 run fail "Position must be unobstructed before reaching a block"
