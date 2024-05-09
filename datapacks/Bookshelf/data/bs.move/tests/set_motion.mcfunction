# Set motion using NBTs
# @batch bs.move

summon minecraft:pig ~ ~ ~ {Tags:["packtest"]}
scoreboard players set @e[type=minecraft:pig,tag=packtest] bs.vel.x 250
scoreboard players set @e[type=minecraft:pig,tag=packtest] bs.vel.y 50
scoreboard players set @e[type=minecraft:pig,tag=packtest] bs.vel.z 0
execute as @e[type=minecraft:pig,tag=packtest] run function #bs.move:set_motion {scale:0.001}
assert data entity @e[type=minecraft:pig,tag=packtest,sort=nearest,limit=1] {Motion:[0.25d,0.05d,0.0d]}
