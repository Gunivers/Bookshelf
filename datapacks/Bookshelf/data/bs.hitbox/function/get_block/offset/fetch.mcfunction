$execute store success score #success bs.data run data modify storage bs:out hitbox.offset set from storage bs:data hitbox.offsets[{k:[$(x),$(z)]}]
execute if score #success bs.data matches 0 run return fail
data remove storage bs:out hitbox.offset.k
