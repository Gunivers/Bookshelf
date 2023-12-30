$execute store success score #success bs.data run data modify storage bs:ctx _ set from storage bs:data hitbox.offsets[{k:[$(x),$(z)]}]
execute if score #success bs.data matches 0 run return fail
execute store result score $hitbox.offset.x bs.out run data get storage bs:ctx _.x
execute store result score $hitbox.offset.z bs.out run data get storage bs:ctx _.z
