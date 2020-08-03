# Start Debug
execute at @s[tag=glib.debug,tag=glib.debug.move.by_vector] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"stone_button"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
#tellraw @a ["",{"text":"   | X: "},{"score":{"name":"move.vectorX","objective":"glib"}},{"text":" Y: "},{"score":{"name":"move.vectorY","objective":"glib"}},{"text":" Z: "},{"score":{"name":"move.vectorZ","objective":"glib"}},{"text":" Dec: "},{"score":{"name":"move.decomposition.factor","objective":"glib"}}]
# End Debug

tag @s remove glib.collisionTest
tag @s[tag=glib.collisionFront,tag=!glib.collision] add glib.collisionTest
execute as @s[scores={glib.collision=1..}] at @s run function glib_child:default/move/by_vector/collision_detect_front
tag @s remove glib.collision
execute as @s[scores={glib.collision=1..},tag=glib.collisionFront] at @s run function glib_child:default/move/by_vector/collision
execute as @s[scores={glib.collision=1..},tag=glib.collisionTest] at @s run function glib_child:default/move/by_vector/collision

#Apply movement
scoreboard players operation @s glib.locX = move.vectorX glib
scoreboard players operation @s glib.locY = move.vectorY glib
scoreboard players operation @s glib.locZ = move.vectorZ glib

function glib_acc:10-3/location/add

# Loop
scoreboard players remove move.decomposition.factor glib 1
execute at @s if score move.decomposition.factor glib matches 1.. run function glib_child:default/move/by_vector/loop
