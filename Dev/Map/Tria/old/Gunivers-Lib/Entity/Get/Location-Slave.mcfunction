#Get Location-Slave
#@Author: LeiRoF

#Version: 1.0
#Minecraft Version: 1.12

#Import:
# - Location

#Input values:
# - None

#Output values:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

scoreboard players set @s LocX -4096
scoreboard players set @s LocY 0
scoreboard players set @s LocZ -4096


scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=4096,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 4096
tp @s[tag=!InRange] ~-4096 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=2048,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 2048
tp @s[tag=!InRange] ~-2048 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=1024,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 1024
tp @s[tag=!InRange] ~-1024 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=512,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 512
tp @s[tag=!InRange] ~-512 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=256,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 256
tp @s[tag=!InRange] ~-256 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=128,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 128
tp @s[tag=!InRange] ~-128 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=64,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 64
tp @s[tag=!InRange] ~-64 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=32,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 32
tp @s[tag=!InRange] ~-32 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=16,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 16
tp @s[tag=!InRange] ~-16 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=8,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 8
tp @s[tag=!InRange] ~-8 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=4,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 4
tp @s[tag=!InRange] ~-4 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=2,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 2
tp @s[tag=!InRange] ~-2 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dx=1,dy=512,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 1
tp @s[tag=!InRange] ~-1 ~ ~
scoreboard players add @s LocX 1
tp @s 0 ~ ~


scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=4096,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 4096
tp @s[tag=!InRange] ~ ~ ~-4096
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=2048,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 2048
tp @s[tag=!InRange] ~ ~ ~-2048
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=1024,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 1024
tp @s[tag=!InRange] ~ ~ ~-1024
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=512,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 512
tp @s[tag=!InRange] ~ ~ ~-512
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=256,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 256
tp @s[tag=!InRange] ~ ~ ~-256
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=128,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 128
tp @s[tag=!InRange] ~ ~ ~-128
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=64,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 64
tp @s[tag=!InRange] ~ ~ ~-64
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=32,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 32
tp @s[tag=!InRange] ~ ~ ~-32
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=16,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 16
tp @s[tag=!InRange] ~ ~ ~-16
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=8,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 8
tp @s[tag=!InRange] ~ ~ ~-8
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=4,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 4
tp @s[tag=!InRange] ~ ~ ~-4
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=2,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 2
tp @s[tag=!InRange] ~ ~ ~-2
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-4096,y=0,z=-4096,dz=1,dy=512,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 1
tp @s[tag=!InRange] ~ ~ ~-1
scoreboard players add @s LocZ 1
tp @s ~ ~ 0


scoreboard players tag @s remove InRange
scoreboard players tag @s[x=0,y=0,z=0,dx=1,dy=256,dz=1] add InRange
scoreboard players add @s[tag=!InRange] LocY 256
tp @s[tag=!InRange] ~ ~-256 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=0,y=0,z=0,dx=1,dy=128,dz=1] add InRange
scoreboard players add @s[tag=!InRange] LocY 128
tp @s[tag=!InRange] ~ ~-128 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=0,y=0,z=0,dx=1,dy=64,dz=1] add InRange
scoreboard players add @s[tag=!InRange] LocY 64
tp @s[tag=!InRange] ~ ~-64 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=0,y=0,z=0,dx=1,dy=32,dz=1] add InRange
scoreboard players add @s[tag=!InRange] LocY 32
tp @s[tag=!InRange] ~ ~-32 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=0,y=0,z=0,dx=1,dy=16,dz=1] add InRange
scoreboard players add @s[tag=!InRange] LocY 16
tp @s[tag=!InRange] ~ ~-16 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=0,y=0,z=0,dx=1,dy=8,dz=1] add InRange
scoreboard players add @s[tag=!InRange] LocY 8
tp @s[tag=!InRange] ~ ~-8 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=0,y=0,z=0,dx=1,dy=4,dz=1] add InRange
scoreboard players add @s[tag=!InRange] LocY 4
tp @s[tag=!InRange] ~ ~-4 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=0,y=0,z=0,dx=1,dy=2,dz=1] add InRange
scoreboard players add @s[tag=!InRange] LocY 2
tp @s[tag=!InRange] ~ ~-2 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=0,y=0,z=0,dx=1,dy=1,dz=1] add InRange
scoreboard players add @s[tag=!InRange] LocY 1
tp @s[tag=!InRange] ~ ~-1 ~
scoreboard players add @s LocY 0
tp @s 0 0 0
