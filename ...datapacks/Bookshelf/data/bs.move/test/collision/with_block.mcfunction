# Collision with a block is resolved as expected
# @batch bs.move
# @dummy

fill -1 -1 -1 1 1 1 air
setblock 0 0 0 minecraft:bookshelf
tp @s -.5 0.0 1.5 0.0 0.0

scoreboard players set @s bs.vel.x 1000
scoreboard players set @s bs.vel.y 0
scoreboard players set @s bs.vel.z -1000

function #bs.move:apply_vel {scale:0.001,with:{blocks:true,entities:false,on_collision:"#bs.move:on_collision/stick"}}

execute store result score #packtest.x bs.data run data get entity @s Pos[0] 1000
execute store result score #packtest.z bs.data run data get entity @s Pos[2] 1000

dummy @s leave

assert score #packtest.x bs.data matches -301..-299
assert score #packtest.z bs.data matches 1299..1301
