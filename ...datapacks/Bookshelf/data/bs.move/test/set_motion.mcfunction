# Set motion using NBTs
# @batch bs.move

summon minecraft:pig ~ ~ ~ {Tags:["bs.packtest"]}
scoreboard players set @e[type=minecraft:pig,tag=bs.packtest] bs.vel.x 250
scoreboard players set @e[type=minecraft:pig,tag=bs.packtest] bs.vel.y 50
scoreboard players set @e[type=minecraft:pig,tag=bs.packtest] bs.vel.z 0
execute as @e[type=minecraft:pig,tag=bs.packtest] run function #bs.move:set_motion {scale:0.001}
assert data entity @n[type=minecraft:pig,tag=bs.packtest] {Motion:[0.25d,0.05d,0.0d]}
