# stop the recursion then get the travelled distance
scoreboard players set #raycast.max_distance bs.data -2147483648
scoreboard players operation #raycast.distance bs.data = #raycast.tmin bs.data

# get the normal of the surface that was hit
execute if score #raycast.distance bs.data = #raycast.min_x bs.data if score #raycast.ux bs.data matches 0.. run data modify storage bs:out raycast.hit_normal set value [-1,0,0]
execute if score #raycast.distance bs.data = #raycast.min_y bs.data if score #raycast.uy bs.data matches 0.. run data modify storage bs:out raycast.hit_normal set value [0,-1,0]
execute if score #raycast.distance bs.data = #raycast.min_z bs.data if score #raycast.uz bs.data matches 0.. run data modify storage bs:out raycast.hit_normal set value [0,0,-1]
execute if score #raycast.distance bs.data = #raycast.min_x bs.data if score #raycast.ux bs.data matches ..-1 run data modify storage bs:out raycast.hit_normal set value [1,0,0]
execute if score #raycast.distance bs.data = #raycast.min_y bs.data if score #raycast.uy bs.data matches ..-1 run data modify storage bs:out raycast.hit_normal set value [0,1,0]
execute if score #raycast.distance bs.data = #raycast.min_z bs.data if score #raycast.uz bs.data matches ..-1 run data modify storage bs:out raycast.hit_normal set value [0,0,1]

# if the ray hit an entity store its UUID, if not store the targeted block position
execute if entity @s[tag=!bs.raycast.omit] run return run data modify storage bs:out raycast.targeted_entity set from entity @s UUID
tp B5-0-0-0-1 ~ ~ ~
execute if entity @s[tag=bs.raycast.omit] run data modify storage bs:out raycast.targeted_block set from entity B5-0-0-0-1 Pos
