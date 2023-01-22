
# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

tellraw @a ["",{"text":"<"},{"text":"BookShelf","color":"dark_aqua"},{"text":"> Testing bs.link module..."}]

# USAGE -----------------------------------------------------------------------

# Creating test entities
summon armor_stand 0 40.314 0 {Tags:["bs.unitest","parent"],CustomName:'{"text":"Parent"}'}
summon armor_stand 1 42.314 3 {Tags:["bs.unitest","child"],CustomName:'{"text":"Child"}'}

# Setting orientation
execute as @e[tag=bs.unitest,tag=child] at @s run tp @s ~ ~ ~ 270 -45

# Creating link
execute as @e[tag=bs.unitest,tag=child] at @e[tag=bs.unitest,tag=parent] run function bs.link:create_link_ata

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.to = @e[tag=bs.unitest,tag=parent,limit=1] bs.id run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.to = ", "color": "red"}, {"score":{"name":"@e[tag=bs.unitest,tag=parent,limit=1]","objective":"bs.id"}}, {"text":", got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.to"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rx matches 1000 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.rx = 1000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rx"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.ry matches 2000 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.ry = 2000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.ry"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rz matches 3000 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.rz = 3000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rz"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rh matches -90000 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.rh = 270, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rh"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rv matches -45000 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.rv = -45, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rv"}}]

kill @e[tag=bs.unitest]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.link:create_link_ata] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]