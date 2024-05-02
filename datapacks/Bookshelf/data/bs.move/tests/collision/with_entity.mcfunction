# Collision with an entity is resolved as expected
# @batch bs.move
# @dummy

summon minecraft:armor_stand .5 0 .5 {Tags:["packtest"]}
tp @s -.5 0.0 1.5 0.0 0.0

scoreboard players set @s bs.vel.x 1000
scoreboard players set @s bs.vel.y 0
scoreboard players set @s bs.vel.z -1000

function #bs.move:tp_by_vel {scale:0.001,with:{blocks:false,entities:true,on_collision:"#bs.move:on_collision/stick"}}

execute store result score #packtest.x bs.data run data get entity @s Pos[0] 1000
execute store result score #packtest.z bs.data run data get entity @s Pos[2] 1000

dummy @s leave
kill @e[type=minecraft:armor_stand,tag=packtest]

assert score #packtest.x bs.data matches -51..-49
assert score #packtest.z bs.data matches 1049..1051
