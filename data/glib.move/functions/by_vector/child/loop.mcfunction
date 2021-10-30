#__________________________________________________
# Get working vector

execute if entity @s[tag=!glib.move.by_vector.rest] run scoreboard players operation move.vectorX glib = @s glib.vectorX
execute if entity @s[tag=!glib.move.by_vector.rest] run scoreboard players operation move.vectorY glib = @s glib.vectorY
execute if entity @s[tag=!glib.move.by_vector.rest] run scoreboard players operation move.vectorZ glib = @s glib.vectorZ

# Start Debug
execute if entity @a[tag=glib.debug.move.by_vector] at @a[tag=glib.debug] at @s[distance=..30] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"stone_button"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
execute if entity @a[tag=glib.debug.move.by_vector] at @a[tag=glib.debug] as @s[distance=..30] run tellraw @a ["",{"text":"   | X: "},{"score":{"name":"move.vectorX","objective":"glib"}},{"text":" Y: "},{"score":{"name":"move.vectorY","objective":"glib"}},{"text":" Z: "},{"score":{"name":"move.vectorZ","objective":"glib"}},{"text":" Dec: "},{"score":{"name":"move.decomposition.factor","objective":"glib"}}]
# End Debug

#__________________________________________________
# Detect block front

tag @s[tag=glib.collisionFront] remove glib.collisionFront
tag @s[tag=glib.collisionTest] remove glib.collisionTest
tag @s[tag=glib.collisionFront,tag=!glib.collision] add glib.collisionTest
execute as @s[scores={glib.collision=1..}] at @s run function glib.move:by_vector/child/collision_detect_front

#__________________________________________________
# Detect bloc on the 3 axes

execute as @s[tag=glib.collisionFront] run tellraw @a ["",{"text":"   | CollisionFront"}]
tag @s[tag=glib.collision] remove glib.collision
tag @s[tag=glib.collisionTest] add glib.collisionFront
execute as @s[scores={glib.collision=1..},tag=glib.collisionFront] at @s run function glib.move:by_vector/child/collision

#__________________________________________________
# Apply movement

execute if entity @s[tag=!glib.collision] run scoreboard players operation @s glib.locX = move.vectorX glib
execute if entity @s[tag=!glib.collision] run scoreboard players operation @s glib.locY = move.vectorY glib
execute if entity @s[tag=!glib.collision] run scoreboard players operation @s glib.locZ = move.vectorZ glib
execute if entity @s[tag=!glib.collision] run function glib.location:add/accuracy/10-3

#__________________________________________________
# Loop

scoreboard players remove move.decomposition.factor glib 1
execute at @s if score move.decomposition.factor glib matches 1.. run function glib.move:by_vector/child/loop
