function #bs.log:info { \
    path: "bs.unittest:module.link", \
    feature: "unittest", \
    message: '"Testing bs.link module..."' \
}

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

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.to = @e[tag=bs.unitest,tag=parent,limit=1] bs.id run function #bs.log:error { \
    path: "link:create_link_ata", \
    feature: "unittest", \
    message: '{"text":"expected bs.link.to = "}, {"score":{"name":"@e[tag=bs.unitest,tag=parent,limit=1]","objective":"bs.id"}}, {"text":", got "}, {"score":{"name":"@s","objective":"bs.link.to"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rx matches 1000 run function #bs.log:error { \
    path: "link:create_link_ata", \
    feature: "unittest", \
    message: '{"text":"expected bs.link.rx = 1000, got "}, {"score":{"name":"@s","objective":"bs.link.rx"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.ry matches 2000 run function #bs.log:error { \
    path: "link:create_link_ata", \
    feature: "unittest", \
    message: '{"text":"expected bs.link.ry = 2000, got "}, {"score":{"name":"@s","objective":"bs.link.ry"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rz matches 3000 run function #bs.log:error { \
    path: "link:create_link_ata", \
    feature: "unittest", \
    message: '{"text":"expected bs.link.rz = 3000, got "}, {"score":{"name":"@s","objective":"bs.link.rz"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rh matches -90000 run function #bs.log:error { \
    path: "link:create_link_ata", \
    feature: "unittest", \
    message: '{"text":"expected bs.link.rh = -90000, got "}, {"score":{"name":"@s","objective":"bs.link.rh"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rv matches -45000 run function #bs.log:error { \
    path: "link:create_link_ata", \
    feature: "unittest", \
    message: '{"text":"expected bs.link.rv = -45000, got "}, {"score":{"name":"@s","objective":"bs.link.rv"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.lx matches 3000 run function #bs.log:error { \
    path: "link:create_link_ata", \
    feature: "unittest", \
    message: '{"text":"expected bs.link.lx = 3000, got "}, {"score":{"name":"@s","objective":"bs.link.lx"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.ly matches 705 run function #bs.log:error { \
    path: "link:create_link_ata", \
    feature: "unittest", \
    message: '{"text":"expected bs.link.ly = 705, got "}, {"score":{"name":"@s","objective":"bs.link.ly"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.lz matches -2115 run function #bs.log:error { \
    path: "link:create_link_ata", \
    feature: "unittest", \
    message: '{"text":"expected bs.link.lz = -2115, got "}, {"score":{"name":"@s","objective":"bs.link.lz"}}' \
}

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run function #bs.log:error { \
    path: "link:create_link_ata", \
    feature: "unittest", \
    message: '{"text":"entity count changed. Diff: "}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}' \
}


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

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.to = @e[tag=bs.unitest,tag=parent,limit=1] bs.id run function #bs.log:error { \
    path: "bs.link:create_link_tti", \
    feature: "unittest", \
    message: '{"text":"Expected bs.link.to = "}, {"score":{"name":"@e[tag=bs.unitest,tag=parent,limit=1]","objective":"bs.id"}}, {"text":", got "}, {"score":{"name":"@s","objective":"bs.link.to"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rx matches 1000 run function #bs.log:error { \
    path: "bs.link:create_link_tti", \
    feature: "unittest", \
    message: '{"text":"Expected bs.link.rx = 1000, got "}, {"score":{"name":"@s","objective":"bs.link.rx"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.ry matches 2000 run function #bs.log:error { \
    path: "bs.link:create_link_tti", \
    feature: "unittest", \
    message: '{"text":"Expected bs.link.ry = 2000, got "}, {"score":{"name":"@s","objective":"bs.link.ry"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rz matches 3000 run function #bs.log:error { \
    path: "bs.link:create_link_tti", \
    feature: "unittest", \
    message: '{"text":"Expected bs.link.rz = 3000, got "}, {"score":{"name":"@s","objective":"bs.link.rz"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rh matches -90000 run function #bs.log:error { \
    path: "bs.link:create_link_tti", \
    feature: "unittest", \
    message: '{"text":"Expected bs.link.rh = -90000, got "}, {"score":{"name":"@s","objective":"bs.link.rh"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.rv matches -45000 run function #bs.log:error { \
    path: "bs.link:create_link_tti", \
    feature: "unittest", \
    message: '{"text":"Expected bs.link.rv = -45000, got "}, {"score":{"name":"@s","objective":"bs.link.rv"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.lx matches 3000 run function #bs.log:error { \
    path: "bs.link:create_link_tti", \
    feature: "unittest", \
    message: '{"text":"Expected bs.link.lx = 3000, got "}, {"score":{"name":"@s","objective":"bs.link.lx"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.ly matches 705 run function #bs.log:error { \
    path: "bs.link:create_link_tti", \
    feature: "unittest", \
    message: '{"text":"Expected bs.link.ly = 705, got "}, {"score":{"name":"@s","objective":"bs.link.ly"}}' \
}

execute as @e[tag=bs.unitest,tag=child] unless score @s bs.link.lz matches -2115 run function #bs.log:error { \
    path: "bs.link:create_link_tti", \
    feature: "unittest", \
    message: '{"text":"Expected bs.link.lz = -2115, got "}, {"score":{"name":"@s","objective":"bs.link.lz"}}' \
}

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run function #bs.log:error { \
    path: "bs.link:create_link_tti", \
    feature: "unittest", \
    message: '{"text":"Entity count changed. Diff: "}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}' \
}



#==============================================================================

kill @e[tag=bs.unitest]
