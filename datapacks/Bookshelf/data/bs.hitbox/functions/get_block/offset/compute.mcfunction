# compute the offset since we only care about bits 16 to 24, overflow of the scoreboard is not an issue
execute store result score #hitbox.get_block.offset_x bs.data run data get storage bs:ctx x
execute store result score #hitbox.get_block.offset_z bs.data run data get storage bs:ctx z

# compute i = (x * 3129871) ^ (z * 116129781)
execute store result score #bitwise.and.a bs.data run scoreboard players operation #hitbox.get_block.offset_x bs.data *= 3129871 bs.const
execute store result score #hitbox.get_block.offset bs.data store result score #bitwise.and.b bs.data run scoreboard players operation #hitbox.get_block.offset_z bs.data *= 116129781 bs.const
scoreboard players operation #hitbox.get_block.offset bs.data += #hitbox.get_block.offset_x bs.data
function bs.bitwise:and/compute
scoreboard players operation #hitbox.get_block.offset bs.data -= #bitwise.and bs.data
execute store result score #hitbox.get_block.offset2 bs.data run scoreboard players operation #hitbox.get_block.offset bs.data -= #bitwise.and bs.data

# compute i = (i * i * 42317861) + (i * 11)
scoreboard players operation #hitbox.get_block.offset bs.data *= #hitbox.get_block.offset bs.data
scoreboard players operation #hitbox.get_block.offset bs.data *= 42317861 bs.const
scoreboard players operation #hitbox.get_block.offset2 bs.data *= 11 bs.const
execute store result score #hitbox.get_block.offset_x bs.data store result score #hitbox.get_block.offset_z bs.data run scoreboard players operation #hitbox.get_block.offset bs.data += #hitbox.get_block.offset2 bs.data

# compute offset x = (((i >> 16 & 15) / 15.0) - 0.5) * 0.5
scoreboard players operation #hitbox.get_block.offset_x bs.data /= 65536 bs.const
scoreboard players operation #hitbox.get_block.offset_x bs.data *= 268435456 bs.const
scoreboard players operation #hitbox.get_block.offset_x bs.data /= 268435456 bs.const
execute if score #hitbox.get_block.offset_x bs.data matches ..-1 run scoreboard players add #hitbox.get_block.offset_x bs.data 16
scoreboard players operation #hitbox.get_block.offset_x bs.data *= 1000 bs.const
scoreboard players operation #hitbox.get_block.offset_x bs.data /= 15 bs.const
scoreboard players remove #hitbox.get_block.offset_x bs.data 500
scoreboard players operation #hitbox.get_block.offset_x bs.data *= 500 bs.const

# compute offset z = (((i >> 24 & 15) / 15.0) - 0.5) * 0.5
scoreboard players operation #hitbox.get_block.offset_z bs.data /= 16777216 bs.const
scoreboard players operation #hitbox.get_block.offset_z bs.data *= 268435456 bs.const
scoreboard players operation #hitbox.get_block.offset_z bs.data /= 268435456 bs.const
execute if score #hitbox.get_block.offset_z bs.data matches ..-1 run scoreboard players add #hitbox.get_block.offset_z bs.data 16
scoreboard players operation #hitbox.get_block.offset_z bs.data *= 1000 bs.const
scoreboard players operation #hitbox.get_block.offset_z bs.data /= 15 bs.const
scoreboard players remove #hitbox.get_block.offset_z bs.data 500
scoreboard players operation #hitbox.get_block.offset_z bs.data *= 500 bs.const

# cache the result for better performance in future calls
data modify storage bs:data hitbox.offsets[].k set from storage bs:ctx _
execute store result storage bs:data hitbox.offsets[-1].x int 1 run scoreboard players get #hitbox.get_block.offset_x bs.data
execute store result storage bs:data hitbox.offsets[-1].z int 1 run scoreboard players get #hitbox.get_block.offset_z bs.data
