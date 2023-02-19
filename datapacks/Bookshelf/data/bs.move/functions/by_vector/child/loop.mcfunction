# Start Debug
execute as @e[tag=bs.collision,tag=bs.debug.move.by_vector] run tellraw @a[tag=bs.debug.move.by_vector] [{"text":" > ","bold":true,"color":"gold"},{"text":"bs","color":"dark_aqua"},{"text":" | ","color":"gold"},{"text":"Record from bs.move:by_vector/child/loop","color":"green","clickEvent":{"action":"open_url","value":"tag @s remove bs.debug.move.by_vector"},"hoverEvent":{"action":"show_text","contents":"Hide this debug"}}]
# End Debug

#__________________________________________________
# Get working vector

execute if entity @s[tag=!bs.move.by_vector.rest] run scoreboard players operation move.vectorX bs = @s bs.vector.x
execute if entity @s[tag=!bs.move.by_vector.rest] run scoreboard players operation move.vectorY bs = @s bs.vector.y
execute if entity @s[tag=!bs.move.by_vector.rest] run scoreboard players operation move.vectorZ bs = @s bs.vector.z

# Start Debug
execute if entity @a[tag=bs.debug.move.by_vector] at @a[tag=bs.debug] at @s[distance=..30] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"stone_button"},NoGravity:1,Time:50,Tags:["bs","Debug"]}
execute if entity @a[tag=bs.debug.move.by_vector] at @a[tag=bs.debug] as @s[distance=..30] run tellraw @a ["",{"text":"   | X: "},{"score":{"name":"move.vectorX","objective":"bs"}},{"text":" Y: "},{"score":{"name":"move.vectorY","objective":"bs"}},{"text":" Z: "},{"score":{"name":"move.vectorZ","objective":"bs"}},{"text":" Dec: "},{"score":{"name":"move.decomposition.factor","objective":"bs"}}]
# End Debug

#__________________________________________________
# Detect block front

tag @s[tag=bs.collisionFront] remove bs.collisionFront
tag @s[tag=bs.collisionTest] remove bs.collisionTest
tag @s[tag=bs.collisionFront,tag=!bs.collision] add bs.collisionTest
execute as @s[scores={bs.collision=1..}] at @s run function bs.move:by_vector/child/collision_detect_front

#__________________________________________________
# Detect bloc on the 3 axes

tag @s[tag=bs.collision] remove bs.collision
tag @s[tag=bs.collisionTest] add bs.collisionFront
execute as @s[scores={bs.collision=1..},tag=bs.collisionFront] at @s run function bs.move:by_vector/child/collision

# Start Debug
execute as @e[tag=bs.collision,tag=bs.debug.move.by_vector] run tellraw @a[tag=bs.debug.move.by_vector] ["",{"text":"    Collision detected : Front"}]
execute as @e[tag=bs.collision,tag=bs.debug.move.by_vector] run tellraw @a[tag=bs.debug.move.by_vector] ["",{"text":"    Collision detected : X"}]
execute as @e[tag=bs.collision,tag=bs.debug.move.by_vector] run tellraw @a[tag=bs.debug.move.by_vector] ["",{"text":"    Collision detected : Y"}]
execute as @e[tag=bs.collision,tag=bs.debug.move.by_vector] run tellraw @a[tag=bs.debug.move.by_vector] ["",{"text":"    Collision detected : Z"}]
# End Debug

#__________________________________________________
# Apply movement

execute if entity @s[tag=!bs.collision] run scoreboard players operation @s bs.locX = move.vectorX bs
execute if entity @s[tag=!bs.collision] run scoreboard players operation @s bs.locY = move.vectorY bs
execute if entity @s[tag=!bs.collision] run scoreboard players operation @s bs.locZ = move.vectorZ bs
execute if entity @s[tag=!bs.collision] run function bs.location:add/accuracy/10-3

#__________________________________________________
# Loop

scoreboard players remove move.decomposition.factor bs 1
execute at @s if score move.decomposition.factor bs matches 1.. run function bs.move:by_vector/child/loop


# Start Debug
execute as @e[tag=bs.collision,tag=bs.debug.move.by_vector] run tellraw @a[tag=bs.debug.move.by_vector] ["",{"text":" <","bold":true,"color":"gold"}]
# End Debug