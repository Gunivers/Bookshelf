function #bs.log:info { \
    path: "bs.unittest:module.bitwise", \
    feature: "unittest", \
    message: '"Testing bs.bitwise module..."' \
}

summon armor_stand ~ ~ ~ {Tags:["bs.unitest"]}


#=============================================================================#
#                                                                             #
#                                  AND                                        #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 12
scoreboard players set @e[tag=bs.unitest] bs.in.1 5
execute as @e[tag=bs.unitest] run function bs.bitwise:and

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 4 run function #bs.log:error { \
    path: "bs.bitwise:and", \
    feature: "unittest", \
    message: '{"text":"Expected 12x5 = 4, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -9
scoreboard players set @e[tag=bs.unitest] bs.in.1 57
execute as @e[tag=bs.unitest] run function bs.bitwise:and

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 49 run function #bs.log:error { \
    path: "bs.bitwise:and", \
    feature: "unittest", \
    message: '{"text":"Expected -9x57 = 49, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                          GET_NUMBER_OF_BITS                                 #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 16
execute as @e[tag=bs.unitest] run function bs.bitwise:get_number_of_bits

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 5 run function #bs.log:error { \
    path: "bs.bitwise:get_number_of_bits", \
    feature: "unittest", \
    message: '{"text":"Expected nbits(16) = 5, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -54354
execute as @e[tag=bs.unitest] run function bs.bitwise:get_number_of_bits

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 16 run function #bs.log:error { \
    path: "bs.bitwise:get_number_of_bits", \
    feature: "unittest", \
    message: '{"text":"Expected nbits(-54354) = 16, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                                  NOT                                        #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -9
execute as @e[tag=bs.unitest] run function bs.bitwise:not

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 8 run function #bs.log:error { \
    path: "bs.bitwise:not", \
    feature: "unittest", \
    message: '{"text":"Expected ~-9 = 8, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 452
execute as @e[tag=bs.unitest] run function bs.bitwise:not

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -453 run function #bs.log:error { \
    path: "bs.bitwise:not", \
    feature: "unittest", \
    message: '{"text":"Expected ~452 = -453, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                                  OR                                         #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 12
scoreboard players set @e[tag=bs.unitest] bs.in.1 5
execute as @e[tag=bs.unitest] run function bs.bitwise:or

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 13 run function #bs.log:error { \
    path: "bs.bitwise:or", \
    feature: "unittest", \
    message: '{"text":"Expected 12|5 = 13, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -9
scoreboard players set @e[tag=bs.unitest] bs.in.1 57
execute as @e[tag=bs.unitest] run function bs.bitwise:or

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -1 run function #bs.log:error { \
    path: "bs.bitwise:or", \
    feature: "unittest", \
    message: '{"text":"Expected -9|57 = -1, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                            TWO_COMPLEMENT                                   #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 44
execute as @e[tag=bs.unitest] run function bs.bitwise:two_complement

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 2147483604 run function #bs.log:error { \
    path: "bs.bitwise:two_complement", \
    feature: "unittest", \
    message: '{"text":"Expected 44 -> 2147483604, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -9
execute as @e[tag=bs.unitest] run function bs.bitwise:two_complement

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 2147483639 run function #bs.log:error { \
    path: "bs.bitwise:two_complement", \
    feature: "unittest", \
    message: '{"text":"Expected -9 -> 2147483639, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                                  XOR                                        #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 12
scoreboard players set @e[tag=bs.unitest] bs.in.1 5
execute as @e[tag=bs.unitest] run function bs.bitwise:xor

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 9 run function #bs.log:error { \
    path: "bs.bitwise:xor", \
    feature: "unittest", \
    message: '{"text":"Expected 12 ^ 5 = 9, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -9
scoreboard players set @e[tag=bs.unitest] bs.in.1 57
execute as @e[tag=bs.unitest] run function bs.bitwise:xor

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -50 run function #bs.log:error { \
    path: "bs.bitwise:xor", \
    feature: "unittest", \
    message: '{"text":"Expected -9 ^ 57 = -50, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#

execute as @e[tag=bs.unitest] run function bs.core:entity/safe_kill
