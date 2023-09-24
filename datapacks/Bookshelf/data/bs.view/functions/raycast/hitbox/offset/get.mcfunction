tp B5-0-0-0-1 ~ ~ ~
data modify storage bs:data _ set from entity B5-0-0-0-1 Pos
data remove storage bs:data _[1]
function bs.view:raycast/hitbox/offset/cache with storage bs:data
execute unless data storage bs:data _.k run function bs.view:raycast/hitbox/offset/compute
