function #bs.log:info { \
    path: "bs.unittest:module.vector", \
    feature: "unittest", \
    message: '"Testing bs.vector module..."' \
}

# Creating test entities
summon armor_stand 0 0 0 {Tags:["bs.unitest"], Invisible:1b, Marker:1b, NoGravity:1b}

#=============================================================================#
#                                                                             #
#                               GET_ATA                                       #
#                                                                             #
#=============================================================================#

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

summon armor_stand 5 -6 0.833 {Tags:["bs.unitest","target"], Invisible:1b, Marker:1b, NoGravity:1b}

# USAGE -----------------------------------------------------------------------

# Normalize
execute as @e[tag=bs.unitest,tag=!target] at @e[tag=bs.unitest,tag=target] run function bs.vector:get_ata

# RESULTS ----------------------------------------------------------------------

kill @e[tag=bs.unitest,tag=target]

execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches 5000 run function #bs.log:error { \
    path: "bs.vector:get_ata", \
    feature: "unittest", \
    message: '{"text":"Expected vx = 5000, got "}, {"score":{"name":"@s","objective":"bs.vector.x"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches -6000 run function #bs.log:error { \
    path: "bs.vector:get_ata", \
    feature: "unittest", \
    message: '{"text":"Expected vy = -6000, got "}, {"score":{"name":"@s","objective":"bs.vector.y"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches 333 run function #bs.log:error { \
    path: "bs.vector:get_ata", \
    feature: "unittest", \
    message: '{"text":"Expected vz = 333, got "}, {"score":{"name":"@s","objective":"bs.vector.z"}}' \
}

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run function #bs.log:error { \
    path: "bs.vector:get_ata", \
    feature: "unittest", \
    message: '{"text":"Entity count changed. Diff: "}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}' \
}


#=============================================================================#
#                                                                             #
#                         GET_FROM_ORIENTATION                                #
#                                                                             #
#=============================================================================#

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

execute as @e[tag=bs.unitest] run tp @s ~ ~ ~ 145 -45
execute as @e[tag=bs.unitest] run function bs.vector:get_from_orientation

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches -406..-405 run function #bs.log:error { \
    path: "bs.vector:get_from_orientation", \
    feature: "unittest", \
    message: '{"text":"Expected vx = -406, got "}, {"score":{"name":"@s","objective":"bs.vector.x"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches 707..708 run function #bs.log:error { \
    path: "bs.vector:get_from_orientation", \
    feature: "unittest", \
    message: '{"text":"Expected vy = 708, got "}, {"score":{"name":"@s","objective":"bs.vector.y"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches -580..-579 run function #bs.log:error { \
    path: "bs.vector:get_from_orientation", \
    feature: "unittest", \
    message: '{"text":"Expected vz = -579, got "}, {"score":{"name":"@s","objective":"bs.vector.z"}}' \
}

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run function #bs.log:error { \
    path: "bs.vector:get_from_orientation", \
    feature: "unittest", \
    message: '{"text":"Entity count changed. Diff: "}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}' \
}

#=============================================================================#
#                                                                             #
#                          CANONICAL_TO_LOCAL                                 #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.vector.x 1000
scoreboard players set @e[tag=bs.unitest] bs.vector.y 2000
scoreboard players set @e[tag=bs.unitest] bs.vector.z 3000
execute as @e[tag=bs.unitest] run tp @s ~ ~ ~ 145 -45
execute as @e[tag=bs.unitest] run function bs.vector:canonical_to_local

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches 902 run function #bs.log:error { \
    path: "bs.vector:canonical_to_local", \
    feature: "unittest", \
    message: '{"text":"Expected x' = 902, got "}, {"score":{"name":"@s","objective":"bs.vector.x"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches 3541 run function #bs.log:error { \
    path: "bs.vector:canonical_to_local", \
    feature: "unittest", \
    message: '{"text":"Expected y' = 3541, got "}, {"score":{"name":"@s","objective":"bs.vector.y"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches -721 run function #bs.log:error { \
    path: "bs.vector:canonical_to_local", \
    feature: "unittest", \
    message: '{"text":"Expected z' = -721, got "}, {"score":{"name":"@s","objective":"bs.vector.z"}}' \
}

#=============================================================================#
#                                                                             #
#                           LOCAL_TO_CANONICAL                                #
#                                                                             #
#=============================================================================#

### TO IMPLEMENT

# USAGE -----------------------------------------------------------------------

# scoreboard players set @e[tag=bs.unitest] bs.vector.x 902
# scoreboard players set @e[tag=bs.unitest] bs.vector.y 3541
# scoreboard players set @e[tag=bs.unitest] bs.vector.z -721
# execute as @e[tag=bs.unitest] run tp @s ~ ~ ~ 145 -45
# execute as @e[tag=bs.unitest] run function bs.vector:local_to_canonical

# RESULTS ----------------------------------------------------------------------

# execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches 1000 run function #bs.log:error { \
    path: "bs.vector:local_to_canonical", \
    feature: "unittest", \
    message: '{"text":"Expected x' = 1000, got "}, {"score":{"name":"@s","objective":"bs.vector.x"}}' \
}
# execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches 2000 run function #bs.log:error { \
    path: "bs.vector:local_to_canonical", \
    feature: "unittest", \
    message: '{"text":"Expected y' = 2000, got "}, {"score":{"name":"@s","objective":"bs.vector.y"}}' \
}
# execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches 3000 run function #bs.log:error { \
    path: "bs.vector:local_to_canonical", \
    feature: "unittest", \
    message: '{"text":"Expected z' = 3000, got "}, {"score":{"name":"@s","objective":"bs.vector.z"}}' \
}


#=============================================================================#
#                                                                             #
#                            FAST_NORMALIZE                                   #
#                                                                             #
#=============================================================================#

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.vector.x 1000
scoreboard players set @e[tag=bs.unitest] bs.vector.y -2000
scoreboard players set @e[tag=bs.unitest] bs.vector.z 3000

# Normalize
execute as @e[tag=bs.unitest] run function bs.vector:fast_normalize

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches 333 run function #bs.log:error { \
    path: "bs.vector:fast_normalize", \
    feature: "unittest", \
    message: '{"text":"Expected vx' = 333, got "}, {"score":{"name":"@s","objective":"bs.vector.x"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches -667..-666 run function #bs.log:error { \
    path: "bs.vector:fast_normalize", \
    feature: "unittest", \
    message: '{"text":"Expected vy' = -666, got "}, {"score":{"name":"@s","objective":"bs.vector.y"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches 1000 run function #bs.log:error { \
    path: "bs.vector:fast_normalize", \
    feature: "unittest", \
    message: '{"text":"Expected vz' = 1000, got "}, {"score":{"name":"@s","objective":"bs.vector.z"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 3000 run function #bs.log:error { \
    path: "bs.vector:fast_normalize", \
    feature: "unittest", \
    message: '{"text":"Expected A = 3000, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run function #bs.log:error { \
    path: "bs.vector:fast_normalize", \
    feature: "unittest", \
    message: '{"text":"Entity count changed. Diff: "}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}' \
}

#=============================================================================#
#                                                                             #
#                               NORMALIZE                                     #
#                                                                             #
#=============================================================================#

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.vector.x 1000
scoreboard players set @e[tag=bs.unitest] bs.vector.y -2000
scoreboard players set @e[tag=bs.unitest] bs.vector.z 3000

# Normalize
execute as @e[tag=bs.unitest] run function bs.vector:normalize

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches 267 run function #bs.log:error { \
    path: "bs.vector:normalize", \
    feature: "unittest", \
    message: '{"text":"Expected vx' = 267, got "}, {"score":{"name":"@s","objective":"bs.vector.x"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches -535..-534 run function #bs.log:error { \
    path: "bs.vector:normalize", \
    feature: "unittest", \
    message: '{"text":"Expected vy' = -534, got "}, {"score":{"name":"@s","objective":"bs.vector.y"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches 801 run function #bs.log:error { \
    path: "bs.vector:normalize", \
    feature: "unittest", \
    message: '{"text":"Expected vz' = 801, got "}, {"score":{"name":"@s","objective":"bs.vector.z"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 3741 run function #bs.log:error { \
    path: "bs.vector:normalize", \
    feature: "unittest", \
    message: '{"text":"Expected A = 3741, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run function #bs.log:error { \
    path: "bs.vector:normalize", \
    feature: "unittest", \
    message: '{"text":"Entity count changed. Diff: "}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}' \
}

#=============================================================================#
#                                                                             #
#                            LENGTH_SQUARED                                   #
#                                                                             #
#=============================================================================#

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.vector.x 1000
scoreboard players set @e[tag=bs.unitest] bs.vector.y -2000
scoreboard players set @e[tag=bs.unitest] bs.vector.z 3000

# Normalize
execute as @e[tag=bs.unitest] run function bs.vector:length_squared

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 14000 run function #bs.log:error { \
    path: "bs.vector:length_squared", \
    feature: "unittest", \
    message: '{"text":"Expected length^2 = 14000, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run function #bs.log:error { \
    path: "bs.vector:length_squared", \
    feature: "unittest", \
    message: '{"text":"Entity count changed. Diff: "}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}' \
}

#=============================================================================#
#                                                                             #
#                                LENGTH                                       #
#                                                                             #
#=============================================================================#

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.vector.x 1000
scoreboard players set @e[tag=bs.unitest] bs.vector.y -2000
scoreboard players set @e[tag=bs.unitest] bs.vector.z 3000

# Normalize
execute as @e[tag=bs.unitest] run function bs.vector:length

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 3741 run function #bs.log:error { \
    path: "bs.vector:length", \
    feature: "unittest", \
    message: '{"text":"Expected length = 3741, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run function #bs.log:error { \
    path: "bs.vector:length", \
    feature: "unittest", \
    message: '{"text":"Entity count changed. Diff: "}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}' \
}



#==============================================================================

kill @e[tag=bs.unitest]
