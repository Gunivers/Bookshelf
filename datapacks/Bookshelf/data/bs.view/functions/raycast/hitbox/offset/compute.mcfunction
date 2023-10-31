# compute the offset since we only care about bits 16 to 24, overflow of the scoreboard is not an issue
execute store result score #view.raycast.hitbox.offset_kx bs.data run data get storage bs:data view.raycast.offset[0]
execute store result score #view.raycast.hitbox.offset_kz bs.data run data get storage bs:data view.raycast.offset[1]
execute store result score $bitwise.xor.a bs.in run scoreboard players operation #view.raycast.hitbox.offset_kx bs.data *= 3129871 bs.const
execute store result score $bitwise.xor.b bs.in run scoreboard players operation #view.raycast.hitbox.offset_kz bs.data *= 116129781 bs.const
function #bs.bitwise:xor
scoreboard players operation #view.raycast.hitbox.offset bs.data = $bitwise.xor bs.out
scoreboard players operation #view.raycast.hitbox.offset bs.data *= #view.raycast.hitbox.offset bs.data
scoreboard players operation #view.raycast.hitbox.offset bs.data *= 42317861 bs.const
scoreboard players operation $bitwise.xor bs.out *= 11 bs.const
execute store result score #view.raycast.hitbox.offset_x bs.data store result score #view.raycast.hitbox.offset_z bs.data run scoreboard players operation #view.raycast.hitbox.offset bs.data += $bitwise.xor bs.out
scoreboard players operation #view.raycast.hitbox.offset_x bs.data /= 65536 bs.const
scoreboard players operation #view.raycast.hitbox.offset_z bs.data /= 16777216 bs.const
scoreboard players operation #view.raycast.hitbox.offset_x bs.data *= 268435456 bs.const
scoreboard players operation #view.raycast.hitbox.offset_z bs.data *= 268435456 bs.const
scoreboard players operation #view.raycast.hitbox.offset_x bs.data /= 268435456 bs.const
scoreboard players operation #view.raycast.hitbox.offset_z bs.data /= 268435456 bs.const
execute if score #view.raycast.hitbox.offset_x bs.data matches ..-1 run scoreboard players add #view.raycast.hitbox.offset_x bs.data 16
execute if score #view.raycast.hitbox.offset_z bs.data matches ..-1 run scoreboard players add #view.raycast.hitbox.offset_z bs.data 16
scoreboard players operation #view.raycast.hitbox.offset_x bs.data *= 1000 bs.const
scoreboard players operation #view.raycast.hitbox.offset_z bs.data *= 1000 bs.const
scoreboard players operation #view.raycast.hitbox.offset_x bs.data /= 15 bs.const
scoreboard players operation #view.raycast.hitbox.offset_z bs.data /= 15 bs.const
scoreboard players remove #view.raycast.hitbox.offset_x bs.data 500
scoreboard players remove #view.raycast.hitbox.offset_z bs.data 500
scoreboard players operation #view.raycast.hitbox.offset_x bs.data *= 500 bs.const
scoreboard players operation #view.raycast.hitbox.offset_z bs.data *= 500 bs.const

# cache the result for better performance in future calls
data modify storage bs:data view.raycast.offsets[].k set from storage bs:data view.raycast.offset
execute store result storage bs:data view.raycast.offsets[-1].x int 1 run scoreboard players get #view.raycast.hitbox.offset_x bs.data
execute store result storage bs:data view.raycast.offsets[-1].z int 1 run scoreboard players get #view.raycast.hitbox.offset_z bs.data
