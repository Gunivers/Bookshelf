# NAME: Get Location Slave
# PATH: Gunivers-Lib:Entity/Location/Child/Get-Slave

#CHILD OF: Entity/Location/Get

scoreboard players set @s LocX -100000
scoreboard players set @s LocY 0
scoreboard players set @s LocZ -100000


scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=131072] add InRange
scoreboard players add @s[tag=!InRange] LocX 131072
tp @s[tag=!InRange] ~-131072 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=65536] add InRange
scoreboard players add @s[tag=!InRange] LocX 65536
tp @s[tag=!InRange] ~-65536 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=32768] add InRange
scoreboard players add @s[tag=!InRange] LocX 32768
tp @s[tag=!InRange] ~-32768 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=16384] add InRange
scoreboard players add @s[tag=!InRange] LocX 16384
tp @s[tag=!InRange] ~-16384 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=8192] add InRange
scoreboard players add @s[tag=!InRange] LocX 8192
tp @s[tag=!InRange] ~-8192 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=4096] add InRange
scoreboard players add @s[tag=!InRange] LocX 4096
tp @s[tag=!InRange] ~-4096 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=2048] add InRange
scoreboard players add @s[tag=!InRange] LocX 2048
tp @s[tag=!InRange] ~-2048 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=1024] add InRange
scoreboard players add @s[tag=!InRange] LocX 1024
tp @s[tag=!InRange] ~-1024 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=512] add InRange
scoreboard players add @s[tag=!InRange] LocX 512
tp @s[tag=!InRange] ~-512 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=256] add InRange
scoreboard players add @s[tag=!InRange] LocX 256
tp @s[tag=!InRange] ~-256 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=128] add InRange
scoreboard players add @s[tag=!InRange] LocX 128
tp @s[tag=!InRange] ~-128 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=64] add InRange
scoreboard players add @s[tag=!InRange] LocX 64
tp @s[tag=!InRange] ~-64 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=32] add InRange
scoreboard players add @s[tag=!InRange] LocX 32
tp @s[tag=!InRange] ~-32 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=16] add InRange
scoreboard players add @s[tag=!InRange] LocX 16
tp @s[tag=!InRange] ~-16 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=8] add InRange
scoreboard players add @s[tag=!InRange] LocX 8
tp @s[tag=!InRange] ~-8 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=4] add InRange
scoreboard players add @s[tag=!InRange] LocX 4
tp @s[tag=!InRange] ~-4 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=2] add InRange
scoreboard players add @s[tag=!InRange] LocX 2
tp @s[tag=!InRange] ~-2 ~ ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[x=-100000,dx=1] add InRange
scoreboard players add @s[tag=!InRange] LocX 1
tp @s[tag=!InRange] ~-1 ~ ~
scoreboard players add @s LocX 1


scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=131072] add InRange
scoreboard players add @s[tag=!InRange] LocZ 131072
tp @s[tag=!InRange] ~ ~ ~-131072
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=65536] add InRange
scoreboard players add @s[tag=!InRange] LocZ 65536
tp @s[tag=!InRange] ~ ~ ~-65536
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=32768] add InRange
scoreboard players add @s[tag=!InRange] LocZ 32768
tp @s[tag=!InRange] ~ ~ ~-32768
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=16384] add InRange
scoreboard players add @s[tag=!InRange] LocZ 16384
tp @s[tag=!InRange] ~ ~ ~-16384
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=8192] add InRange
scoreboard players add @s[tag=!InRange] LocZ 8192
tp @s[tag=!InRange] ~ ~ ~-8192
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=4096] add InRange
scoreboard players add @s[tag=!InRange] LocZ 4096
tp @s[tag=!InRange] ~ ~ ~-4096
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=2048] add InRange
scoreboard players add @s[tag=!InRange] LocZ 2048
tp @s[tag=!InRange] ~ ~ ~-2048
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=1024] add InRange
scoreboard players add @s[tag=!InRange] LocZ 1024
tp @s[tag=!InRange] ~ ~ ~-1024
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=512] add InRange
scoreboard players add @s[tag=!InRange] LocZ 512
tp @s[tag=!InRange] ~ ~ ~-512
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=256] add InRange
scoreboard players add @s[tag=!InRange] LocZ 256
tp @s[tag=!InRange] ~ ~ ~-256
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=128] add InRange
scoreboard players add @s[tag=!InRange] LocZ 128
tp @s[tag=!InRange] ~ ~ ~-128
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=64] add InRange
scoreboard players add @s[tag=!InRange] LocZ 64
tp @s[tag=!InRange] ~ ~ ~-64
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=32] add InRange
scoreboard players add @s[tag=!InRange] LocZ 32
tp @s[tag=!InRange] ~ ~ ~-32
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=16] add InRange
scoreboard players add @s[tag=!InRange] LocZ 16
tp @s[tag=!InRange] ~ ~ ~-16
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=8] add InRange
scoreboard players add @s[tag=!InRange] LocZ 8
tp @s[tag=!InRange] ~ ~ ~-8
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=4] add InRange
scoreboard players add @s[tag=!InRange] LocZ 4
tp @s[tag=!InRange] ~ ~ ~-4
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=2] add InRange
scoreboard players add @s[tag=!InRange] LocZ 2
tp @s[tag=!InRange] ~ ~ ~-2
scoreboard players tag @s remove InRange
scoreboard players tag @s[z=-100000,dz=1] add InRange
scoreboard players add @s[tag=!InRange] LocZ 1
tp @s[tag=!InRange] ~ ~ ~-1
scoreboard players add @s LocZ 1


scoreboard players tag @s remove InRange
scoreboard players tag @s[y=0,dy=256] add InRange
scoreboard players add @s[tag=!InRange] LocY 256
tp @s[tag=!InRange] ~ ~-256 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[y=0,dy=128] add InRange
scoreboard players add @s[tag=!InRange] LocY 128
tp @s[tag=!InRange] ~ ~-128 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[y=0,dy=64] add InRange
scoreboard players add @s[tag=!InRange] LocY 64
tp @s[tag=!InRange] ~ ~-64 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[y=0,dy=32] add InRange
scoreboard players add @s[tag=!InRange] LocY 32
tp @s[tag=!InRange] ~ ~-32 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[y=0,dy=16] add InRange
scoreboard players add @s[tag=!InRange] LocY 16
tp @s[tag=!InRange] ~ ~-16 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[y=0,dy=8] add InRange
scoreboard players add @s[tag=!InRange] LocY 8
tp @s[tag=!InRange] ~ ~-8 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[y=0,dy=4] add InRange
scoreboard players add @s[tag=!InRange] LocY 4
tp @s[tag=!InRange] ~ ~-4 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[y=0,dy=2] add InRange
scoreboard players add @s[tag=!InRange] LocY 2
tp @s[tag=!InRange] ~ ~-2 ~
scoreboard players tag @s remove InRange
scoreboard players tag @s[y=0,dy=1] add InRange
scoreboard players add @s[tag=!InRange] LocY 1
tp @s[tag=!InRange] ~ ~-1 ~
scoreboard players add @s LocY 1
