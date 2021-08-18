# This function allow to change entity used by all system in this lib.
# Each time this function is called, a new entity is created and previous entity that has not been edited are killed.

# To make your entity persistent, remove the "glib.new" tag.

execute as @e[tag=glib.new] run function glib:health/safe_kill
summon marker ~ 0 ~ {Tags:["glib","glib.new"]}

tp @e[tag=glib.new] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=glib.new,limit=1,sort=nearest] glib.id.parent = @s glib.id
