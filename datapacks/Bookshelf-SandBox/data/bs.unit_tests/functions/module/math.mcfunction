function #bs.log:info { \
    path: "bs.unittest:module.math", \
    feature: "unittest", \
    message: '"Testing bs.math module..."' \
}

summon armor_stand ~ ~ ~ {Tags:["bs.unitest"]}

#=============================================================================#
#                                                                             #
#                              TRIG/ARCCOS                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 1000
execute as @e[tag=bs.unitest] run function bs.math:arccos

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 0 run function #bs.log:error { \
    path: "bs.math:arccos", \
    feature: "unittest", \
    message: '{"text":"Expected arccos(1000e-3) = 0, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -314
execute as @e[tag=bs.unitest] run function bs.math:arccos

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 108 run function #bs.log:error { \
    path: "bs.math:arccos", \
    feature: "unittest", \
    message: '{"text":"Expected arccos(-314e-3) = 108, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                              TRIG/ARCSIN                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 1000
execute as @e[tag=bs.unitest] run function bs.math:arcsin

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 90 run function #bs.log:error { \
    path: "bs.math:arcsin", \
    feature: "unittest", \
    message: '{"text":"Expected arcsin(1000e-3) = 90, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -314
execute as @e[tag=bs.unitest] run function bs.math:arcsin

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -18..-17 run function #bs.log:error { \
    path: "bs.math:arcsin", \
    feature: "unittest", \
    message: '{"text":"Expected arcsin(-314e-3) = -18, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}


#=============================================================================#
#                                                                             #
#                              TRIG/ARCTAN                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 1000
execute as @e[tag=bs.unitest] run function bs.math:arctan

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 45 run function #bs.log:error { \
    path: "bs.math:arctan", \
    feature: "unittest", \
    message: '{"text":"Expected arctan(1000e-3) = 45, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -314
execute as @e[tag=bs.unitest] run function bs.math:arctan

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -18..-17 run function #bs.log:error { \
    path: "bs.math:arctan", \
    feature: "unittest", \
    message: '{"text":"Expected arctan(-314e-3) = -17, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}


#=============================================================================#
#                                                                             #
#                       ALGEBRA/BASIS_ROTATION_3D                             #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 1000
scoreboard players set @e[tag=bs.unitest] bs.in.1 2000
scoreboard players set @e[tag=bs.unitest] bs.in.2 3000
scoreboard players set @e[tag=bs.unitest] bs.in.3 145
scoreboard players set @e[tag=bs.unitest] bs.in.4 -45
execute as @e[tag=bs.unitest] run function bs.math:basis_rotation_3d

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 902 run function #bs.log:error { \
    path: "bs.math:basis_rotation_3d", \
    feature: "unittest", \
    message: '{"text":"Expected x' = 902, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.out.1 matches 3541 run function #bs.log:error { \
    path: "bs.math:basis_rotation_3d", \
    feature: "unittest", \
    message: '{"text":"Expected y' = 3541, got "}, {"score":{"name":"@s","objective":"bs.out.1"}}' \
}
execute as @e[tag=bs.unitest] unless score @s bs.out.2 matches -721 run function #bs.log:error { \
    path: "bs.math:basis_rotation_3d", \
    feature: "unittest", \
    message: '{"text":"Expected z' = -721, got "}, {"score":{"name":"@s","objective":"bs.out.2"}}' \
}

#=============================================================================#
#                                                                             #
#                               TRIG/COS                                      #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 45
execute as @e[tag=bs.unitest] run function bs.math:cos

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 705..707 run function #bs.log:error { \
    path: "bs.math:cos", \
    feature: "unittest", \
    message: '{"text":"Expected cos(45) = 707e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 180
execute as @e[tag=bs.unitest] run function bs.math:cos

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -1000 run function #bs.log:error { \
    path: "bs.math:cos", \
    feature: "unittest", \
    message: '{"text":"Expected cos(180) = -1000e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                             COMMON/DIVIDE                                   #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 9
scoreboard players set @e[tag=bs.unitest] bs.in.1 5
execute as @e[tag=bs.unitest] run function bs.math:divide

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 2 run function #bs.log:error { \
    path: "bs.math:divide", \
    feature: "unittest", \
    message: '{"text":"Expected round(9/5) = 2, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 31
scoreboard players set @e[tag=bs.unitest] bs.in.1 3
execute as @e[tag=bs.unitest] run function bs.math:divide

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 10 run function #bs.log:error { \
    path: "bs.math:divide", \
    feature: "unittest", \
    message: '{"text":"Expected round(31/3) = 10, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                              COMMON/EXP                                     #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 300
execute as @e[tag=bs.unitest] run function bs.math:exp

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 20077..20085 run function #bs.log:error { \
    path: "bs.math:exp", \
    feature: "unittest", \
    message: '{"text":"Expected exp(300e-2) = 20085e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -100
execute as @e[tag=bs.unitest] run function bs.math:exp

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 367..370 run function #bs.log:error { \
    path: "bs.math:exp", \
    feature: "unittest", \
    message: '{"text":"Expected exp(-100e-2) = 367e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                           COMMON/FACTORIAL                                  #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 3
execute as @e[tag=bs.unitest] run function bs.math:factorial

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 6 run function #bs.log:error { \
    path: "bs.math:factorial", \
    feature: "unittest", \
    message: '{"text":"Expected 3! = 6, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 11
execute as @e[tag=bs.unitest] run function bs.math:factorial

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 39916800 run function #bs.log:error { \
    path: "bs.math:factorial", \
    feature: "unittest", \
    message: '{"text":"Expected 11! = 39916800, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                              COMMON/GCD                                     #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 10
scoreboard players set @e[tag=bs.unitest] bs.in.1 8
execute as @e[tag=bs.unitest] run function bs.math:gcd

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 2 run function #bs.log:error { \
    path: "bs.math:gcd", \
    feature: "unittest", \
    message: '{"text":"Expected gcd(10,8) = 2, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 31
scoreboard players set @e[tag=bs.unitest] bs.in.1 7
execute as @e[tag=bs.unitest] run function bs.math:gcd

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 1 run function #bs.log:error { \
    path: "bs.math:gcd", \
    feature: "unittest", \
    message: '{"text":"Expected gcd(7,31) = 1, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                              COMMON/LOG                                     #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 500
execute as @e[tag=bs.unitest] run function bs.math:log

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -694..-693 run function #bs.log:error { \
    path: "bs.math:log", \
    feature: "unittest", \
    message: '{"text":"Expected log(500e-3) = -693e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 10000
execute as @e[tag=bs.unitest] run function bs.math:log

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 2302..2303 run function #bs.log:error { \
    path: "bs.math:log", \
    feature: "unittest", \
    message: '{"text":"Expected log(10000e-3) = 2302e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                              COMMON/LOG2                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 500
execute as @e[tag=bs.unitest] run function bs.math:log2

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -1002..-1000 run function #bs.log:error { \
    path: "bs.math:log2", \
    feature: "unittest", \
    message: '{"text":"Expected log2(500e-3) = -1000e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 10000
execute as @e[tag=bs.unitest] run function bs.math:log2

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 3321..3323 run function #bs.log:error { \
    path: "bs.math:log2", \
    feature: "unittest", \
    message: '{"text":"Expected log2(10000e-3) = 3321e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                             COMMON/LOG10                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 500
execute as @e[tag=bs.unitest] run function bs.math:log10

# RESULTS ---------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -302..-301 run function #bs.log:error { \
    path: "bs.math:log10", \
    feature: "unittest", \
    message: '{"text":"Expected log10(500e-3) = -301e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 10000
execute as @e[tag=bs.unitest] run function bs.math:log10

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 1000 run function #bs.log:error { \
    path: "bs.math:log10", \
    feature: "unittest", \
    message: '{"text":"Expected log10(10000e-3) = 1000e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                              COMMON/LOGA                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 500
scoreboard players set @e[tag=bs.unitest] bs.in.1 4
execute as @e[tag=bs.unitest] run function bs.math:loga

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -501..-500 run function #bs.log:error { \
    path: "bs.math:loga", \
    feature: "unittest", \
    message: '{"text":"Expected log4(500e-3) = -500e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 10000
scoreboard players set @e[tag=bs.unitest] bs.in.1 7
execute as @e[tag=bs.unitest] run function bs.math:loga

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 1183..1184 run function #bs.log:error { \
    path: "bs.math:loga", \
    feature: "unittest", \
    message: '{"text":"Expected log7(10000e-3) = 1183e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                         SPECIAL/GET_NEXT_POW2                               #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 42
execute as @e[tag=bs.unitest] run function bs.math:get_next_pow2

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 64 run function #bs.log:error { \
    path: "bs.math:get_next_pow2", \
    feature: "unittest", \
    message: '{"text":"Expected next_pow2(42) = 64, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 4
execute as @e[tag=bs.unitest] run function bs.math:get_next_pow2

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 4 run function #bs.log:error { \
    path: "bs.math:get_next_pow2", \
    feature: "unittest", \
    message: '{"text":"Expected next_pow2(4) = 4, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                               COMMON/POW                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 5
scoreboard players set @e[tag=bs.unitest] bs.in.1 6
execute as @e[tag=bs.unitest] run function bs.math:pow

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 15625 run function #bs.log:error { \
    path: "bs.math:pow", \
    feature: "unittest", \
    message: '{"text":"Expected 5^6 = 15625, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 2
scoreboard players set @e[tag=bs.unitest] bs.in.1 16
execute as @e[tag=bs.unitest] run function bs.math:pow

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 65536 run function #bs.log:error { \
    path: "bs.math:pow", \
    feature: "unittest", \
    message: '{"text":"Expected 2^16 = 65536, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                               TRIG/SIN                                      #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 45
execute as @e[tag=bs.unitest] run function bs.math:sin

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 705..707 run function #bs.log:error { \
    path: "bs.math:sin", \
    feature: "unittest", \
    message: '{"text":"Expected sin(45) = 707e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 270
execute as @e[tag=bs.unitest] run function bs.math:sin

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -1000 run function #bs.log:error { \
    path: "bs.math:sin", \
    feature: "unittest", \
    message: '{"text":"Expected sin(270) = -1000e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                              COMMON/SQRT                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 16
execute as @e[tag=bs.unitest] run function #bs.math:sqrt

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 4 run function #bs.log:error { \
    path: "bs.math:sqrt", \
    feature: "unittest", \
    message: '{"text":"Expected sqrt(16) = 4, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 955
execute as @e[tag=bs.unitest] run function #bs.math:sqrt

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 31 run function #bs.log:error { \
    path: "bs.math:sqrt", \
    feature: "unittest", \
    message: '{"text":"Expected sqrt(955) = 31, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

#=============================================================================#
#                                                                             #
#                               TRIG/TAN                                      #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 45
execute as @e[tag=bs.unitest] run function bs.math:tan

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 1000 run function #bs.log:error { \
    path: "bs.math:tan", \
    feature: "unittest", \
    message: '{"text":"Expected tan(45) = 1000e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 280
execute as @e[tag=bs.unitest] run function bs.math:tan

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -5671..-5623 run function #bs.log:error { \
    path: "bs.math:tan", \
    feature: "unittest", \
    message: '{"text":"Expected tan(280) = -5671e-3, got "}, {"score":{"name":"@s","objective":"bs.out.0"}}' \
}



#=============================================================================#

execute as @e[tag=bs.unitest] run function bs.core:entity/safe_kill
