tp B5-0-0-0-1 ~ ~ ~
data modify storage bs:data view.raycast.offset set from entity B5-0-0-0-1 Pos
data remove storage bs:data view.raycast.offset[1]
function bs.view:raycast/hitbox/offset/cache with storage bs:data view.raycast
execute unless data storage bs:data view.raycast.offset.k run function bs.view:raycast/hitbox/offset/compute
