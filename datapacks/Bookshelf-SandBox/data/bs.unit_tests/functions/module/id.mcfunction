
# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

scoreboard players operation ID.SIMPLE bs.unit_tests = ID.SIMPLE bs.data

tellraw @a ["",{"text":"<"},{"text":"BookShelf","color":"dark_aqua"},{"text":"> Testing bs.id module..."}]

# USAGE -----------------------------------------------------------------------

# Creating test entities
summon armor_stand 0 0 0 {Tags:["bs.unitest","id"]}

# Giving ID
execute as @e[tag=bs.unitest,tag=id] run function bs.id:get_suid

# RESULTS ----------------------------------------------------------------------

# If the entity has no ID
execute as @e[tag=bs.unitest,tag=id] unless score @s bs.is matches 1.. run tellraw @a [{"text":"[bs.id:get_suid] expected bs.id to be > 1, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.id"}}]

# If more than one entity have the same ID
scoreboard players set NB_ENTITY_SHARING_ID bs.unit_tests 0
execute as @e if score @s bs.id = @e[tag=bs.unitest,tag=id,limit=1] bs.id run scoreboard players add NB_ENTITY_SHARING_ID bs.unit_tests 1
execute unless score NB_ENTITY_SHARING_ID bs.unit_tests matches 1 run tellraw @a [{"text":"[bs.id:get_suid] more than one entity share the same ID. Number of entity found: ", "color": "red"}, {"score":{"name":"NB_ENTITY_SHARING_ID","objective":"bs.unit_tests"}}]

# If the ID counter didn't incremented by 1
scoreboard players add ID.SIMPLE bs.unit_tests 1
execute unless score ID.SIMPLE bs.unit_tests = ID.SIMPLE bs.data run tellraw @a [{"text":"[bs.id:get_suid] ID counter was not correctly incremented. Expected: ", "color": "red"}, {"score":{"name":"ID.SIMPLE","objective":"bs.unit_tests"}}, {"text":", got: ", "color": "red"},{"score":{"name":"ID.SIMPLE","objective":"bs.data"}}]


# If the entity count changed
kill @e[tag=bs.unitest]
execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.id:get_suid] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]