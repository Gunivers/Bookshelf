tellraw @a ["",{"text":"<"},{"text":"BookShelf","color":"dark_aqua"},{"text":"> Testing bs.link module..."}]

# Creating test entities
summon armor_stand 0 0 0 {Tags:["bs.unitest","parent"],CustomName:'{"text":"Parent"}', Invisible:1b, Marker:1b, NoGravity:1b}
summon armor_stand 0 0 0 {Tags:["bs.unitest","child"],CustomName:'{"text":"Child"}', Invisible:1b, Marker:1b, NoGravity:1b}



#=============================================================================#
#                                                                             #
#                          CREATE_LINK_ATA                                    #
#                                                                             #
#=============================================================================#                                                    

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

# Setting orientations
execute as @e[tag=bs.unitest,tag=child] run tp @s ~1 ~2.314 ~3 0 0
execute as @e[tag=bs.unitest,tag=parent] run tp @s ~0 ~0.314 ~0 90 45

# Creating link
execute as @e[tag=bs.unitest,tag=child] at @e[tag=bs.unitest,tag=parent] run function bs.link:create_link_ata

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.to = @e[tag=bs.unitest,tag=parent,limit=1] bs.id run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.to = ", "color": "red"}, {"score":{"name":"@e[tag=bs.unitest,tag=parent,limit=1]","objective":"bs.id"}}, {"text":", got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.to"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rx matches 1000 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.rx = 1000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rx"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.ry matches 2000 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.ry = 2000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.ry"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rz matches 3000 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.rz = 3000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rz"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rh matches -90000 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.rh = -90000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rh"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rv matches -45000 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.rv = -45000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rv"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.lx matches 3000 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.lx = 3000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.lx"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.ly matches 705 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.ly = 705, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.ly"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.lz matches -2115 run tellraw @a [{"text":"[bs.link:create_link_ata] expected bs.link.lz = -2115, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.lz"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.link:create_link_ata] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]


#=============================================================================#
#                                                                             #
#                          CREATE_LINK_TTI                                    #
#                                                                             #
#=============================================================================#                                                    

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

# Giving the ID to the parent
execute as @e[tag=bs.unitest,tag=parent] run function bs.id:get_suid

# Setting orientation
execute as @e[tag=bs.unitest,tag=child] run tp @s ~1 ~2.314 ~3 0 0
execute as @e[tag=bs.unitest,tag=parent] run tp @s ~0 ~0.314 ~0 90 45

# Putting the target ID to the child
scoreboard players operation @e[tag=bs.unitest,tag=child] bs.id.target = @e[tag=bs.unitest,tag=parent] bs.id

# Creating link
execute as @e[tag=bs.unitest,tag=child] run function bs.link:create_link_tti

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.to = @e[tag=bs.unitest,tag=parent,limit=1] bs.id run tellraw @a [{"text":"[bs.link:create_link_tti] expected bs.link.to = ", "color": "red"}, {"score":{"name":"@e[tag=bs.unitest,tag=parent,limit=1]","objective":"bs.id"}}, {"text":", got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.to"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rx matches 1000 run tellraw @a [{"text":"[bs.link:create_link_tti] expected bs.link.rx = 1000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rx"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.ry matches 2000 run tellraw @a [{"text":"[bs.link:create_link_tti] expected bs.link.ry = 2000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.ry"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rz matches 3000 run tellraw @a [{"text":"[bs.link:create_link_tti] expected bs.link.rz = 3000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rz"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rh matches -90000 run tellraw @a [{"text":"[bs.link:create_link_tti] expected bs.link.rh = -90000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rh"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rv matches -45000 run tellraw @a [{"text":"[bs.link:create_link_tti] expected bs.link.rv = -45000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.rv"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.lx matches 3000 run tellraw @a [{"text":"[bs.link:create_link_tti] expected bs.link.lx = 3000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.lx"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.ly matches 705 run tellraw @a [{"text":"[bs.link:create_link_tti] expected bs.link.ly = 705, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.ly"}}]

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.lz matches -2115 run tellraw @a [{"text":"[bs.link:create_link_tti] expected bs.link.lz = -2115, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.link.lz"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.link:create_link_tti] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]



#==============================================================================

kill @e[tag=bs.unitest]