# stop the recursion then compute the travelled distance
scoreboard players set #raycast.limit bs.data -2147483648
scoreboard players operation #raycast.lx bs.data -= #raycast.dx bs.data
scoreboard players operation #raycast.ly bs.data -= #raycast.dy bs.data
execute store result score #raycast.distance bs.data run scoreboard players operation #raycast.lz bs.data -= #raycast.dz bs.data
scoreboard players operation #raycast.distance bs.data > #raycast.lx bs.data
scoreboard players operation #raycast.distance bs.data > #raycast.ly bs.data

# get the normal of the surface that was hit
execute if score #raycast.distance bs.data = #raycast.lx bs.data if score #raycast.ux bs.data matches 0.. run data modify storage bs:out raycast.hit_normal set value [-1,0,0]
execute if score #raycast.distance bs.data = #raycast.ly bs.data if score #raycast.uy bs.data matches 0.. run data modify storage bs:out raycast.hit_normal set value [0,-1,0]
execute if score #raycast.distance bs.data = #raycast.lz bs.data if score #raycast.uz bs.data matches 0.. run data modify storage bs:out raycast.hit_normal set value [0,0,-1]
execute if score #raycast.distance bs.data = #raycast.lx bs.data if score #raycast.ux bs.data matches ..-1 run data modify storage bs:out raycast.hit_normal set value [1,0,0]
execute if score #raycast.distance bs.data = #raycast.ly bs.data if score #raycast.uy bs.data matches ..-1 run data modify storage bs:out raycast.hit_normal set value [0,1,0]
execute if score #raycast.distance bs.data = #raycast.lz bs.data if score #raycast.uz bs.data matches ..-1 run data modify storage bs:out raycast.hit_normal set value [0,0,1]

# store the targeted block position
tp @s ~ ~ ~
data modify storage bs:out raycast.targeted_block set from entity @s Pos
