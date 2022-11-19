# Clear old glib.new entities
execute as @e[tag=glib.new] run function bs.health:safe_kill

# Creating marker
summon marker ~ ~ ~ {Tags:["glib","glib.new"]}

# Putting the marker in the correct orientation
tp @e[tag=glib.new] ~ ~ ~ ~ ~

# Trying to link the creator of this entity
scoreboard players operation @e[tag=glib.new,limit=1,sort=nearest] glib.id.parent = @s glib.id
