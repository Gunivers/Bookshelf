# bamboo_sapling group
execute as B5-0-0-0-1 run function bs.hitbox:get_block/offset/get
data modify storage bs:out hitbox.shape set value [[4, 0, 4, 12, 12, 12]]
