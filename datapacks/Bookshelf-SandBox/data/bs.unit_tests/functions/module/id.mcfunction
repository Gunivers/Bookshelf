function #bs.log:info { \
    path: "bs.unittest:module.id", \
    feature: "unittest", \
    message: '"Testing bs.id module..."' \
}

#=============================================================================#
#                                                                             #
#                               GET_SUID                                      #
#                                                                             #
#=============================================================================#

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

scoreboard players operation ID.SIMPLE bs.unit_tests = ID.SIMPLE bs.data

# USAGE -----------------------------------------------------------------------

# Creating test entities
summon armor_stand 0 0 0 {Tags:["bs.unitest","id"]}

# Giving ID
execute as @e[tag=bs.unitest,tag=id] run function bs.id:get_suid

# RESULTS ----------------------------------------------------------------------

# If the entity has no ID
execute as @e[tag=bs.unitest,tag=id] unless score @s bs.is matches 1.. run function #bs.log:error { \
    path: "bs.bitwise:get_suid", \
    feature: "unittest", \
    message: '{"text":"Expected bs.id to be > 1, got "}, {"score":{"name":"@s","objective":"bs.id"}}' \
}

# If more than one entity have the same ID
scoreboard players set NB_ENTITY_SHARING_ID bs.unit_tests 0
execute as @e if score @s bs.id = @e[tag=bs.unitest,tag=id,limit=1] bs.id run scoreboard players add NB_ENTITY_SHARING_ID bs.unit_tests 1
execute unless score NB_ENTITY_SHARING_ID bs.unit_tests matches 1 run function #bs.log:error { \
    path: "bs.bitwise:get_suid", \
    feature: "unittest", \
    message: '{"text":"More than one entity share the same ID. Number of entity found: "}, {"score":{"name":"NB_ENTITY_SHARING_ID","objective":"bs.unit_tests"}}' \
}

# If the ID counter didn't incremented by 1
scoreboard players add ID.SIMPLE bs.unit_tests 1
execute unless score ID.SIMPLE bs.unit_tests = ID.SIMPLE bs.data run function #bs.log:error { \
    path: "bs.bitwise:get_suid", \
    feature: "unittest", \
    message: '{"text":"ID counter was not correctly incremented. Expected: "}, {"score":{"name":"ID.SIMPLE","objective":"bs.unit_tests"}}, {"text":", got: "},{"score":{"name":"ID.SIMPLE","objective":"bs.data"}}' \
}

# If the entity count changed
kill @e[tag=bs.unitest]
execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run function #bs.log:error { \
    path: "bs.bitwise:get_suid", \
    feature: "unittest", \
    message: '{"text":"Entity count changed. Diff: "}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}' \
}
