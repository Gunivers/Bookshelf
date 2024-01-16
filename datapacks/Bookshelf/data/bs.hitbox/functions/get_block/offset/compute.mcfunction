# compute the offset since we only care about bits 16 to 24, overflow of the scoreboard is not an issue
data modify storage bs:data hitbox.offsets append value {x:0,z:0,k:[0,0]}
execute store result storage bs:data hitbox.offsets[-1].k[0] int 1 run scoreboard players get $hitbox.offset.x bs.out
execute store result storage bs:data hitbox.offsets[-1].k[1] int 1 run scoreboard players get $hitbox.offset.z bs.out

# compute i = (x * 3129871) ^ (z * 116129781)
execute store result score #bitwise.and.a bs.data run scoreboard players operation $hitbox.offset.x bs.out *= 3129871 bs.const
execute store result score #hitbox.offset bs.data store result score #bitwise.and.b bs.data run scoreboard players operation $hitbox.offset.z bs.out *= 116129781 bs.const
scoreboard players operation #hitbox.offset bs.data += $hitbox.offset.x bs.out
function bs.bitwise:and/compute
scoreboard players operation #hitbox.offset bs.data -= #bitwise.and bs.data
execute store result score #hitbox.offset2 bs.data run scoreboard players operation #hitbox.offset bs.data -= #bitwise.and bs.data

# compute i = (i * i * 42317861) + (i * 11)
scoreboard players operation #hitbox.offset bs.data *= #hitbox.offset bs.data
scoreboard players operation #hitbox.offset bs.data *= 42317861 bs.const
scoreboard players operation #hitbox.offset2 bs.data *= 11 bs.const
execute store result score $hitbox.offset.x bs.out store result score $hitbox.offset.z bs.out run scoreboard players operation #hitbox.offset bs.data += #hitbox.offset2 bs.data

# compute offset x = (((i >> 16 & 15) / 15.0) - 0.5) * 0.5
scoreboard players operation $hitbox.offset.x bs.out /= 65536 bs.const
scoreboard players operation $hitbox.offset.x bs.out *= 268435456 bs.const
scoreboard players operation $hitbox.offset.x bs.out /= 268435456 bs.const
execute if score $hitbox.offset.x bs.out matches ..-1 run scoreboard players add $hitbox.offset.x bs.out 16
scoreboard players operation $hitbox.offset.x bs.out *= 1000 bs.const
scoreboard players operation $hitbox.offset.x bs.out /= 15 bs.const
scoreboard players remove $hitbox.offset.x bs.out 500
scoreboard players operation $hitbox.offset.x bs.out /= 2 bs.const

# compute offset z = (((i >> 24 & 15) / 15.0) - 0.5) * 0.5
scoreboard players operation $hitbox.offset.z bs.out /= 16777216 bs.const
scoreboard players operation $hitbox.offset.z bs.out *= 268435456 bs.const
scoreboard players operation $hitbox.offset.z bs.out /= 268435456 bs.const
execute if score $hitbox.offset.z bs.out matches ..-1 run scoreboard players add $hitbox.offset.z bs.out 16
scoreboard players operation $hitbox.offset.z bs.out *= 1000 bs.const
scoreboard players operation $hitbox.offset.z bs.out /= 15 bs.const
scoreboard players remove $hitbox.offset.z bs.out 500
scoreboard players operation $hitbox.offset.z bs.out /= 2 bs.const

# cache the result for better performance in future calls
execute store result storage bs:data hitbox.offsets[-1].x int 1 run scoreboard players get $hitbox.offset.x bs.out
execute store result storage bs:data hitbox.offsets[-1].z int 1 run scoreboard players get $hitbox.offset.z bs.out
