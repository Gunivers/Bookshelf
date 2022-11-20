# Clear old bs.new entities
execute as @e[tag=bs.new] run function bs.health:safe_kill

# Creating marker
summon marker ~ ~ ~ {Tags:["bs","bs.new"]}

# Putting the marker in the correct orientation
tp @e[tag=bs.new] ~ ~ ~ ~ ~

# Trying to link the creator of this entity
scoreboard players operation @e[tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
