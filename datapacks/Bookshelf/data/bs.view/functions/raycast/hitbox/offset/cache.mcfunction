$data modify storage bs:data view.raycast.offset set from storage bs:data view.raycast.offsets[{k:$(offset)}]
execute store result score #view.raycast.hitbox.offset_x bs.data run data get storage bs:data view.raycast.offset.x
execute store result score #view.raycast.hitbox.offset_z bs.data run data get storage bs:data view.raycast.offset.z
