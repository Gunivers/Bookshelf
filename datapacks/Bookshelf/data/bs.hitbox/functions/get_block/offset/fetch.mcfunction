$execute store success score #success bs.data run data modify storage bs:ctx _ set from storage bs:data hitbox.offsets[{k:$(_)}]
execute if score #success bs.data matches 0 run return fail
execute store result score #hitbox.get_block.offset_x bs.data run data get storage bs:ctx _.x
execute store result score #hitbox.get_block.offset_z bs.data run data get storage bs:ctx _.z
