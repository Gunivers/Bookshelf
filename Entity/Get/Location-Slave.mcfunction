#ActiveSlot
#@Author: theogiraudet

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

scoreboard players set @s LocX -100000
scoreboard players set @s LocY 0
scoreboard players set @s LocZ -100000 

scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=65536,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 65536
tp @s[tag=!InRange] ~-65536 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 32768
tp @s[tag=!InRange] ~-32768 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 16384
tp @s[tag=!InRange] ~-16384 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 8192
tp @s[tag=!InRange] ~-8192 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 4096
tp @s[tag=!InRange] ~-4096 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 2048
tp @s[tag=!InRange] ~-2048 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 1024
tp @s[tag=!InRange] ~-1024 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 512
tp @s[tag=!InRange] ~-512 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 256
tp @s[tag=!InRange] ~-256 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 128
tp @s[tag=!InRange] ~-128 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 64
tp @s[tag=!InRange] ~-64 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 32
tp @s[tag=!InRange] ~-32 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 16
tp @s[tag=!InRange] ~-16 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 8
tp @s[tag=!InRange] ~-8 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 4
tp @s[tag=!InRange] ~-4 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 2
tp @s[tag=!InRange] ~-2 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange
scoreboard players add @s[tag=!InRange] LocX 1
tp @s[tag=!InRange] ~-1 ~ ~ 
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,y=0,z=0,dx=32768,dy=512,dz=200000] add InRange



scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=65536] LocZ 65536
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=65536] ~ ~ ~-65536 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=32768] LocZ 32768
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=32768] ~ ~ ~-32768 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=16384] LocZ 16384
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=16384] ~ ~ ~-16384 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=8192] LocZ 8192
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=8192] ~ ~ ~-8192 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=4096] LocZ 4096
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=4096] ~ ~ ~-4096 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=2048] LocZ 2048
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=2048] ~ ~ ~-2048 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=1024] LocZ 1024
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=1024] ~ ~ ~-1024 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=512] LocZ 512
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=512] ~ ~ ~-512 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=256] LocZ 256
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=256] ~ ~ ~-256 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=128] LocZ 128
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=128] ~ ~ ~-128 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=64] LocZ 64
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=64] ~ ~ ~-64 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=32] LocZ 32
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=32] ~ ~ ~-32 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=16] LocZ 16
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=16] ~ ~ ~-16 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=8] LocZ 8
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=8] ~ ~ ~-8 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=4] LocZ 4
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=4] ~ ~ ~-4 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=2] LocZ 2
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=2] ~ ~ ~-2 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=1] LocZ 1
tp @s[x=-100000,y=0,z=0,dx=1,dy=512,dz=1] ~ ~ ~-1 



scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=256,dz=1] LocY 256
tp @s[x=-100000,y=0,z=0,dx=1,dy=256,dz=1] ~ ~-256 ~
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=128,dz=1] LocY 128
tp @s[x=-100000,y=0,z=0,dx=1,dy=128,dz=1] ~ ~-128 ~ 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=64,dz=1] LocY 64
tp @s[x=-100000,y=0,z=0,dx=1,dy=64,dz=1] ~ ~-64 ~ 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=32,dz=1] LocY 32
tp @s[x=-100000,y=0,z=0,dx=1,dy=32,dz=1] ~ ~-32 ~ 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=16,dz=1] LocY 16
tp @s[x=-100000,y=0,z=0,dx=1,dy=16,dz=1] ~ ~-16 ~ 
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=8,dz=1] LocY 8
tp @s[x=-100000,y=0,z=0,dx=1,dy=8,dz=1] ~ ~-8 ~
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=4,dz=1] LocY 4
tp @s[x=-100000,y=0,z=0,dx=1,dy=4,dz=1] ~ ~-4 ~
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=2,dz=1] LocY 2
tp @s[x=-100000,y=0,z=0,dx=1,dy=2,dz=1] ~ ~-2 ~
scoreboard players add @s[x=-100000,y=0,z=0,dx=1,dy=1,dz=1] LocY 1
tp @s[x=-100000,y=0,z=0,dx=1,dy=1,dz=1] ~ ~-1 ~