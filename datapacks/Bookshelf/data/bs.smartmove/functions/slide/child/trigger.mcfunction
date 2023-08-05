# Executed as & at the sliding player
tellraw @a [{"text":"> bs.smartmove:slide/child/trigger","color":"aqua"},{"text":" as & at ","color":"gray"},{"selector":"@s"}]

# -----------------------------------------------------------------------------

# Identity sliding players
tag @s add bs.smartmove.is_sliding

# Summon the armor stand
summon armor_stand ~ ~ ~ {Tags:["bs.smartmove.slide","bs.smartmove.slide.new"]}
# Invisible:1b,Marker:1b,

# Compute the vector
function bs.vector:get_from_orientation

# Transfer the vector to the armor stand
scoreboard players operation @e[tag=bs.smartmove.slide.new] bs.vector.x = @s bs.vector.x
scoreboard players set @e[tag=bs.smartmove.slide.new] bs.vector.y 0
scoreboard players operation @e[tag=bs.smartmove.slide.new] bs.vector.z = @s bs.vector.z

### DEBUG
execute as @e[tag=bs.smartmove.slide.new] run tellraw @a [{"text":"Vi - X: "},{"score":{"name":"@e[tag=bs.smartmove.slide.new,limit=1,sort=nearest]","objective":"bs.vector.x"}},{"text":" Y: "},{"score":{"name":"@e[tag=bs.smartmove.slide.new,limit=1,sort=nearest]","objective":"bs.vector.y"}},{"text":" Z: "},{"score":{"name":"@e[tag=bs.smartmove.slide.new,limit=1,sort=nearest]","objective":"bs.vector.z"}}]

# Slide collision
scoreboard players set @e[tag=bs.smartmove.slide.new] bs.move.collision -2

# Reduce the vector to the desired speed
scoreboard players set @e[tag=bs.smartmove.slide.new] bs.opt.0 100
execute as @e[tag=bs.smartmove.slide.new] run function bs.vector:normalize

### DEBUG
execute as @e[tag=bs.smartmove.slide.new] run tellraw @a [{"text":"Vn - X: "},{"score":{"name":"@e[tag=bs.smartmove.slide.new,limit=1,sort=nearest]","objective":"bs.vector.x"}},{"text":" Y: "},{"score":{"name":"@e[tag=bs.smartmove.slide.new,limit=1,sort=nearest]","objective":"bs.vector.y"}},{"text":" Z: "},{"score":{"name":"@e[tag=bs.smartmove.slide.new,limit=1,sort=nearest]","objective":"bs.vector.z"}}]


# Make the player ride the armor_stand
ride @s mount @e[tag=bs.smartmove.slide.new, limit=1, sort=nearest]

# Apply the first movement
execute as @e[tag=bs.smartmove.slide.new] at @s run function bs.move:by_vector
scoreboard players set @e[tag=bs.smartmove.slide.new] bs.lifetime -20

# Makes entity old
tag @e[tag=bs.smartmove.slide.new] remove bs.smartmove.slide.new