
# sincos(theta), sincos(phi)
execute store result score $math.sincos.angle bs.in run data get entity @s Rotation[0] 100
function #bs.math:sincos
scoreboard players operation #view.raycast.cos.h bs.data = $math.sincos.cos bs.out
scoreboard players operation #view.raycast.sin.h bs.data = $math.sincos.sin bs.out
execute store result score $math.sincos.angle bs.in run data get entity @s Rotation[1] 100
function #bs.math:sincos

# delta [x,y,z]
scoreboard players set #view.raycast.dz bs.data 1000000
execute store result score #view.raycast.dx bs.data run scoreboard players set #view.raycast.dy bs.data -1000000
scoreboard players operation #view.raycast.sin.h bs.data *= $math.sincos.cos bs.out
scoreboard players operation #view.raycast.cos.h bs.data *= $math.sincos.cos bs.out
scoreboard players operation #view.raycast.sin.h bs.data /= 1000 bs.const
scoreboard players operation #view.raycast.cos.h bs.data /= 1000 bs.const
scoreboard players operation #view.raycast.dx bs.data /= #view.raycast.sin.h bs.data
scoreboard players operation #view.raycast.dy bs.data /= $math.sincos.sin bs.out
scoreboard players operation #view.raycast.dz bs.data /= #view.raycast.cos.h bs.data

# length [x,y,z]
execute anchored eyes positioned ^ ^ ^ run function #bs.position:get_pos {scale:1000}
execute if score #view.raycast.dx bs.data matches 0.. store result score #view.raycast.lx bs.data run scoreboard players operation @s bs.pos.x %= -1000 bs.const
execute if score #view.raycast.dy bs.data matches 0.. store result score #view.raycast.ly bs.data run scoreboard players operation @s bs.pos.y %= -1000 bs.const
execute if score #view.raycast.dz bs.data matches 0.. store result score #view.raycast.lz bs.data run scoreboard players operation @s bs.pos.z %= -1000 bs.const
execute if score #view.raycast.dx bs.data matches ..-1 store result score #view.raycast.lx bs.data run scoreboard players operation @s bs.pos.x %= 1000 bs.const
execute if score #view.raycast.dy bs.data matches ..-1 store result score #view.raycast.ly bs.data run scoreboard players operation @s bs.pos.y %= 1000 bs.const
execute if score #view.raycast.dz bs.data matches ..-1 store result score #view.raycast.lz bs.data run scoreboard players operation @s bs.pos.z %= 1000 bs.const
scoreboard players operation #view.raycast.lx bs.data *= 1000 bs.const
scoreboard players operation #view.raycast.ly bs.data *= 1000 bs.const
scoreboard players operation #view.raycast.lz bs.data *= 1000 bs.const
scoreboard players operation #view.raycast.lx bs.data /= #view.raycast.sin.h bs.data
scoreboard players operation #view.raycast.ly bs.data /= $math.sincos.sin bs.out
scoreboard players operation #view.raycast.lz bs.data /= #view.raycast.cos.h bs.data

# step [x,y,z], fix starting length when 0, abs(length), abs(delta)
data modify storage bs:data view.raycast set value {step_x:{x:1,y:0,z:0},step_y:{x:0,y:1,z:0},step_z:{x:0,y:0,z:1},step:{x:0,y:0,z:0}}
execute if score #view.raycast.lx bs.data matches ..-1 run scoreboard players operation #view.raycast.lx bs.data *= -1 bs.const
execute if score #view.raycast.ly bs.data matches ..-1 run scoreboard players operation #view.raycast.ly bs.data *= -1 bs.const
execute if score #view.raycast.lz bs.data matches ..-1 run scoreboard players operation #view.raycast.lz bs.data *= -1 bs.const
execute if score #view.raycast.lx bs.data matches 0 if score #view.raycast.dx bs.data matches ..-1 run data modify storage bs:data view.raycast.step.x set value -1
execute if score #view.raycast.ly bs.data matches 0 if score #view.raycast.dy bs.data matches ..-1 run data modify storage bs:data view.raycast.step.y set value -1
execute if score #view.raycast.lz bs.data matches 0 if score #view.raycast.dz bs.data matches ..-1 run data modify storage bs:data view.raycast.step.z set value -1
execute if score #view.raycast.lx bs.data matches 0 run scoreboard players operation #view.raycast.lx bs.data = #view.raycast.dx bs.data
execute if score #view.raycast.ly bs.data matches 0 run scoreboard players operation #view.raycast.ly bs.data = #view.raycast.dy bs.data
execute if score #view.raycast.lz bs.data matches 0 run scoreboard players operation #view.raycast.lz bs.data = #view.raycast.dz bs.data
execute if score #view.raycast.dx bs.data matches ..-1 store success storage bs:data view.raycast.step_x.x int -1 run scoreboard players operation #view.raycast.dx bs.data *= -1 bs.const
execute if score #view.raycast.dy bs.data matches ..-1 store success storage bs:data view.raycast.step_y.y int -1 run scoreboard players operation #view.raycast.dy bs.data *= -1 bs.const
execute if score #view.raycast.dz bs.data matches ..-1 store success storage bs:data view.raycast.step_z.z int -1 run scoreboard players operation #view.raycast.dz bs.data *= -1 bs.const

execute anchored eyes positioned ^ ^ ^ align xyz run function bs.view:raycast/loop with storage bs:data view.raycast.step
