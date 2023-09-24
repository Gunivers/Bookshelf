$data modify storage bs:data _ set from storage bs:data view.raycast.offsets[{k:$(_)}]
execute store result score #view.raycast.hitbox.offset_x bs.data run data get storage bs:data _.x
execute store result score #view.raycast.hitbox.offset_z bs.data run data get storage bs:data _.z
